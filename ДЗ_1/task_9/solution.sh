#!/bin/bash
cal | cat -vet |grep -o "H....." | cut -c 2,6
exit 0