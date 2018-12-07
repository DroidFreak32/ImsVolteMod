.class public Lorg/codeaurora/ims/ImsRadioUtils;
.super Ljava/lang/Object;
.source "ImsRadioUtils.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-string v0, "ImsRadioUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacilityTypeFromHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1432
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 1459
    return v0

    .line 1454
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 1452
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1450
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1448
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 1446
    :pswitch_4
    return v0

    .line 1444
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1442
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1440
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1456
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1438
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1436
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1434
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3
    .param p0, "inBlockReasonDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    .line 2349
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 2351
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2352
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regFailureReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 2356
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2357
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 2360
    :cond_1
    return-object v0
.end method

.method public static blockReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inBlockReason"    # I

    .line 2333
    packed-switch p0, :pswitch_data_0

    .line 2343
    const/4 v0, -0x1

    return v0

    .line 2341
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2339
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2337
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2335
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 3
    .param p0, "inBlockStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2314
    if-nez p0, :cond_0

    .line 2315
    const/4 v0, 0x0

    return-object v0

    .line 2318
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 2320
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2321
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 2324
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->hasBlockReasonDetails:Z

    if-eqz v1, :cond_2

    .line 2325
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 2329
    :cond_2
    return-object v0
.end method

.method public static buildCFStatusResponseFromHal(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1266
    .local p0, "inCfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    const/4 v0, 0x0

    .line 1268
    .local v0, "outCfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    .line 1269
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1270
    .local v2, "infoListSize":I
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1271
    new-array v3, v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1273
    .local v3, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_d

    .line 1274
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v0, v1

    .line 1275
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1277
    .local v4, "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_0

    .line 1278
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1281
    :cond_0
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v5, v6, :cond_1

    .line 1282
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1285
    :cond_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v5, v6, :cond_2

    .line 1286
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1289
    :cond_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eq v5, v6, :cond_3

    .line 1290
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1293
    :cond_3
    aget-object v5, v0, v1

    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1295
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_4

    .line 1296
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1299
    :cond_4
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    if-eqz v5, :cond_c

    .line 1300
    const-string v5, "responseQueryCallForward for Timer"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1301
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1302
    .local v5, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    new-instance v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v7, v3, v1

    .line 1303
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    if-eq v7, v6, :cond_5

    .line 1304
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1307
    :cond_5
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v7, v6, :cond_6

    .line 1308
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1311
    :cond_6
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v7, v6, :cond_7

    .line 1312
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1315
    :cond_7
    aget-object v7, v3, v1

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1317
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v7, v6, :cond_8

    .line 1318
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1321
    :cond_8
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v7, v6, :cond_9

    .line 1322
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1324
    :cond_9
    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1326
    .local v7, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v8, v6, :cond_a

    .line 1327
    aget-object v8, v3, v1

    iget v9, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v9, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1330
    :cond_a
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v8, v6, :cond_b

    .line 1331
    aget-object v6, v3, v1

    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1333
    :cond_b
    return-object v3

    .line 1273
    .end local v4    # "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .end local v5    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .end local v7    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v1    # "i":I
    .end local v2    # "infoListSize":I
    .end local v3    # "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_d
    goto :goto_1

    .line 1337
    :cond_e
    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1338
    const-string v1, "inCfInfoList is null."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1341
    :goto_1
    return-object v0
.end method

.method public static buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .locals 2
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I

    .line 1202
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1204
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    .line 1205
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1206
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    .line 1207
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    .line 1208
    if-eqz p2, :cond_0

    .line 1209
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1211
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 1212
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 1213
    iput p4, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1215
    return-object v0
.end method

.method public static buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1256
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->year:I

    .line 1257
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->month:I

    .line 1258
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->day:I

    .line 1259
    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    .line 1260
    iput p2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    .line 1261
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->second:I

    .line 1262
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->timezone:I

    .line 1263
    return-void
.end method

.method public static buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .locals 3
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildCallModifyInfo callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1604
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1605
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    .line 1607
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 1608
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    .line 1609
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 1613
    :cond_0
    const/16 v1, 0xd

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    .line 1615
    return-object v0
.end method

.method public static buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .locals 4
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 2055
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2057
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2058
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    .line 2061
    :cond_0
    if-eqz p0, :cond_2

    .line 2062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2063
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;-><init>()V

    .line 2064
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    const/4 v3, 0x2

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    .line 2065
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 2066
    aget-object v3, p0, v1

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 2068
    :cond_1
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2072
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 1672
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1674
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 1675
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 1676
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 1677
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 1678
    if-eqz p3, :cond_0

    .line 1679
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 1681
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    .line 1683
    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z

    .line 837
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 839
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    if-eqz p0, :cond_0

    .line 840
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    .line 842
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    .line 844
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    .line 846
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 847
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    .line 848
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 851
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    .line 852
    .local v2, "isConferenceUri":Z
    if-eqz v2, :cond_2

    .line 853
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    .line 854
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    .line 856
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 857
    .local v3, "isCallPull":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 858
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    .line 859
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    .line 862
    :cond_4
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    .line 863
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    .line 865
    if-eqz p2, :cond_5

    .line 866
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 867
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_1
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v4}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 871
    return-object v0
