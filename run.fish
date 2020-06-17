#!/usr/bin/env fish
make;
while true; inotifywait -e MODIFY .; make; end
