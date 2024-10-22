#!/bin/sh


source listing-functions.sh



function search-name-key-pair () {

    export PARAM="$1"
    export KEYPAIRS=`list-key-pairs`
    echo $KEYPAIRS | jq --arg PARAM "$PARAM"  -r '.[] | select(.KeyName | contains($PARAM))'

unset PARAM
unset KEYPAIRS
}


function search-name-security-group() {
export PARAM="$1"
export SECURITYGROUPS=`list-security-groups`
echo $SECURITYGROUPS | jq --arg PARAM "$PARAM"  -r '.[] | select(.GroupName | contains ($PARAM))'
unset PARAM
unset SECURITYGROUPS 

}