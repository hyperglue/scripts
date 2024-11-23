#!/bin/sh
if test -z "${1}"
then
    echo "Please specify name!"
    exit 1
fi

set -o errexit # abort on nonzero exitstatus
set -o nounset # abort on unbound variable
# shellcheck disable=SC3040
set -o pipefail # don't hide errors within pipes

name="${1}"
currdate="$(date -Iminutes)"

ssh-keygen -t ed25519 -a 100 -C "${name} ${currdate}" -f "${name}"

# Oneliner to copy:
# ssh-keygen -t ed25519 -a 100 -C " $(date -Iminutes)" -f ""
