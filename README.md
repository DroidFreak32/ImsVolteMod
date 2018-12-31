# ImsVolteMod
Mods ims.apk to remove the annoying HD notification

To sign
```bash
apktool b -o ims.apk ims/
java -jar signapk.jar platform.x509.pem platform.pk8 ims.apk ims-aligned-debugSigned.apk
```
