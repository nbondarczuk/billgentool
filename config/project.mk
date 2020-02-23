.PHONY: all bin lib src sql clean

#
# common project config
#

PLATFORM := $(shell uname -sm | tr ' ' '_')
DIR := $(shell pwd)
PROJECT_DIR := $(DIR)/../..
CLANG_STYLE := "{BasedOnStyle: Google, IndentWidth: 4, ColumnLimit: 240}"

CXX := g++

RAPIDXML = $(PROJECT_DIR)/src/rapidxml
RAPIDXML_INCLUDE = -I$(RAPIDXML)/include

ORACLE_CLIENT := $(PROJECT_DIR)/oracle/instantclient_12_2/$(PLATFORM)
ORACLE_INCLUDE = -I$(ORACLE_CLIENT)/sdk/include
ORACLE_LDFLAGS = -L$(ORACLE_CLIENT) -lclntsh -locci -lclntsh

CFLAGS := -std=c++0x -g -fpermissive -D__USE_TRACE__
CPPFLAGS += -MMD

#
# common utility targets
#

clang-format:
	clang-format -style=$(CLANG_STYLE) -i `find . -name *.[ch]pp`

#
# components
#

BILLDOCTOOL := $(PROJECT_DIR)/src

XMLDOCPARSER := $(BILLDOCTOOL)/xmldocparser
XMLDOCPARSER_INCLUDE := -I$(XMLDOCPARSER)/include \
	-I$(XMLDOCPARSER)/include/xml_item \
	-I$(XMLDOCPARSER)/include/xml_document \
	-I$(XMLDOCPARSER)/include/utl

COMMON := $(BILLDOCTOOL)/common
COMMON_INCLUDE := -I$(COMMON)/include

TRACE := $(BILLDOCTOOL)/trace
TRACE_INCLUDE := -I$(TRACE)/include
TRACER := $(TRACE)/trace.cpp

DBUTL := $(BILLDOCTOOL)/dbutl
DBUTL_INCLUDE := -I$(DBUTL)/include

INCLUDE_FILES := $(XMLDOCPARSER)/include/bill_document.hpp \
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
	$(DBUTL)/include/dbutl.hpp


