#!/bin/bash

head -n 1 input.csv | \
        sed -e 's/^/<tr><th>/' -e 's/,/<\/th><th>/g' -e 's/$/<\/th><\/tr>/' > output.html
tail -n +2 input.csv | \
        sed -e 's/^/<tr><td>/' -e 's/,/<\/td><td>/g' -e 's/$/<\/td><\/tr>/' >> output.html

sed -i '1s/^/<html><head><title>Convert csv to html<\/title><\/head><body><table>/' output.html
sed -i '$a\</table></body></html>\' output.html
exit 0