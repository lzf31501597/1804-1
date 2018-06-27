#!/bin/bash
expect << EOF
spawn ssh -o StrictHostKeyChecking=no root@desktop0
expect "passwrod" {send "redhat\r"}
expect "#" {send "echo TEDU.CN > /tmp/mile.txt\r"}
expect "#" {send "exit\r"}
EOF
echo "desktop0文件部署完毕"

expect << EOF
spawn ssh -o StrictHostKeyChecking=no root@server0
expect "passwrod" {send "redhat\r"}
expect "#" {send "echo TEDU.CN > /tmp/mile.txt\r"}
expect "#" {send "exit\r"}
EOF
echo "server0文件部署完毕"
