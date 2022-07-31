#! /usr/bin/env bash

#ssh key 생성
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.1.11
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.1.12
sshpass -p vagrant ssh -T -o StrictHostKeyChecking=no vagrant@192.168.1.13