#!/bin/bash

/usr/bin/screenshot_adapter.py &

script_pid=$!

/opt/Upwork/upwork &

upwork_pid=$!

wait $upwork_pid

kill $script_pid 2>/dev/null
