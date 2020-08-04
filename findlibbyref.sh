find /usr/lib/ -type f -name \*.a \
  -exec nm -gAC --defined-only {} 2> /dev/null \; \
    | grep \ XIQueryVersion
