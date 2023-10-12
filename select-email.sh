#!/usr/bin/env bash
cut -d ',' -f1 students-list_0923.txt | sort | uniq | grep -v "Email" > student-emails.txt
