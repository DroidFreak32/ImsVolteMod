.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final MIN_VIDEO_CALL_PHONE_NUMBER_LENGTH:I = 0x7

.field public static final QTI_CONFIG_END:I = 0x44

.field public static final QTI_CONFIG_SMS_APP:I = 0x43

.field public static final QTI_CONFIG_START:I = 0x43

.field public static final QTI_CONFIG_VVM_APP:I = 0x44

.field public static final SESSION_MERGE_COMPLETED:I = 0x2

.field public static final SESSION_MERGE_FAILED:I = 0x3

.field public static final SESSION_MERGE_STARTED:I = 0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 92
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static clearBits(II)I
    .locals 1
    .param p0, "property"    # I
    .param p1, "mask"    # I

    .line 627
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 2
    .param p0, "callType"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "videoState":I
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    const/4 v0, 0x3

    .line 222
    goto :goto_0

    .line 215
    :pswitch_1
    const/4 v0, 0x2

    .line 216
    goto :goto_0

    .line 218
    :pswitch_2
    const/4 v0, 0x1

    .line 219
    goto :goto_0

    .line 212
    :pswitch_3
    const/4 v0, 0x0

    .line 213
    goto :goto_0

    .line 225
    :cond_0
    :pswitch_4
    const/4 v0, 0x4

    .line 228
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static convertImsConfigToImsConfigItem(I)I
    .locals 1
    .param p0, "config"    # I

    .line 353
    packed-switch p0, :pswitch_data_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 489
    :pswitch_0
    const/16 v0, 0x48

    return v0

    .line 487
    :pswitch_1
    const/16 v0, 0x47

    return v0

    .line 485
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 483
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 481
    :pswitch_4
    const/16 v0, 0x43

    return v0

    .line 479
    :pswitch_5
    const/16 v0, 0x42

    return v0

    .line 477
    :pswitch_6
    const/16 v0, 0x41

    return v0

    .line 475
    :pswitch_7
    const/16 v0, 0x40

    return v0

    .line 473
    :pswitch_8
    const/16 v0, 0x3f

    return v0

    .line 471
    :pswitch_9
    const/16 v0, 0x3e

    return v0

    .line 469
    :pswitch_a
    const/16 v0, 0x3d

    return v0

    .line 467
    :pswitch_b
    const/16 v0, 0x3c

    return v0

    .line 465
    :pswitch_c
    const/16 v0, 0x3b

    return v0

    .line 463
    :pswitch_d
    const/16 v0, 0x3a

    return v0

    .line 461
    :pswitch_e
    const/16 v0, 0x39

    return v0

    .line 459
    :pswitch_f
    const/16 v0, 0x38

    return v0

    .line 457
    :pswitch_10
    const/16 v0, 0x37

    return v0

    .line 455
    :pswitch_11
    const/16 v0, 0x36

    return v0

    .line 453
    :pswitch_12
    const/16 v0, 0x35

    return v0

    .line 451
    :pswitch_13
    const/16 v0, 0x34

    return v0

    .line 449
    :pswitch_14
    const/16 v0, 0x33

    return v0

    .line 447
    :pswitch_15
    const/16 v0, 0x32

    return v0

    .line 445
    :pswitch_16
    const/16 v0, 0x31

    return v0

    .line 443
    :pswitch_17
    const/16 v0, 0x30

    return v0

    .line 441
    :pswitch_18
    const/16 v0, 0x2f

    return v0

    .line 439
    :pswitch_19
    const/16 v0, 0x2e

    return v0

    .line 437
    :pswitch_1a
    const/16 v0, 0x2d

    return v0

    .line 435
    :pswitch_1b
    const/16 v0, 0x2c

    return v0

    .line 433
    :pswitch_1c
    const/16 v0, 0x2b

    return v0

    .line 431
    :pswitch_1d
    const/16 v0, 0x2a

    return v0

    .line 429
    :pswitch_1e
    const/16 v0, 0x29

    return v0

    .line 427
    :pswitch_1f
    const/16 v0, 0x28

    return v0

    .line 425
    :pswitch_20
    const/16 v0, 0x27

    return v0

    .line 423
    :pswitch_21
    const/16 v0, 0x26

    return v0

    .line 421
    :pswitch_22
    const/16 v0, 0x25

    return v0

    .line 419
    :pswitch_23
    const/16 v0, 0x24

    return v0

    .line 417
    :pswitch_24
    const/16 v0, 0x23

    return v0

    .line 411
    :pswitch_25
    const/16 v0, 0x22

    return v0

    .line 415
    :pswitch_26
    const/16 v0, 0x21

    return v0

    .line 413
    :pswitch_27
    const/16 v0, 0x1a

    return v0

    .line 409
    :pswitch_28
    const/16 v0, 0x44

    return v0

    .line 407
    :pswitch_29
    const/16 v0, 0x1d

    return v0

    .line 405
    :pswitch_2a
    const/16 v0, 0x1c

    return v0

    .line 403
    :pswitch_2b
    const/16 v0, 0x19

    return v0

    .line 401
    :pswitch_2c
    const/16 v0, 0x18

    return v0

    .line 399
    :pswitch_2d
    const/16 v0, 0x17

    return v0

    .line 397
    :pswitch_2e
    const/16 v0, 0x16

    return v0

    .line 395
    :pswitch_2f
    const/16 v0, 0x15

    return v0

    .line 393
    :pswitch_30
    const/16 v0, 0x14

    return v0

    .line 391
    :pswitch_31
    const/16 v0, 0x13

    return v0

    .line 389
    :pswitch_32
    const/16 v0, 0x12

    return v0

    .line 491
    :pswitch_33
    const/16 v0, 0x1e

    return v0

    .line 387
    :pswitch_34
    const/16 v0, 0x11

    return v0

    .line 385
    :pswitch_35
    const/16 v0, 0x10

    return v0

    .line 383
    :pswitch_36
    const/16 v0, 0xf

    return v0

    .line 381
    :pswitch_37
    const/16 v0, 0xe

    return v0

    .line 379
    :pswitch_38
    const/16 v0, 0xd

    return v0

    .line 377
    :pswitch_39
    const/16 v0, 0xc

    return v0

    .line 375
    :pswitch_3a
    const/16 v0, 0xb

    return v0

    .line 373
    :pswitch_3b
    const/16 v0, 0xa

    return v0

    .line 371
    :pswitch_3c
    const/16 v0, 0x9

    return v0

    .line 369
    :pswitch_3d
    const/16 v0, 0x8

    return v0

    .line 367
    :pswitch_3e
    const/4 v0, 0x7

    return v0

    .line 365
    :pswitch_3f
    const/4 v0, 0x6

    return v0

    .line 363
    :pswitch_40
    const/4 v0, 0x5

    return v0

    .line 361
    :pswitch_41
    const/4 v0, 0x4

    return v0

    .line 359
    :pswitch_42
    const/4 v0, 0x3

    return v0

    .line 357
    :pswitch_43
    const/4 v0, 0x2

    return v0

    .line 355
    :pswitch_44
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 1
    .param p0, "error"    # I

    .line 266
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 267
    const/4 v0, 0x4

    return v0

    .line 268
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_3

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 271
    return v0

    .line 273
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 269
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .line 232
    const/16 v0, 0xa

    .line 233
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 252
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_0
    const/4 v0, 0x4

    .line 244
    goto :goto_0

    .line 249
    :pswitch_1
    const/4 v0, 0x2

    .line 250
    goto :goto_0

    .line 246
    :pswitch_2
    const/4 v0, 0x1

    .line 247
    goto :goto_0

    .line 240
    :pswitch_3
    const/4 v0, 0x3

    .line 241
    goto :goto_0

    .line 236
    :pswitch_4
    const/4 v0, 0x0

    .line 237
    nop

    .line 255
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 259
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 260
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 262
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 199
    :pswitch_1
    const/4 v0, 0x3

    .line 200
    goto :goto_0

    .line 193
    :pswitch_2
    const/4 v0, 0x2

    .line 194
    goto :goto_0

    .line 196
    :pswitch_3
    const/4 v0, 0x1

    .line 197
    goto :goto_0

    .line 190
    :pswitch_4
    const/4 v0, 0x0

    .line 191
    nop

    .line 205
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v1, 0x0

    .line 580
    .local v1, "code":I
    if-eqz p0, :cond_0

    .line 581
    iget-object v2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 582
    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    .line 586
    :cond_0
    if-nez v0, :cond_1

    .line 587
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    return-object v2

    .line 589
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sip error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error string :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    .line 592
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 591
    return-object v2
