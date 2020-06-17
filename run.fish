#!/usr/bin/env fish
while true; inotifywait -e MODIFY .; make; end
