#!/bin/bash
ARCHIVE=$1
DEBIAN_URL="https://random-public-tools.s3.eu-west-3.amazonaws.com/debian-12.2.0.qcow2.tar.gz"

(ls ${ARCHIVE} 2> /dev/null > /dev/null && echo '💽 Disk file already here, skipping downloading') || (echo '🌐 Downloading disk file' && curl --progress-bar -L ${DEBIAN_URL} -o ${ARCHIVE})
