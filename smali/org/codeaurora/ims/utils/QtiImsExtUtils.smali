.class public Lorg/codeaurora/ims/utils/QtiImsExtUtils;
.super Ljava/lang/Object;
.source "QtiImsExtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/utils/QtiImsExtUtils$VideoQualityFeatureValuesConstants;
    }
.end annotation


# static fields
.field public static final ACTION_VOPS_SSAC_STATUS:Ljava/lang/String; = "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

.field public static final CARRIER_ONE_DEFAULT_MCC_MNC:Ljava/lang/String; = "405854"

.field public static final EXTRA_SSAC:Ljava/lang/String; = "Ssac"

.field public static final EXTRA_VOPS:Ljava/lang/String; = "Vops"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final PROPERTY_RADIO_ATEL_CARRIER:Ljava/lang/String; = "persist.radio.atel.carrier"

.field public static final QTI_IMS_ASSURED_TRANSFER:I = 0x2

.field public static final QTI_IMS_BLIND_TRANSFER:I = 0x1

.field public static final QTI_IMS_CALL_DEFLECT_NUMBER:Ljava/lang/String; = "ims_call_deflect_number"

.field public static final QTI_IMS_CONSULTATIVE_TRANSFER:I = 0x4

.field public static final QTI_IMS_HO_DISABLE_ALL:I = 0x2

.field public static final QTI_IMS_HO_ENABLED_WLAN_TO_WWAN_ONLY:I = 0x3

.field public static final QTI_IMS_HO_ENABLED_WWAN_TO_WLAN_ONLY:I = 0x4

.field public static final QTI_IMS_HO_ENABLE_ALL:I = 0x1

.field public static final QTI_IMS_HO_INVALID:I = 0x0

.field public static final QTI_IMS_INCOMING_CONF_EXTRA_KEY:Ljava/lang/String; = "incomingConference"

.field public static final QTI_IMS_PHONE_ID_EXTRA_KEY:Ljava/lang/String; = "phoneId"

.field public static final QTI_IMS_REQUEST_ERROR:I = 0x1

.field public static final QTI_IMS_REQUEST_SUCCESS:I = 0x0

.field public static final QTI_IMS_SMS_APP_INVALID:I = -0x1

.field public static final QTI_IMS_SMS_APP_NOT_RCS:I = 0x2

.field public static final QTI_IMS_SMS_APP_RCS:I = 0x1

.field public static final QTI_IMS_SMS_APP_SELECTION_NOT_ALLOWED:I = 0x0

.field public static final QTI_IMS_STATIC_IMAGE_SETTING:Ljava/lang/String; = "ims_vt_call_static_image"

.field public static final QTI_IMS_TRANSFER_EXTRA_KEY:Ljava/lang/String; = "transferType"

.field public static final QTI_IMS_VOLTE_PREF_OFF:I = 0x0

.field public static final QTI_IMS_VOLTE_PREF_ON:I = 0x1

.field public static final QTI_IMS_VOLTE_PREF_UNKNOWN:I = 0x2

.field public static final QTI_IMS_VVM_APP_INVALID:I = -0x1

.field public static final QTI_IMS_VVM_APP_NOT_RCS:I = 0x0

