#!/usr/bin/env fish
make;
while true; inotifywait -e MODIFY src; make; end
