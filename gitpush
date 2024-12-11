#!/bin/sh -e

RED='\033[38;5;9m';
GREEN='\033[38;5;10m';
RESET='\033[m';

TIME="$(date '+%H:%M:%S';)";

gitpush()
{
        git push --progress "$@";
};

main()
{
        until gitpush "$@"; do
                printf "\n${GREEN}[$TIME]${RESET} | ${RED}[ERROR: Push failed.]${RESET}\n\n";
                sleep 1; # Slows down output speed
        done;

}; main "$@"