.end method

.method public static getUiErrorCode(I)I
    .locals 2
    .param p0, "imsErrorCode"    # I

    .line 307
    const/4 v0, 0x1

    .line 308
    .local v0, "status":I
    if-eqz p0, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_2

    const/16 v1, 0x32

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 326
    const/4 v0, 0x2

    goto :goto_0

    .line 317
    :pswitch_0
    const/4 v0, 0x5

    .line 318
    goto :goto_0

    .line 320
    :pswitch_1
    const/4 v0, 0x3

    .line 321
    goto :goto_0

    .line 323
    :cond_0
    const/16 v0, 0x32

    .line 324
    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x4

    .line 315
    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x1

    .line 312
    nop

    .line 328
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 298
    const/4 v0, 0x2

    .line 299
    .local v0, "status":I
    instance-of v1, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v1, :cond_0

    .line 300
    move-object v1, p0

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    .line 301
    .local v1, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result v0

    .line 303
    .end local v1    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return v0
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 282
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 499
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 116
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 117
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 118
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 119
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 121
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_1

    .line 123
    :cond_0
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 125
    .local v4, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    move v5, v6

    nop

    :cond_2
    return v5
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 134
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 135
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 136
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 138
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v6, :cond_0

    .line 140
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 142
    .local v6, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    move v4, v5

    nop

    :cond_1
    return v4
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 538
    const-string v0, "persist.vendor.radio.atel.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "property":Ljava/lang/String;
    const-string v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 2
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .line 332
    const/4 v0, -0x1

    .line 335
    .local v0, "configType":I
    if-ltz p0, :cond_1

    const/16 v1, 0x44

    if-gt p0, v1, :cond_1

    .line 337
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x36

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 346
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    :pswitch_0
    const/4 v0, 0x2

    .line 344
    nop

    .line 349
    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 167
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 167
    :goto_1
    return v0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2
    .param p0, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 175
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 600
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 601
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 596
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 560
    :cond_0
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 564
    :cond_1
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ","

    .line 565
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "*"

    .line 566
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    return v2

    .line 567
    :cond_3
    :goto_0
    return v0

    .line 553
    :cond_4
    :goto_1
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "Phone number invalid!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 149
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 183
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 73
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 74
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 75
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 76
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 78
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 80
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 82
    .local v4, "isHoldingPaused":Z
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v7, :cond_1

    .line 84
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 86
    .local v7, "isActivePaused":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    :goto_3
    return v5
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 100
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 101
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 102
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 103
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 105
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 107
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 105
    :goto_0
    return v4
.end method

.method public static isVoiceCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 55
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setBits(II)I
    .locals 1
    .param p0, "property"    # I
    .param p1, "mask"    # I

    .line 614
    or-int v0, p0, p1

    return v0
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 530
    const/4 v0, 0x0

    return v0

    .line 528
    :pswitch_0
    const/16 v0, 0x4b3

    return v0

    .line 526
    :pswitch_1
    const/16 v0, 0x4b2

    return v0

    .line 524
    :pswitch_2
    const/16 v0, 0x4b1

    return v0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 506
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 514
    const/4 v0, -0x1

    return v0

    .line 512
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 510
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 508
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
