/*
 // Employee info
 class Employee {
 public:
 // It's the unique ID of each node.
 // unique id of this employee
 int id;
 // the importance value of this employee
 int importance;
 // the id of direct subordinates
 vector<int> subordinates;
 };
 */
class Solution {
    public:
    int getImportance(vector<Employee*> employees, int id) {
    int importance = 0;
    
    for(auto* emp: employees) {
    if (emp->id == id) {
    importance += emp->importance;
    
    if (emp->subordinates.size() > 0) {
    for(auto& sub: emp->subordinates) {
    importance += getImportance(employees, sub);
    }
    }
    
    return importance;
    }
    }
    
    return importance;
    }
};
