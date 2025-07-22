#!/usr/bin/env bash

# Record where we are
original_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# Handle CLI args
if [ "$#" -gt 0 ]; then
    main "$@"
fi

# Then handle piped input, line by line
if [ ! -t 0 ]; then
    while IFS= read -r -a line_args; do
        main "${line_args[@]}"
    done
fi

# Code goes here
main() {
    return 0
}

# And is called here
if main "$@"; then
    echo "Success"
    exit 0
else
    echo 'Fail'
    exit 1
fi