.field public static final QTI_IMS_VVM_APP_RCS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-string v0, "QtiImsExtUtils"

    sput-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public static allowVideoCallsInLowBattery(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 435
    const-string v0, "allow_video_call_in_low_battery"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 222
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 223
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 224
    .local v1, "width":I
    const/4 v2, 0x1

    .line 226
    .local v2, "inSampleSize":I
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateInSampleSize: reqWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reqHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " raw width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " raw height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 230
    :cond_0
    div-int/lit8 v3, v0, 0x2

    .line 231
    .local v3, "halfHeight":I
    div-int/lit8 v4, v1, 0x2

    .line 235
    .local v4, "halfWidth":I
    :goto_0
    div-int v5, v3, v2

    if-le v5, p2, :cond_1

    div-int v5, v4, v2

    if-le v5, p1, :cond_1

    .line 237
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 240
    .end local v3    # "halfHeight":I
    .end local v4    # "halfWidth":I
    :cond_1
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateInSampleSize: inSampleSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v2
.end method

.method public static canHoldVideoCall(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 445
    const-string v0, "allow_holding_video_call"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .line 304
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 306
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 311
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 312
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 315
    invoke-static {v0, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 318
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 319
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 320
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p2, p3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 249
    if-nez p0, :cond_0

    .line 250
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 255
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 264
    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 268
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 165
    const-string v0, "ims_call_deflect_number"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 173
    :cond_0
    return-object v0
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 460
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 461
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getConfigForPhoneId context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-object v0

    .line 465
    :cond_0
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 467
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v1, :cond_1

    .line 468
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getConfigForPhoneId configManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-object v0

    .line 472
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 473
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getConfigForPhoneId phoneId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v0

    .line 477
    :cond_2
    invoke-static {p0, p1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v2

    .line 478
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 479
    sget-object v3, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getConfigForPhoneId subId is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v0

    .line 483
    :cond_3
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRttMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rtt_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRttOperatingMode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 543
    const-string v0, "persist.radio.rtt.operval"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 544
    .local v0, "mode":I
    return v0
.end method

.method public static getStaticImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codeaurora/ims/QtiImsException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "uriStr":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticImage: uriStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reqWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reqHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isValidUriStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 342
    .local v1, "imageBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 345
    return-object v1

    .line 343
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/QtiImsException;

    const-string v3, "image decoding error"

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    .end local v1    # "imageBitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "invalid file path"

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStaticImageUriStr(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 193
    const-string v0, "ims_vt_call_static_image"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 490
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 491
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 492
    return v1

    .line 495
    :cond_0
    nop

    .line 496
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 497
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1

    .line 498
    return v1

    .line 500
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    return v1
.end method

.method public static isCallDeflectionSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 556
    const-string v0, "config_carrier_ims_call_deflect"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCallTransferEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 377
    const-string v0, "persist.radio.ims_call_transfer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCancelModifyCallSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 562
    const-string v0, "support_cancel_modify_call"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carrierConfig"    # Ljava/lang/String;

    .line 430
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 421
    const-string v0, "405854"

    const-string v1, "persist.radio.atel.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCsRetryConfigEnabled(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 404
    const-string v0, "config_carrier_cs_retry_available"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttDowngradeSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 550
    const-string v0, "carrier_rtt_downgrade_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 505
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getRttMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRttSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 523
    const-string v0, "carrier_rtt_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttSupportedOnVtCalls(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 529
    const-string v0, "carrier_rtt_supported_on_vtcalls"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRttUpgradeSupported(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 536
    const-string v0, "carrier_rtt_upgrade_supported"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidUriStr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .line 203
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 414
    const-string v0, "vowifi_call_quality"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static scaleImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 274
    if-nez p0, :cond_0

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 279
    .local v0, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 280
    .local v8, "h":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float v9, v1, v2

    .line 281
    .local v9, "scaleWidth":F
    int-to-float v1, p2

    int-to-float v2, v8

    div-float v10, v1, v2

    .line 282
    .local v10, "scaleHeight":F
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleImage bitmap w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bitmap h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v1

    .line 285
    .local v11, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v11, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 286
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v0

    move v5, v8

    move-object v6, v11

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 288
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Ljava/lang/String;

    .line 178
    move-object v0, p1

    .line 180
    .local v0, "deflectNum":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    const-string v0, ""

    .line 184
    :cond_1
    const-string v1, "ims_call_deflect_number"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    return-void
.end method

.method public static setRttMode(ZLandroid/content/Context;)V
    .locals 2
    .param p0, "value"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rtt_mode"

    .line 518
    nop

    .line 517
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    return-void
.end method

.method public static shallHidePreviewInVtConference(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 440
    const-string v0, "config_hide_preview_in_vt_confcall"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 455
    const-string v0, "remove_modify_call_capability"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallRemoveModifyCallCapability(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 451
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shallShowStaticImageUi(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 361
    const-string v0, "show_static_image_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallShowVideoQuality(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 369
    const-string v0, "show_video_quality_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shallTransmitStaticImage(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 353
    const-string v0, "transmit_static_image"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useCustomVideoUi(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 395
    const-string v0, "use_custom_video_ui"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useExt(ILandroid/content/Context;)Z
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 386
    const-string v0, "video_call_use_ext"

    invoke-static {p0, p1, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
