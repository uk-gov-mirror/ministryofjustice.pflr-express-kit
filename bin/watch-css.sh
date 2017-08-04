#!/bin/sh

SCRIPTPATH=$0

SYMLINKPATH=$(ls -l $SCRIPTPATH | awk '{print $11}')
if [ "$SYMLINKPATH" != "" ]
  then
  if [ "$SYMLINKPATH" == "../pflr-express-kit/bin/watch-css.sh" ]
    then
    SCRIPTPATH=$(dirname $HERE)/$SYMLINKPATH
    else
    SCRIPTPATH=$SYMLINKPATH
  fi
fi

BINDIR=$(echo $SCRIPTPATH | sed 's/watch-css.sh//')

sh ${BINDIR}build-css.sh --watch