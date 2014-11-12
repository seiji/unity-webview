#!/bin/sh
DSTDIR="../../build/Packager/Assets/Plugins"
DERIVED_DATA="./DerivedData"
xcodebuild -scheme WebView -configuration Release clean build CONFIGURATION_BUILD_DIR=$DERIVED_DATA/WebView
mkdir -p $DSTDIR
rm -Rf $DSTDIR/WebView.bundle
cp -r $DERIVED_DATA/WebView/WebView.bundle $DSTDIR
rm -Rf $DERIVED_DATA
