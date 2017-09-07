#!/bin/bash

genmap () {

sed '1 s/^/source,target,value\n/' >> temp.test

sed '/dataplaceholder/{
    s/dataplaceholder//g
    r temp.test
}' d3chart/forceopacity.html

rm temp.test

}

if [ "$1" == "-h" ]; then
  echo -e "Usage: cat sample.csv | ./pivotmap.sh > map.html"
  echo -e "Examine sample.csv or so.csv for an example of how your input should be formatted."
  exit 0
fi

genmap