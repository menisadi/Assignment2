# makefile for assignment 2

all: RoadSimulator

# Tool invocations
# Executable "RoadSimulator" depends on the *.o files
RoadSimulator: bin/GlobalVar.o bin/Car.o bin/Roads.o bin/Junctions.o bin/Event.o bin/CarFaulttEvent.o bin/AddCarEvent.o bin/Reports.o bin/RoadReport.o bin/CarReport.o bin/JunctionReport.o bin/ini.o bin/TrafficSimulation.o bin/Printer.o bin/Main.o 
	@echo 'Building target: RoadSimulator'
	@echo 'Invoking: C++ Linker'
	g++ -o bin/RoadSimulator bin/GlobalVar.o bin/Car.o bin/Roads.o bin/Junctions.o bin/Event.o bin/CarFaulttEvent.o bin/AddCarEvent.o bin/Reports.o bin/RoadReport.o bin/CarReport.o bin/JunctionReport.o bin/ini.o bin/TrafficSimulation.o bin/Printer.o bin/Main.o 
	@echo 'Finished building target: RoadSimulator'
	@echo ' '

bin/GlobalVar.o: src/GlobalVar.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/GlobalVar.o src/GlobalVar.cpp

bin/Car.o: src/Car.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Car.o src/Car.cpp
	
bin/Roads.o: src/Roads.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Roads.o src/Roads.cpp
	
bin/Junctions.o: src/Junctions.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Junctions.o src/Junctions.cpp
	
bin/Event.o: src/Event.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Event.o src/Event.cpp
	
bin/CarFaulttEvent.o: src/CarFaulttEvent.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/CarFaulttEvent.o src/CarFaulttEvent.cpp
	
bin/AddCarEvent.o: src/AddCarEvent.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/AddCarEvent.o src/AddCarEvent.cpp
	
bin/Reports.o: src/Reports.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Reports.o src/Reports.cpp

bin/RoadReport.o: src/RoadReport.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/RoadReport.o src/RoadReport.cpp
	
bin/CarReport.o: src/CarReport.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/CarReport.o src/CarReport.cpp
	
bin/JunctionReport.o: src/JunctionReport.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/JunctionReport.o src/JunctionReport.cpp
	
bin/ini.o: src/ini.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/ini.o src/ini.cpp
	
bin/TrafficSimulation.o: src/TrafficSimulation.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/TrafficSimulation.o src/TrafficSimulation.cpp
	
bin/Printer.o: src/Printer.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Printer.o src/Printer.cpp

bin/Main.o: src/Main.cpp
	g++ -g -Wall -Weffc++ -c -I$../include -o bin/Main.o src/Main.cpp
	
#Clean the build directory
clean: 
	rm -f bin/*
