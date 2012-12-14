#!/bin/bash

echo "邮件体" | mail -s "subject" -a /path/attechment.gz -b bto@mail.com -c cto@mail.com to@mail.com

