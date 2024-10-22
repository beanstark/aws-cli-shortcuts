#!/bin/sh

function list-instances() {
aws ec2 describe-instances --query 'Reservations].ƒInstances[*]' --output json
}

function lis-subnets() {
aws ec2 describe-subnets --query 'Subnets[*]' --output json
}

function list-vpcs() {

aws ec2 describe-vpcs --query 'Vpcs[*]' --output json
}

function list-security-groups () {
    aws ec2 describe-security-groups --query 'SecurityGroups[*]' --output json
}

function list-key-pairs() {
    aws ec2 describe-key-pairs --query 'KeyPairs[*]' --output json 
}



