OPTIONS = -std=c++0x -g -fpermissive -D__USE_TRACE__

TARGET = ash

ORACLE_INCLUDE = -I$(ORACLE_CLIENT)/sdk/include
ORACLE_LDFLAGS = -L$(ORACLE_CLIENT) -lclntsh -locci -lclntsh

BILLDOCTOOL = ../..

RAPIDXML = ../rapidxml

RAPIDXML_INCLUDE = -I$(RAPIDXML)/include

XMLDOCPARSER = ../xmldocparser
XMLDOCPARSER_INCLUDE = -I$(XMLDOCPARSER)/include \
	-I$(XMLDOCPARSER)/include/xml_item \
	-I$(XMLDOCPARSER)/include/xml_document \
	-I$(XMLDOCPARSER)/include/utl \

COMMON = ../common
COMMON_INCLUDE = -I$(COMMON)/include

TRACE = ../trace
TRACE_INCLUDE = -I$(TRACE)/include

DBUTL = ../dbutl
DBUTL_INCLUDE = -I$(DBUTL)/include

INCLUDE = -I./include \
	-I./include/article_string \
	$(COMMON_INCLUDE) \
	$(TRACE_INCLUDE) \
	$(DBUTL_INCLUDE) \
	$(RAPIDXML_INCLUDE) \
	$(XMLDOCPARSER_INCLUDE) \

INCLUDE_HPP = $(XMLDOCPARSER)/include/bill_document.hpp \
	$(XMLDOCPARSER)/include/bill_document_factory.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_address_page.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_balance_page.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_call_details.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_complement.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_contracts.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_factory.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_invoice.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_invoice_info.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_legend.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_document_summary.hpp \
	$(XMLDOCPARSER)/include/xml_document/xml_envelope.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_account.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_addr.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_adv_txt.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_agg_set.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_att.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_bank.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_bill_acc.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_call.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_cash_discount.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_cccontact.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_charge.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_contract.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_customer.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_cust_ref.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_date.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_dn.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_fi_cont.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_fup.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_invoice_item.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_invoice_totals.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_inv_party.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_item.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_part.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_per_ct_info.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_price.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_src_status.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_srv_params.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_srv_status.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_sum_item.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_sums.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_tax.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_type_desc.hpp \
	$(XMLDOCPARSER)/include/xml_item/xml_xcd.hpp \
	$(XMLDOCPARSER)/include/utl/amtutl.hpp \
	$(XMLDOCPARSER)/include/utl/dateutl.hpp \
	$(XMLDOCPARSER)/include/utl/xmlutl.hpp \
	$(COMMON)/include/lexical_cast.hpp \
	$(COMMON)/include/lock_guard.hpp \
	$(COMMON)/include/strutl.hpp \
	$(TRACE)/include/trace.hpp \
	$(DBUTL)/include/dbutl.hpp \
	include/article_string/article_string_factory.hpp \
	include/article_string/article_string_item.hpp \
	include/article_string/bill_document_visitor.hpp

all: $(TARGET)

$(TARGET): $(INCLUDE_HPP) $(TARGET).cpp ../trace/trace.cpp
	$(CXX) $(INCLUDE) $(OPTIONS) -o $(TARGET) $(TARGET).cpp ../trace/trace.cpp $(ORACLE_INCLUDE) $(ORACLE_LDFLAGS)

clang-format:
	clang-format -style="{BasedOnStyle: Google, IndentWidth: 4, ColumnLimit: 240}" -i \
	*.cpp ./include/*.hpp ./include/*/*.hpp

install: $(TARGET)
	install $(TARGET) $(BILLDOCTOOL)/bin/$(TARGET)

run:
	ash -v examples/xml/SUM2877963.43824.xml.xml

test: $(TARGET)
	ash -v examples/xml/SUM2877963.43824.xml.xml > examples/xml/SUM2877963.43824.1
	diff examples/xml/SUM2877963.43824.0 examples/xml/SUM2877963.43824.1

test-db:
	ash -s -v examples/xml/SUM2877963.43824.xml.xml

sql:
	(cd sql; bash install.sh)

clean:
	rm -f $(TARGET) *~ ./include/*~ ./include/*/*~ core.*

tar:
	tar -cvf $(HOME)/ash.tar .
	gzip $(HOME)/ash.tar

include ../../config/project.mk
