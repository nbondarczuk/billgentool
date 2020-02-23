CC = g++
OPTIONS = -g
TARGETPARSER = billdocparser
TARGETTXTGEN = billdoctxtgen
INCLUDE = -I./include/rapidxml \
	-I./include \
	-I./include/xml_item \
	-I./include/xml_document \
	-I./include/utl \
	-I./include/txt_document \
	-I./include/txt_invoice

$(TARGETTXTGEN):
	$(CC) $(INCLUDE) $(OPTIONS) -o $(TARGETTXTGEN) $(TARGETTXTGEN).cpp

all: $(TARGETTXTGEN)

integration-test: $(TARGETTXTGEN)
	./billdoctxtgen test/2877963/*.xml | grep -v FILEHDR > ./test/2877963/2877963.txt.1
	diff ./test/2877963/2877963.txt.0 ./test/2877963/2877963.txt.1

clean:
	rm -f $(TARGETPARSER) $(TARGETTXTGEN) *~ ./include/*~ ./include/*/*~ core.*

tar:
	tar -cvf $(HOME)/billdoc.tar .
	gzip $(HOME)/billdoc.tar
