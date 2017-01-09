/*
  The entrance fee of the car parking lot is 2;
  The first full or partial hour costs 3;
  Each successive full or partial hour (after the first) costs 4.
  Times are the same day and E < L
*/

'use strict';
function solution(E, L) {
  var HOUR_COST = 4;
  var cost = 5; //entrance fee + first hour;

  //leave - enter.  convert to DateTime and get time span
  var duration = (new Date("1/1/2015 " + L) - new Date("1/1/2015 " + E)) / 60000; // convert to minutes

  if (duration > 60) {
    duration -= 60;
    cost += (Math.floor(duration / 60) * HOUR_COST);
    if (duration % 60) {
      cost += HOUR_COST;
    }
  }
  return cost;
}


console.log(solution("10:00", "10:21"));
console.log(solution("10:59", "11:01"));
console.log(solution("09:42", "11:42"));
console.log(solution("10:00", "13:21"));
