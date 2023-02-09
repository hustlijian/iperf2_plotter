#!/bin/bash
cat tmp.trace | awk '{print int($1/1000)}' | uniq -c > tmp.dat
