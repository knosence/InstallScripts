#!/bin/bash

echo '***********************Updating Packages*********************************'
zypper dup -y

#Will make essentals optional selection for different desktop enviroments
echo '***********************Installing essentals********************************'
zypper in tilda git fish