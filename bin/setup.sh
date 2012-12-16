#!/bin/sh

if test $OSTYPE = "FreeBSD"
then
    WHOAMI=`realpath $0`
elif test $OSTYPE = "darwin"
then
    WHOAMI=`python -c 'import os, sys; print os.path.realpath(sys.argv[1])' $0`
else
    WHOAMI=`readlink -f $0`
fi

WHEREAMI=`dirname $WHOAMI`
LITTLEPRINTER=`dirname $WHEREAMI`

PROJECT=$1

echo "copying application files to ${PROJECT}"
cp ${LITTLEPRINTER}/www/*.php ${PROJECT}/www/

echo "copying templates to ${PROJECT}"
cp ${LITTLEPRINTER}/www/templates/*.txt ${PROJECT}/www/templates/

echo "copying stylesheets to ${PROJECT}"
cp ${LITTLEPRINTER}/www/css/*.php ${PROJECT}/www/css/

echo "copying images to ${PROJECT}"
cp ${LITTLEPRINTER}/www/images/*.php ${PROJECT}/www/images/

echo "setup (mostly) complete"
echo "you will still need to update your config file manually"
echo ""

echo "--------------------------------------------"
echo ""

echo "Things you'll need to add to your config.php file (by hand):"
echo ""

cat ${LITTLEPRINTER}/www/include/config.php.example

echo "--------------------------------------------"
echo ""

# TO DO: .htaccess configs

echo "Things you'll need to add to your .htaccess file (by hand):"
echo ""

cat ${LITTLEPRINTER}/www/.htaccess

echo "--------------------------------------------"
echo ""
