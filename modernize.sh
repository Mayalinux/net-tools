#!/bin/bash

# Automated code fixes
for f in $(find . -name '*.[ch]' -type f); do
  mv $f ${f}.orig
  perl -pe 'BEGIN { $/ = undef; } s/[ \t]*default:[\n \t]*}/}/' <${f}.orig >$f
done

sed -i -e 's/sizeof(x25_address)/sizeof(struct x25_address)/g' lib/x25_sr.c

find . -name '*.orig' -type f -exec rm -f {} \;
