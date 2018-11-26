#!/bin/bash
cd /var/lib/jenkins
bundle install
cucumber -x -f json -o report.json