.end method

.method public static buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 6
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 164
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 165
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->createVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 166
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 167
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 170
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 171
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 174
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 175
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 178
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    if-eqz v1, :cond_3

    .line 179
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 182
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    if-eqz v1, :cond_4

    .line 183
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 186
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    if-eq v1, v2, :cond_5

    .line 187
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 190
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    if-eqz v1, :cond_6

    .line 191
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 194
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    if-eqz v1, :cond_7

    .line 195
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 198
    :cond_7
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 200
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 201
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 204
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    if-eqz v1, :cond_8

    .line 205
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 208
    :cond_8
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 211
    const/4 v1, 0x1

    .line 212
    iget-boolean v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    if-eqz v4, :cond_9

    .line 213
    const/4 v4, 0x2

    goto :goto_0

    .line 214
    :cond_9
    move v4, v3

    :goto_0
    or-int/2addr v1, v4

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 217
    :cond_a
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    if-eqz v1, :cond_b

    .line 218
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 221
    :cond_b
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 222
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v4, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 224
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 227
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    if-eqz v1, :cond_f

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "networkError":Ljava/lang/String;
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v3, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v3, :cond_c

    .line 231
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v1, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 234
    :cond_c
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 236
    .local v3, "failCause":I
    const/16 v4, 0x225

    if-eq v3, v4, :cond_e

    .line 237
    iget-object v4, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 238
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getImsReasonForCallFailCause(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 239
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    if-eq v4, v2, :cond_d

    .line 241
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v4, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    .line 243
    :cond_d
    const-string v2, "CallFailCauseResponse has no int error code!"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 246
    :goto_1
    iput v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 249
    if-eqz v1, :cond_f

    .line 250
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iput-object v1, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_2

    .line 253
    :cond_e
    const-string v2, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 258
    .end local v1    # "networkError":Ljava/lang/String;
    .end local v3    # "failCause":I
    :cond_f
    :goto_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 259
    return-object v0
.end method

.method public static buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2204
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2205
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->callId:I

    .line 2206
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ectTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->ectType:I

    .line 2207
    if-eqz p2, :cond_0

    .line 2208
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2210
    :cond_0
    if-lez p3, :cond_1

    .line 2211
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    goto :goto_0

    .line 2213
    :cond_1
    const v1, 0x7fffffff

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    .line 2215
    :goto_0
    return-object v0
.end method

.method public static buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    .locals 8
    .param p0, "connectionId"    # I
    .param p1, "userUri"    # Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;

    .line 918
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 924
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 925
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 927
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    .line 930
    :goto_0
    if-eqz p1, :cond_1

    .line 931
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 933
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    .line 934
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    .line 935
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    .line 936
    if-eq p4, v1, :cond_4

    .line 937
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 938
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 939
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason errorInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 941
    .local v5, "b":Ljava/lang/Byte;
    iget-object v6, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 940
    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 944
    :cond_2
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v2

    .line 945
    .local v2, "callFailCause":I
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iput v2, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 946
    sget-object v3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupWithReason callFailCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_3

    .line 950
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_3

    aget-byte v6, v3, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 951
    .local v6, "b":Ljava/lang/Byte;
    iget-object v7, v0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 950
    .end local v6    # "b":Ljava/lang/Byte;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 954
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 956
    .end local v2    # "callFailCause":I
    :cond_4
    return-object v0
.end method

.method public static buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    .locals 6
    .param p0, "messageRef"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "isRetry"    # Z
    .param p4, "pdu"    # [B

    .line 1220
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1222
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->messageRef:I

    .line 1223
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->format:Ljava/lang/String;

    .line 1224
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->shallRetry:Z

    .line 1225
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->smsc:Ljava/lang/String;

    .line 1226
    array-length v1, p4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p4, v2

    .line 1227
    .local v3, "a":B
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    .end local v3    # "a":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1229
    :cond_1
    return-object v0
.end method

.method public static buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    .locals 3
    .param p0, "srvType"    # I
    .param p1, "network"    # I
    .param p2, "enabled"    # I
    .param p3, "restrictCause"    # I

    .line 264
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;-><init>()V

    .line 265
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    .line 266
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    .line 267
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    .line 270
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 271
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    .line 272
    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    .line 273
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    .line 274
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-object v1
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p0, "imsRadioCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 109
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 110
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 112
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    goto :goto_0

    .line 115
    :cond_0
    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 117
    :goto_0
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 119
    nop

    .local v1, "i":I
    :goto_2
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    if-ge v0, v1, :cond_2

    .line 120
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 122
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static callDomainFromHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1061
    packed-switch p0, :pswitch_data_0

    .line 1073
    const/4 v0, 0x4

    return v0

    .line 1069
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1067
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1065
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1063
    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callDomainToHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 1078
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1089
    const/4 v0, 0x4

    return v0

    .line 1086
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1084
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1082
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1080
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static callModifyFailCauseFromHal(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 1638
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1666
    return v0

    .line 1664
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1662
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1660
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1658
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1656
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1654
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1652
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1650
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1648
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1646
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1644
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1642
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1640
    :pswitch_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    .line 1619
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1621
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    if-eqz v1, :cond_0

    .line 1622
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1625
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1626
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1629
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1630
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 1631
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFailCauseFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1634
    :cond_2
    return-object v0
.end method

.method private static callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "inCallState"    # I

    .line 1172
    packed-switch p0, :pswitch_data_0

    .line 1187
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1184
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1182
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1180
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1178
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1176
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1174
    :pswitch_5
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callTypeFromHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 777
    packed-switch p0, :pswitch_data_0

    .line 803
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 799
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 797
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 795
    :pswitch_3
    const/16 v0, 0x18

    return v0

    .line 793
    :pswitch_4
    const/16 v0, 0x17

    return v0

    .line 791
    :pswitch_5
    const/16 v0, 0x16

    return v0

    .line 789
    :pswitch_6
    const/16 v0, 0x15

    return v0

    .line 787
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 785
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 783
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 781
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 779
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static callTypeToHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 747
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 772
    const/16 v0, 0x9

    return v0

    .line 769
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 765
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 763
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 761
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 759
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 767
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 757
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 755
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 753
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 751
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 749
    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clipStatusFromHal(I)I
    .locals 1
    .param p0, "clipStatus"    # I

    .line 1579
    packed-switch p0, :pswitch_data_0

    .line 1586
    const/4 v0, 0x2

    return v0

    .line 1583
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1581
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static conferenceCallStateFromHal(I)I
    .locals 1
    .param p0, "conferenceCallState"    # I

    .line 1591
    packed-switch p0, :pswitch_data_0

    .line 1598
    const/4 v0, 0x2

    return v0

    .line 1595
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1593
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configFailureCauseFromHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2037
    packed-switch p0, :pswitch_data_0

    .line 2050
    const/4 v0, 0x5

    return v0

    .line 2047
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2045
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2043
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2041
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2039
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static configFailureCauseToHal(I)I
    .locals 1
    .param p0, "errorCause"    # I

    .line 2018
    packed-switch p0, :pswitch_data_0

    .line 2032
    const/4 v0, 0x6

    return v0

    .line 2030
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2028
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2026
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2024
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2022
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2020
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 1688
    if-nez p0, :cond_0

    .line 1689
    const/4 v0, 0x0

    return-object v0

    .line 1692
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1694
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1696
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1697
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1700
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1701
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1704
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1706
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1707
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1710
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1867
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2013
    :pswitch_0
    return v0

    .line 2011
    :pswitch_1
    const/16 v0, 0x48

    return v0

    .line 2009
    :pswitch_2
    const/16 v0, 0x47

    return v0

    .line 2007
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 2005
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 2003
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 2001
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1999
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1997
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1995
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1993
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1991
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1989
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1987
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1985
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1983
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1981
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1979
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1977
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1975
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1973
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1971
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1969
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1967
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1965
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1963
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1961
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1959
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1957
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1955
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1953
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1951
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1949
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1947
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1945
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1943
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1941
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1939
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1937
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1935
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1933
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1931
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1929
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1927
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1925
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1923
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1921
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1919
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1917
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1915
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1913
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1911
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1909
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1907
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1905
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1903
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1901
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1899
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1897
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1895
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1893
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1891
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1889
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1887
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1885
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1883
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1881
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1879
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1877
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1875
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1873
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1871
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1869
    :pswitch_48
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1714
    packed-switch p0, :pswitch_data_0

    .line 1862
    const/16 v0, 0x49

    return v0

    .line 1858
    :pswitch_0
    const/16 v0, 0x48

    return v0

    .line 1856
    :pswitch_1
    const/16 v0, 0x47

    return v0

    .line 1860
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 1854
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 1852
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 1850
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 1848
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1846
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1844
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1842
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1840
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1838
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1836
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1834
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1832
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1830
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1828
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1826
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1824
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1822
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1820
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1818
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1816
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1814
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1812
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1810
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1808
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1806
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1804
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1802
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1800
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1798
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1796
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1794
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1792
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1790
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1788
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1786
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1784
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1782
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1780
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1778
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1776
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1774
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1772
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1770
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1768
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1766
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1764
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1762
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1760
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1758
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1756
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1754
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1752
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1750
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1748
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1746
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1744
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1742
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1740
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1738
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1736
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1734
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1732
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1730
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1728
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1726
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1724
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1722
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1720
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1718
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1716
    :pswitch_48
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
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

.method private static copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)[",
            "Lorg/codeaurora/ims/ServiceStatus;"
        }
    .end annotation

    .line 514
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const/4 v0, 0x0

    .line 515
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-eqz p0, :cond_9

    .line 516
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 517
    .local v1, "listLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of SrvUpdates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 518
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 519
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 520
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 521
    .local v4, "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    if-eqz v4, :cond_8

    .line 522
    new-instance v5, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v5}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v5, v0, v3

    .line 523
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    if-eqz v5, :cond_0

    .line 524
    aget-object v5, v0, v3

    iget-boolean v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    iput-boolean v6, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 526
    :cond_0
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 527
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-lez v5, :cond_1

    .line 528
    aget-object v5, v0, v3

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v8

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_1

    .line 530
    :cond_1
    aget-object v5, v0, v3

    new-array v8, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 531
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v8}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v8, v5, v2

    .line 532
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v5, v5, v2

    .line 533
    .local v5, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v8, 0xe

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 535
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v8, v6, :cond_2

    .line 536
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v8

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 538
    :cond_2
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_3

    .line 539
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 542
    .end local v5    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_3
    :goto_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    if-eqz v5, :cond_4

    .line 544
    const-string v5, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 545
    aget-object v5, v0, v3

    iput v7, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 547
    :cond_4
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v5, v6, :cond_5

    .line 548
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 551
    :cond_5
    :goto_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    if-eq v8, v5, :cond_6

    .line 552
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    goto :goto_3

    .line 554
    :cond_6
    aget-object v5, v0, v3

    iput v2, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 556
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTT: copySrvStatusList rtt mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 557
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 558
    .local v5, "userdataLen":I
    if-lez v5, :cond_7

    .line 559
    aget-object v6, v0, v3

    new-array v7, v5, [B

    iput-object v7, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 560
    move v6, v2

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_7

    .line 561
    aget-object v7, v0, v3

    iget-object v7, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v7, v6

    .line 560
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 564
    .end local v5    # "userdataLen":I
    .end local v6    # "j":I
    :cond_7
    goto :goto_5

    .line 565
    :cond_8
    const-string v5, "Null service status in list"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 519
    .end local v4    # "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 569
    .end local v1    # "listLen":I
    .end local v3    # "i":I
    :cond_9
    return-object v0
.end method

.method private static ectTypeToHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2219
    packed-switch p0, :pswitch_data_0

    .line 2227
    const/4 v0, 0x3

    return v0

    .line 2225
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2223
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2221
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static extraTypeFromHal(I)I
    .locals 1
    .param p0, "extraHo"    # I

    .line 1192
    if-eqz p0, :cond_0

    .line 1196
    const/4 v0, -0x1

    return v0

    .line 1194
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static facilityTypeToHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1464
    packed-switch p0, :pswitch_data_0

    .line 1490
    const/16 v0, 0xc

    return v0

    .line 1488
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 1486
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 1484
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 1482
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1480
    :pswitch_4
    const/4 v0, 0x7

    return v0

    .line 1478
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1476
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 1474
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1472
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 1470
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1468
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 1466
    :pswitch_b
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;
    .locals 1
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .line 2235
    new-instance v0, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    return-object v0
.end method

.method public static getByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1418
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 1419
    const/4 v0, 0x0

    return-object v0

    .line 1422
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1424
    .local v0, "outArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1425
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1428
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 4
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 395
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 397
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 398
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 401
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 402
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 405
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 406
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 410
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_3

    .line 411
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 414
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 418
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 420
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 421
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 424
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 425
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 428
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 429
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 432
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Details = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 434
    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 960
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 977
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getCallFailCauseForImsReason(I)I

    move-result v0

    goto :goto_0

    .line 974
    :pswitch_0
    const/16 v0, 0x1f8

    .line 975
    .local v0, "failCause":I
    goto :goto_0

    .line 971
    .end local v0    # "failCause":I
    :pswitch_1
    const/16 v0, 0x1f7

    .line 972
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 965
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f6

    .line 966
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 968
    .end local v0    # "failCause":I
    :cond_0
    const/16 v0, 0x1f5

    .line 969
    .restart local v0    # "failCause":I
    nop

    .line 977
    :goto_0
    nop

    .line 979
    return v0

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 2619
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    .line 2621
    .local v0, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    if-nez p4, :cond_0

    .line 2622
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    const-string v2, "Null Address!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2623
    return-object v0

    .line 2626
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 2627
    .local v1, "info":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2628
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    .line 2630
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 2631
    if-eqz v1, :cond_2

    .line 2632
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    .line 2634
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    .line 2635
    if-eqz v1, :cond_3

    .line 2636
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    .line 2638
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    .line 2639
    if-eqz v1, :cond_4

    .line 2640
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2642
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 2643
    if-eqz v1, :cond_5

    .line 2644
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2646
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2647
    if-eqz v1, :cond_6

    .line 2648
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->street:Ljava/lang/String;

    .line 2650
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    .line 2651
    if-eqz v1, :cond_7

    .line 2652
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2654
    :cond_7
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",houseNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2655
    return-object v0
.end method

.method private static getImsReasonForCallFailCause(I)I
    .locals 2
    .param p0, "failCause"    # I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call fail cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 282
    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x226

    if-eq p0, v0, :cond_0

    const/16 v0, 0x152

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v1, 0x150

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    .line 389
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->getImsReasonForCallFailCause(I)I

    move-result v0

    return v0

    .line 376
    :pswitch_0
    const/16 v0, 0xfb

    return v0

    .line 374
    :pswitch_1
    const/16 v0, 0xfa

    return v0

    .line 380
    :pswitch_2
    const/16 v0, 0xf9

    return v0

    .line 378
    :pswitch_3
    const/16 v0, 0xf8

    return v0

    .line 372
    :pswitch_4
    const/16 v0, 0xf7

    return v0

    .line 336
    :pswitch_5
    const/16 v0, 0x194

    return v0

    .line 334
    :pswitch_6
    const/16 v0, 0x193

    return v0

    .line 332
    :pswitch_7
    const/16 v0, 0x192

    return v0

    .line 330
    :pswitch_8
    const/16 v0, 0x191

    return v0

    .line 323
    :pswitch_9
    const/16 v0, 0x16a

    return v0

    .line 321
    :pswitch_a
    const/16 v0, 0x169

    return v0

    .line 319
    :pswitch_b
    const/16 v0, 0x161

    return v0

    .line 317
    :pswitch_c
    const/16 v0, 0x160

    return v0

    .line 315
    :pswitch_d
    const/16 v0, 0x162

    return v0

    .line 309
    :pswitch_e
    const/16 v0, 0x15f

    return v0

    .line 307
    :pswitch_f
    const/16 v0, 0x155

    return v0

    .line 305
    :pswitch_10
    const/16 v0, 0x154

    return v0

    .line 303
    :pswitch_11
    const/16 v0, 0x153

    return v0

    .line 301
    :pswitch_12
    return v0

    .line 299
    :pswitch_13
    const/16 v0, 0x151

    return v0

    .line 297
    :pswitch_14
    return v1

    .line 295
    :pswitch_15
    const/16 v0, 0x14f

    return v0

    .line 293
    :pswitch_16
    const/16 v0, 0x14e

    return v0

    .line 291
    :pswitch_17
    const/16 v0, 0x14d

    return v0

    .line 289
    :pswitch_18
    const/16 v0, 0x14c

    return v0

    .line 287
    :pswitch_19
    const/16 v0, 0x14b

    return v0

    .line 285
    :pswitch_1a
    const/16 v0, 0x141

    return v0

    .line 364
    :pswitch_1b
    const/16 v0, 0x5e8

    return v0

    .line 362
    :pswitch_1c
    const/16 v0, 0x3f8

    return v0

    .line 360
    :pswitch_1d
    const/16 v0, 0x3f7

    return v0

    .line 344
    :pswitch_1e
    const/16 v0, 0x3f6

    return v0

    .line 342
    :pswitch_1f
    return v1

    .line 350
    :pswitch_20
    const/16 v0, 0x92

    return v0

    .line 352
    :pswitch_21
    const/16 v0, 0x95

    return v0

    .line 358
    :pswitch_22
    const/16 v0, 0x16c

    return v0

    .line 356
    :pswitch_23
    const/16 v0, 0x16b

    return v0

    .line 370
    :pswitch_24
    const/16 v0, 0xf6

    return v0

    .line 366
    :pswitch_25
    const/16 v0, 0xf5

    return v0

    .line 368
    :pswitch_26
    const/16 v0, 0xf4

    return v0

    .line 348
    :pswitch_27
    const/16 v0, 0xf3

    return v0

    .line 346
    :pswitch_28
    const/16 v0, 0xf1

    return v0

    .line 340
    :pswitch_29
    return v0

    .line 338
    :pswitch_2a
    const/16 v0, 0x1f5

    return v0

    .line 326
    :cond_0
    const/16 v0, 0x5ea

    return v0

    .line 354
    :cond_1
    const/16 v0, 0x1f9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f9
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1fe
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
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIpPresentation(I)I
    .locals 1
    .param p0, "clirMode"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 139
    const/4 v0, 0x3

    return v0

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "isConferenceUri":Z
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 159
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private static getSmsPdu(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 438
    .local p0, "hidlPdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 440
    .local v0, "pdu":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUTInterfaceCFReasonFromCommandsInterfaceCFReason(I)I
    .locals 1
    .param p0, "commandsInterfaceCFReason"    # I

    .line 2500
    packed-switch p0, :pswitch_data_0

    .line 2516
    const/4 v0, -0x1

    return v0

    .line 2512
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2510
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2508
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2506
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2504
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2502
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static handleSrvStatus(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1110
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    if-nez p0, :cond_0

    .line 1111
    const-string v0, "inList is null."

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1112
    const/4 v0, 0x0

    return-object v0

    .line 1115
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1116
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1118
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method public static handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3
    .param p0, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 1123
    if-nez p0, :cond_0

    .line 1124
    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1129
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1130
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1133
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 1134
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1137
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    if-eq v1, v2, :cond_3

    .line 1138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1141
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hasHoExtra:Z

    if-eqz v1, :cond_4

    .line 1142
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->extraTypeFromHal(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->extraInfo:Ljava/util/ArrayList;

    .line 1143
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->getByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 1142
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1146
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1149
    return-object v0
.end method

.method public static handoverTypeFromHal(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1153
    packed-switch p0, :pswitch_data_0

    .line 1167
    const/4 v0, -0x1

    return v0

    .line 1163
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1165
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1161
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1159
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1157
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1155
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1233
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1239
    return v0

    .line 1237
    :pswitch_0
    return v0

    .line 1235
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 3
    .param p0, "messageRef"    # I
    .param p1, "smsStatusResult"    # I
    .param p2, "hidlReason"    # I

    .line 490
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result v0

    .line 491
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result v1

    .line 493
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v2
.end method

.method public static imsSmsStatusReportStatusToHidl(I)I
    .locals 1
    .param p0, "report"    # I

    .line 1244
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1250
    return v0

    .line 1248
    :pswitch_0
    return v0

    .line 1246
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3
    .param p0, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 2240
    if-nez p0, :cond_0

    .line 2241
    const/4 v0, 0x0

    return-object v0

    .line 2244
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 2245
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2246
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 2249
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2250
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 2249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2253
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 4
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 509
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkVerstat(I)I

    move-result v0

    .line 510
    .local v0, "verstat":I
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static ipPresentationFromHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1537
    packed-switch p0, :pswitch_data_0

    .line 1544
    const/4 v0, 0x2

    return v0

    .line 1541
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1539
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ipPresentationToHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 808
    packed-switch p0, :pswitch_data_0

    .line 816
    const/4 v0, 0x3

    return v0

    .line 814
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 812
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 810
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1105
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtils;

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    return-void
.end method

.method private static mapHidlToFrameworkResponseReason(I)I
    .locals 1
    .param p0, "hidlReason"    # I

    .line 466
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 484
    return v0

    .line 482
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 480
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 478
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 476
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 474
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 472
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 470
    :pswitch_6
    return v0

    .line 468
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static mapHidlToFrameworkResponseResult(I)I
    .locals 1
    .param p0, "hidlResult"    # I

    .line 451
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 461
    return v0

    .line 459
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 457
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 455
    :pswitch_2
    return v0

    .line 453
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapHidlToFrameworkVerstat(I)I
    .locals 1
    .param p0, "verstat"    # I

    .line 497
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 505
    return v0

    .line 503
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 501
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 499
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapRadioTechToHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1012
    packed-switch p0, :pswitch_data_0

    .line 1056
    const/16 v0, 0x15

    return v0

    .line 1054
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 1052
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 1050
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 1048
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 1046
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 1044
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 1042
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 1040
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 1038
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 1036
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1034
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 1032
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 1030
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 1028
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 1026
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 1024
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1022
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 1020
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 1018
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 1016
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 1014
    :pswitch_14
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method private static messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 3
    .param p0, "details"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2166
    if-nez p0, :cond_0

    .line 2167
    const/4 v0, 0x0

    return-object v0

    .line 2170
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 2172
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2173
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 2176
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2177
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 2180
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2181
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 2184
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2185
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 2188
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 2189
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messagePriorityFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 2192
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2193
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 2196
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 2197
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 2199
    :cond_7
    return-object v0
.end method

.method public static messagePriorityFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2096
    packed-switch p0, :pswitch_data_0

    .line 2105
    const/4 v0, -0x1

    return v0

    .line 2102
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2100
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2098
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3
    .param p0, "summary"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2137
    if-nez p0, :cond_0

    .line 2138
    const/4 v0, 0x0

    return-object v0

    .line 2141
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 2143
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2144
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 2147
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2148
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 2151
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 2152
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 2155
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 2156
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 2159
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 2160
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 2162
    :cond_5
    return-object v0
.end method

.method public static messageTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2076
    packed-switch p0, :pswitch_data_0

    .line 2091
    const/4 v0, -0x1

    return v0

    .line 2088
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2086
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2084
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2082
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2080
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2078
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 5
    .param p0, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 2111
    if-nez p0, :cond_0

    .line 2112
    const/4 v0, 0x0

    return-object v0

    .line 2115
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 2116
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal summaryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 2117
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2116
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    .line 2119
    .local v2, "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    if-eqz v2, :cond_1

    .line 2120
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2122
    .end local v2    # "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    :cond_1
    goto :goto_0

    .line 2123
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2124
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 2126
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal detailsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 2127
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2126
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 2129
    .local v2, "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    if-eqz v2, :cond_4

    .line 2130
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2132
    .end local v2    # "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    :cond_4
    goto :goto_1

    .line 2133
    :cond_5
    return-object v0
.end method

.method public static migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .locals 2
    .param p0, "addressInfo"    # Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    .line 2660
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    .line 2661
    .local v0, "addressInfoV10":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->city:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->city:Ljava/lang/String;

    .line 2662
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->state:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->state:Ljava/lang/String;

    .line 2663
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->country:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->country:Ljava/lang/String;

    .line 2664
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2665
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->countryCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2666
    return-object v0
.end method

.method private static migrateCallFailCauseToV11(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2523
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 2524
    goto :goto_0

    .line 2525
    :cond_0
    nop

    .line 2523
    move v0, p0

    :goto_0
    return v0
.end method

.method private static migrateCallFailCausefromV13(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 2697
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->isFailCauseIntroducedInV13(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2698
    const/16 v0, 0x224

    return v0

    .line 2701
    :cond_0
    return p0
.end method

.method private static migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .locals 5
    .param p0, "callInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2531
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;-><init>()V

    .line 2534
    .local v0, "callInfoV11":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    .line 2535
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    .line 2536
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    .line 2537
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    .line 2538
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    .line 2539
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    .line 2540
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    .line 2541
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    .line 2542
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    .line 2543
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    .line 2544
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    .line 2545
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    .line 2546
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    .line 2547
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    .line 2548
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    .line 2549
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    .line 2551
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    .line 2552
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 2553
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 2554
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 2556
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2557
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2556
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2560
    .end local v2    # "i":I
    :cond_0
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2561
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2560
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2564
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2565
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2564
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2568
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 2569
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 2570
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 2571
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 2572
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 2574
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    .line 2575
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2576
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCauseToV11(I)I

    move-result v3

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 2578
    nop

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2579
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2582
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2583
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2584
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2585
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2588
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    .line 2589
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    .line 2590
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    .line 2591
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    .line 2592
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    .line 2593
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    .line 2594
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    .line 2596
    return-object v0
.end method

.method public static migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;"
        }
    .end annotation

    .line 2603
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    if-nez p0, :cond_0

    .line 2604
    const/4 v0, 0x0

    return-object v0

    .line 2606
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2609
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2610
    .local v2, "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    move-result-object v3

    .line 2611
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    .end local v2    # "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    goto :goto_0

    .line 2613
    :cond_1
    return-object v0
.end method

.method public static migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    .line 876
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 878
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->address:Ljava/lang/String;

    .line 879
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->clirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->clirMode:I

    .line 880
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->presentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->presentation:I

    .line 881
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasCallDetails:Z

    .line 883
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 884
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 885
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 887
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 888
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 891
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 892
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 895
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 896
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 899
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 900
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 901
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 902
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 903
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 905
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsConferenceUri:Z

    .line 906
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isConferenceUri:Z

    .line 907
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsCallPull:Z

    .line 908
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isCallPull:Z

    .line 909
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsEncrypted:Z

    .line 910
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isEncrypted:Z

    .line 912
    return-object v0
.end method

.method public static migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    .line 2671
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 2672
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connIndex:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    .line 2673
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasMultiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasMultiParty:Z

    .line 2674
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->multiParty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->multiParty:Z

    .line 2675
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->connUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 2676
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->conf_id:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->conf_id:I

    .line 2677
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->hasFailCauseResponse:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 2678
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCausefromV13(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2681
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 2682
    .local v2, "errorInfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    .end local v2    # "errorInfo":Ljava/lang/Byte;
    goto :goto_0

    .line 2685
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2686
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2687
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2689
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2691
    return-object v0
.end method

.method private static notificationTypeFromHal(I)I
    .locals 1
    .param p0, "inNotificationType"    # I

    .line 1406
    packed-switch p0, :pswitch_data_0

    .line 1412
    const v0, 0x7fffffff

    return v0

    .line 1410
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1408
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static operationFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2257
    packed-switch p0, :pswitch_data_0

    .line 2263
    const/4 v0, -0x1

    return v0

    .line 2261
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2259
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 4
    .param p0, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 2270
    if-nez p0, :cond_0

    .line 2271
    const/4 v0, 0x0

    return-object v0

    .line 2274
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 2276
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2277
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 2280
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 2281
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->operationFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 2284
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 2286
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 2287
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 2290
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eqz v1, :cond_4

    .line 2291
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 2294
    :cond_4
    return-object v0
.end method

.method public static radioTechFromHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 698
    packed-switch p0, :pswitch_data_0

    .line 742
    const/16 v0, 0x14

    return v0

    .line 740
    :pswitch_0
    const/16 v0, 0x13

    return v0

    .line 738
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 736
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 734
    :pswitch_3
    const/16 v0, 0x10

    return v0

    .line 732
    :pswitch_4
    const/16 v0, 0xf

    return v0

    .line 730
    :pswitch_5
    const/16 v0, 0xe

    return v0

    .line 728
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 726
    :pswitch_7
    const/16 v0, 0xc

    return v0

    .line 724
    :pswitch_8
    const/16 v0, 0xb

    return v0

    .line 722
    :pswitch_9
    const/16 v0, 0xa

    return v0

    .line 720
    :pswitch_a
    const/16 v0, 0x9

    return v0

    .line 718
    :pswitch_b
    const/16 v0, 0x8

    return v0

    .line 716
    :pswitch_c
    const/4 v0, 0x7

    return v0

    .line 714
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 712
    :pswitch_e
    const/4 v0, 0x5

    return v0

    .line 710
    :pswitch_f
    const/4 v0, 0x4

    return v0

    .line 708
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 706
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 704
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 702
    :pswitch_13
    const/4 v0, 0x0

    return v0

    .line 700
    :pswitch_14
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static regFailureReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inRegFailureReasonType"    # I

    .line 2364
    packed-switch p0, :pswitch_data_0

    .line 2386
    const/4 v0, -0x1

    return v0

    .line 2382
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2380
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2378
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2376
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2374
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2372
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2370
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2368
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2366
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2384
    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static regStateFromHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 672
    packed-switch p0, :pswitch_data_0

    .line 680
    const/4 v0, -0x1

    return v0

    .line 676
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 678
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 674
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static regStateToHal(I)I
    .locals 1
    .param p0, "state"    # I

    .line 685
    packed-switch p0, :pswitch_data_0

    .line 693
    const/4 v0, 0x3

    return v0

    .line 691
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 689
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 687
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 2
    .param p0, "hasBlockStatusOnWwan"    # Z
    .param p1, "blockStatusOnWwan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .param p2, "hasBlockStatusOnWlan"    # Z
    .param p3, "blockStatusOnWlan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 2300
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 2302
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    if-eqz p0, :cond_0

    .line 2303
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2306
    :cond_0
    if-eqz p2, :cond_1

    .line 2307
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2310
    :cond_1
    return-object v0
.end method

.method public static registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p0, :cond_3

    .line 634
    new-instance v1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    move-object v0, v1

    .line 635
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 636
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 639
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 640
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 643
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 645
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 646
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 649
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 652
    :cond_3
    return-object v0
.end method

.method public static requestTypeFromRILRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2463
    packed-switch p0, :pswitch_data_0

    .line 2476
    const/4 v0, -0x1

    return v0

    .line 2473
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2471
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2469
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2467
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2465
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ringbackToneFromHal(I)I
    .locals 1
    .param p0, "tone"    # I

    .line 1094
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1100
    const/4 v0, 0x0

    return v0

    .line 1096
    :cond_0
    return v0
.end method

.method public static serviceClassProvisionStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceProvisionStatus"    # I

    .line 1356
    packed-switch p0, :pswitch_data_0

    .line 1362
    const/4 v0, 0x2

    return v0

    .line 1360
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1358
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceClassStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 1345
    packed-switch p0, :pswitch_data_0

    .line 1351
    const/4 v0, -0x1

    return v0

    .line 1347
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1349
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serviceTypeFromRILServiceType(I)I
    .locals 1
    .param p0, "serviceType"    # I

    .line 2410
    packed-switch p0, :pswitch_data_0

    .line 2459
    const/4 v0, -0x1

    return v0

    .line 2456
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2454
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2452
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2450
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2448
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2446
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2444
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2442
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2440
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2438
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2436
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2434
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2432
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2430
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2428
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2426
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2424
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2422
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2420
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2418
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2416
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2414
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2412
    :pswitch_16
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 3
    .param p0, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 821
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 822
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 823
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 825
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 826
    return-object v0
.end method

.method public static statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3
    .param p0, "inStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 600
    const/4 v0, 0x0

    .line 602
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 603
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 604
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 605
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 608
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 609
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 612
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 613
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 616
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 617
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 619
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 621
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 622
    const-class v1, Lorg/codeaurora/ims/ImsRadioUtils;

    const-string v2, "Registered not sent"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 447
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public static statusTypeFromHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 998
    packed-switch p0, :pswitch_data_0

    .line 1007
    const/4 v0, 0x3

    return v0

    .line 1004
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1002
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1000
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static statusTypeToHal(I)I
    .locals 1
    .param p0, "status"    # I

    .line 983
    packed-switch p0, :pswitch_data_0

    .line 993
    const/4 v0, 0x4

    return v0

    .line 991
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 989
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 987
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 985
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3
    .param p0, "inNotification"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 1368
    if-nez p0, :cond_0

    .line 1369
    const/4 v0, 0x0

    return-object v0

    .line 1372
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 1374
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1375
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->notificationTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 1379
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1380
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 1383
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 1384
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 1387
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 1388
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 1391
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 1392
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 1395
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 1398
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 1399
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 1402
    :cond_6
    return-object v0
.end method

.method public static suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 9
    .param p0, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 1496
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 1498
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 1500
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    .line 1501
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 1500
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 1503
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1504
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->FacilityTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 1507
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 1508
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1509
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 1512
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 1513
    .local v2, "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1514
    goto :goto_0

    .line 1516
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 1519
    .local v3, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1520
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    .line 1521
    .local v5, "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 1524
    .local v6, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v3, v6}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 1525
    .end local v5    # "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    .end local v6    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    goto :goto_1

    .line 1527
    :cond_3
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 1528
    .end local v2    # "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v3    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    goto :goto_0

    .line 1530
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 1531
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1533
    :cond_5
    return-object v0
.end method

.method public static teleserviceTypeFromRILTeleserviceType(I)I
    .locals 1
    .param p0, "teleservice"    # I

    .line 2480
    packed-switch p0, :pswitch_data_0

    .line 2495
    const/4 v0, -0x1

    return v0

    .line 2492
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2490
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2488
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2486
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2484
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2482
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .line 656
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 667
    const/4 v0, 0x0

    return v0

    .line 660
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 658
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 664
    :cond_0
    return v0

    .line 662
    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ttyModeFromHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1549
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1559
    return v0

    .line 1557
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1555
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1553
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1551
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ttyModeToHal(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 1564
    packed-switch p0, :pswitch_data_0

    .line 1574
    const/4 v0, 0x4

    return v0

    .line 1570
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1568
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1566
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1572
    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 5
    .param p0, "info"    # Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 581
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 583
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 586
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 587
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 588
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restrictCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " registered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    iget v4, v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method public static voWiFiCallQualityFromHal(I)Ljava/lang/Object;
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2391
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2392
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2403
    aput v2, v1, v2

    goto :goto_0

    .line 2400
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2401
    goto :goto_0

    .line 2397
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2398
    goto :goto_0

    .line 2394
    :pswitch_2
    aput v0, v1, v2

    .line 2395
    nop

    .line 2406
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
