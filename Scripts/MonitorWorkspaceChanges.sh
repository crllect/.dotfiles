#!/bin/bash

get_current_workspace() {
	current_space=$(osascript /Users/crllect/Scripts/simple-bar-reload-monitor.applescript)
	 echo "$current_space"
}

previous_space=""
while true; do
	current_space=$(get_current_workspace)

	if [[ "$current_space" != "$previous_space" ]]; then
		sleep 1
		if [[ "$current_space" != "$previous_space" ]]; then
				previous_space="$current_space"
        		/Users/crllect/Scripts/simple-bar-reload.sh
        		sleep 0.5
        		/Users/crllect/Scripts/simple-bar-reload.sh
        	fi
	fi
	sleep 0.2
done