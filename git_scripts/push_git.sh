#!/bin/bash

    echo '==> Add Your Commit= '
    read commitVar

    git add .
    git commit -m "$commitVar"
    git push origin master
    echo '==> Done'

