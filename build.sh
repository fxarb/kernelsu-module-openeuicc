#!/bin/bash
cd openeuicc
./gradlew :app:assembleRelease
cd .. && mkdir -p system/system_ext/priv-app/OpenEUICC
cp openeuicc/app/build/outputs/apk/release/app-release.apk system/system_ext/priv-app/OpenEUICC/OpenEUICC.apk
mkdir -p system/system_ext/etc/permissions/
cp openeuicc/privapp_whitelist_im.angry.openeuicc.xml system/system_ext/etc/permissions/privapp_whitelist_im.angry.openeuicc.xml
zip -FSr module.zip customize.sh module.prop system/ uninstall.sh
