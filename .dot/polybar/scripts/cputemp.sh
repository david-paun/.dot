#!/bin/bash

printf $(sensors | sed -n -E 's/(Package id 0:  \+)([0-9]{2,2})(..)(.)(.*)/\2\4/p')

