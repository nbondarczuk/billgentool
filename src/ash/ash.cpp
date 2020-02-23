#include <occi.h>
#include <iomanip>
#include <iostream>
#include <vector>

#include "article_string_factory.hpp"
#include "article_string_item.hpp"
#include "lexical_cast.hpp"
#include "trace.hpp"
#include "xml_document_factory.hpp"

using namespace oracle::occi;
using namespace std;

// Execution modes
bool verbose = false;
bool save = false;
bool dir = false;
vector<string> files;

// A little helper
void help() {
	cout << "Use: ash f1, f2... - Load XML files" << endl;
    cout << "Options [-v] Verbose mode, printout on stdout" << endl;	
    cout << "        [-s] Save contents in ORDERCOTRAILER" << endl;
	cout << "        [-d] Treat files as directories loading all files" << endl;	
    cout << "        [-t] trace" << endl;

    exit(0);
}

// Process invocation flags and parameters
void init(int argn, char **argv) {
    if (argn <= 1) {
		help();
	}

    for (int i = 1; i < argn; ++i) {
        if (argv[i][0] == '-') {
            switch (argv[i][1]) {
			case 'h':
				help();
			case 'v':
				verbose = true;
				break;
			case 's':
				save = true;
				break;
			case 't':
				__Frame__::on();
				break;
			case 'd':
				dir = true;
				break;
			default:
				help();
            }
        } else {
            files.push_back(argv[i]);
        }
    }
}

//
// Process all files/directories with SUM-SHEET documents
// loading the OTNAME strings into the DB table
//
int main(int argn, char **argv) {
    FRAME;

	// Process command line options
	init(argn, argv);

	// REcursively load all files in subdirectories
	if (dir) {
		//tbd
	}

	// Load XML files using parsing factory
	TRACE("Started");
    XMLDocumentFactory xml_factory;
    std::map<std::string, BillDocument *> docs;
	TRACE(std::string("Found XML files: ") + lexical_cast<string>(files.size()));
	for (auto it = files.begin(); it != files.end(); ++it) {
		TRACE(std::string("Loading XML file: ") + *it);
		BillDocument *xml = xml_factory.make((*it).c_str());
		if (xml->id() == "Document.Summary") {
			docs.insert(std::pair<std::string, BillDocument *>(*it, xml));
		} else {
			delete xml;
		}
	}

	// Produce article strings from parsed XML files using AS factory
    TRACE("Start loading article strings from documents: " + lexical_cast<string>(docs.size()));
    if (!docs.empty()) {
        ArticleStringFactory factory(save);
        const vector<ArticleStringItem> asis = factory.make(docs);
        if (save) {
            factory.save(asis);
            TRACE("Saved records: " + lexical_cast<string>(asis.size()));
        }
        if (verbose) {
            factory.dump(asis);
        }
    }

    return 0;
}
