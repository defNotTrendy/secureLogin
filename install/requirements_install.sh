#!/usr/bin/env bash
##
## Install requirements
##
## Automation of MitM Attack on WiFi Networks
## Bachelor's Thesis UIFS FIT VUT
## Martin Vondracek
## 2016
##


INSTALL_NAME="requirements"


## Error exit codes
ERR_TASK=101

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROGNAME=$(basename $0)

## Check install task result
##   $1 exitcode of the task
##   $2 task description
function check_task_result()
{
	EXITCODE=${1?}
    TASK="${2?}"

	if [[ ${EXITCODE} -eq 0 ]]; then
        echo -e "[\e[32m OK \e[0m] ${PROGNAME}: ${TASK}"
    else
        echo -e "[\e[31mFAIL\e[0m] ${PROGNAME}: ${TASK}" >&2
        exit ${ERR_TASK}
    fi
}

## Announce start of install task
##   $1 task description
function announce_task()
{
	TASK="${1?}"

    echo -e "[ DO ] ${PROGNAME}: ${TASK}"
}

## Stop after receiving signal
##   $1 signal number
function stop()
{
    echo -e "[\e[31mFAIL\e[0m] ${PROGNAME}: ${INSTALL_NAME} install" >&2
    exit $(expr 128 + ${1?})
}


trap "stop 1" SIGHUP
trap "stop 2" SIGINT
trap "stop 15" SIGTERM


function main()
{
    announce_task "${INSTALL_NAME} install"


    TASK="pacman packages"
    announce_task "${TASK}"
    pacman --needed -S \
        python-pip \
        git \
        aircrack-ng \
        rfkill \
        netctl \
        wireshark-cli \
        wpa_supplicant \
        tcpdump \
        hostapd \
        dnsmasq

    check_task_result $? "${TASK}"

    TASK="pip install virtualenvwrapper"
    announce_task "${TASK}"
    pip install virtualenvwrapper
    check_task_result $? "${TASK}"

    TASK="source /usr/bin/virtualenvwrapper.sh"
    announce_task "${TASK}"
    source /usr/bin/virtualenvwrapper.sh
    check_task_result $? "${TASK}"

    TASK="MITMf"
    announce_task "${TASK}"
    ${SCRIPT_DIR}/MITMf/MITMf_install.sh
    check_task_result $? "${TASK}"


    TASK="upc_keys"
    announce_task "${TASK}"
    ${SCRIPT_DIR}/upc_keys/upc_keys_install.sh
    check_task_result $? "${TASK}"


    TASK="wifiphisher"
    announce_task "${TASK}"
    ${SCRIPT_DIR}/wifiphisher/wifiphisher_install.sh
    check_task_result $? "${TASK}"


    check_task_result true "${INSTALL_NAME} install"
    exit 0
}

main
