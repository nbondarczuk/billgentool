TARGET = ash

INCLUDE = -I./include \
	-I./include/article_string \
	$(COMMON_INCLUDE) \
	$(TRACE_INCLUDE) \
	$(DBUTL_INCLUDE) \
	$(RAPIDXML_INCLUDE) \
	$(XMLDOCPARSER_INCLUDE) \

INCLUDE_FILES += include/article_string/article_string_factory.hpp \
	include/article_string/article_string_item.hpp \
	include/article_string/bill_document_visitor.hpp

SRC = $(TARGET).cpp
OBJ = $(pathsubst %cpp,%.o, $(SRC))

all: $(TARGET)

$(TARGET): $(TARGET).cpp $(TRACER) $(INCLUDE_FILES)
	$(CXX) $(INCLUDE) $(CPPFLAGS) $(CFLAGS) -o $@ $< $(TRACER) $(ORACLE_INCLUDE) $(ORACLE_LDFLAGS)

install: $(TARGET)
	install $(TARGET) $(BILLDOCTOOL)/bin/$(PLATFORM)/$(TARGET)

sql:
	(cd sql; bash install.sh)

clean:
	rm -f $(TARGET) $(TARGET).d *~ ./include/*~ ./include/*/*~ core.*

-include $(TARGET).d
-include ../../config/project.mk
