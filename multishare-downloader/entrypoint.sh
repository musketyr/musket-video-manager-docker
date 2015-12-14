#!/usr/bin/env bash

echo "Downloading $1"


multishare-downloader "$MULTISHARE_USERNAME:$MULTISHARE_PASSWORD" $1 "/opt/downloads"
