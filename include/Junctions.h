// THIS IS THE DECLARATION FILE OF THE CLASS Junctions (Junctions.h) 
#ifndef _JUNCTIONS_H_
#define _JUNCTIONS_H_

#include <vector>
#include <string>
#include <iostream>
#include <algorithm>
#include "Roads.h"
//class Roads;

using namespace std;

  class Junctions{
  	

  public:
     Junctions();
	 Junctions(const string& idJunctionVal);
     Junctions(const string& idJunctionVal, vector<Roads*>* roadsInJunctionVal,vector<int>* timeSliceVal);
     Junctions(const Junctions& copyJunctions);
     virtual ~Junctions();
     Junctions& operator=(const Junctions &JunctionsRightArg);

	void copy(const Junctions& copyJunctions);
     
     string getIdJunction() const;
	 vector<Roads*>* getRoadsInJunction() const; //meybe Roads& ?
     vector<int>* getTimeSlice() const;
     
	 void setID(const string& idJunctionVal);
     void setTimeSlice(vector<int>* timeSliceVal);
	 void setRoadsInJunction(vector<Roads*>* roadsInJunction); 

	 void advanceCarsInJunctions();
	 void MoveCarFirstOnVectorFromSourceRoadFirstOnVectorToDestinationRoad();
	 void replaceRoadinJunction(int conterStasticCarPass, int MaxTimeSlice,int MinTimeSlice);

	 private:
     string _idJunction;
     vector<Roads*>* _roadsInJunction; 
	 vector<int>* _timeSlice;
	 
  };   
  
  #endif //_JUNCTIONS_H_