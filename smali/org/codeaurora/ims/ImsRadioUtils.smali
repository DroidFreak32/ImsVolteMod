.class public Lorg/codeaurora/ims/ImsRadioUtils;
.super Ljava/lang/Object;
.source "ImsRadioUtils.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-string v0, "ImsRadioUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FacilityTypeFromHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1355
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 1382
    return v0

    .line 1377
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 1375
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1373
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1371
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 1369
    :pswitch_4
    return v0

    .line 1367
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1365
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1363
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1379
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1361
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1359
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1357
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

    .line 2268
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 2270
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 2271
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regFailureReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 2275
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2276
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 2279
    :cond_1
    return-object v0
.end method

.method public static blockReasonTypeFromHal(I)I
    .locals 1
    .param p0, "inBlockReason"    # I

    .line 2252
    packed-switch p0, :pswitch_data_0

    .line 2262
    const/4 v0, -0x1

    return v0

    .line 2260
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2258
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2256
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2254
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

    .line 2233
    if-nez p0, :cond_0

    .line 2234
    const/4 v0, 0x0

    return-object v0

    .line 2237
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 2239
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2240
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 2243
    :cond_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->hasBlockReasonDetails:Z

    if-eqz v1, :cond_2

    .line 2244
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockReasonDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 2248
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

    .line 1200
    .local p0, "inCfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    const/4 v0, 0x0

    .line 1202
    .local v0, "outCfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v1, 0x0

    if-eqz p0, :cond_e

    .line 1203
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1204
    .local v2, "infoListSize":I
    new-array v0, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1205
    new-array v3, v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1207
    .local v3, "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_d

    .line 1208
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v4, v0, v1

    .line 1209
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 1211
    .local v4, "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_0

    .line 1212
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1215
    :cond_0
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v5, v6, :cond_1

    .line 1216
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1219
    :cond_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v5, v6, :cond_2

    .line 1220
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1223
    :cond_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    if-eq v5, v6, :cond_3

    .line 1224
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1227
    :cond_3
    aget-object v5, v0, v1

    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1229
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_4

    .line 1230
    aget-object v5, v0, v1

    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    iput v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1233
    :cond_4
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    if-eqz v5, :cond_c

    .line 1234
    const-string v5, "responseQueryCallForward for Timer"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1235
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1236
    .local v5, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    new-instance v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v7}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v7, v3, v1

    .line 1237
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    if-eq v7, v6, :cond_5

    .line 1238
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1241
    :cond_5
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    if-eq v7, v6, :cond_6

    .line 1242
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1245
    :cond_6
    iget v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    if-eq v7, v6, :cond_7

    .line 1246
    aget-object v7, v3, v1

    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1249
    :cond_7
    aget-object v7, v3, v1

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1251
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v7, v6, :cond_8

    .line 1252
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1255
    :cond_8
    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v7, v6, :cond_9

    .line 1256
    aget-object v7, v3, v1

    iget v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1258
    :cond_9
    iget-object v7, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    .line 1260
    .local v7, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    if-eq v8, v6, :cond_a

    .line 1261
    aget-object v8, v3, v1

    iget v9, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    iput v9, v8, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1264
    :cond_a
    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    if-eq v8, v6, :cond_b

    .line 1265
    aget-object v6, v3, v1

    iget v8, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    iput v8, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1267
    :cond_b
    return-object v3

    .line 1207
    .end local v4    # "inCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    .end local v5    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .end local v7    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v1    # "i":I
    .end local v2    # "infoListSize":I
    .end local v3    # "timerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_d
    goto :goto_1

    .line 1271
    :cond_e
    new-array v0, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1272
    const-string v1, "inCfInfoList is null."

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1275
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

    .line 1136
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1138
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    .line 1139
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 1140
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    .line 1141
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    .line 1142
    if-eqz p2, :cond_0

    .line 1143
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 1145
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 1146
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 1147
    iput p4, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    .line 1149
    return-object v0
.end method

.method public static buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1190
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->year:I

    .line 1191
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->month:I

    .line 1192
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->day:I

    .line 1193
    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->hour:I

    .line 1194
    iput p2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->minute:I

    .line 1195
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->second:I

    .line 1196
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;->timezone:I

    .line 1197
    return-void
.end method

.method public static buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .locals 3
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildCallModifyInfo callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1523
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1524
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    .line 1526
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_0

    .line 1527
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    .line 1528
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 1532
    :cond_0
    const/16 v1, 0xd

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    .line 1534
    return-object v0
.end method

.method public static buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .locals 4
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 1974
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1976
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 1977
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    .line 1980
    :cond_0
    if-eqz p0, :cond_2

    .line 1981
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1982
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;-><init>()V

    .line 1983
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    const/4 v3, 0x2

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    .line 1984
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 1985
    aget-object v3, p0, v1

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 1987
    :cond_1
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1991
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

    .line 1591
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1593
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    .line 1594
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    .line 1595
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    .line 1596
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    .line 1597
    if-eqz p3, :cond_0

    .line 1598
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 1600
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    .line 1602
    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z

    .line 820
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 821
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    if-eqz p0, :cond_0

    .line 822
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->address:Ljava/lang/String;

    .line 824
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->clirMode:I

    .line 826
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->presentation:I

    .line 828
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 829
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasCallDetails:Z

    .line 830
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 833
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    .line 834
    .local v2, "isConferenceUri":Z
    if-eqz v2, :cond_2

    .line 835
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isConferenceUri:Z

    .line 836
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsConferenceUri:Z

    .line 838
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 839
    .local v3, "isCallPull":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 840
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isCallPull:Z

    .line 841
    iput-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsCallPull:Z

    .line 844
    :cond_4
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->hasIsEncrypted:Z

    .line 845
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->isEncrypted:Z

    .line 846
    return-object v0
.end method

.method public static buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 6
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    .line 160
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 161
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 162
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 165
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 166
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 169
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 170
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 173
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    if-eqz v1, :cond_3

    .line 174
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 177
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    if-eqz v1, :cond_4

    .line 178
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 181
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    if-eq v1, v2, :cond_5

    .line 182
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 185
    :cond_5
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    if-eqz v1, :cond_6

    .line 186
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 189
    :cond_6
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    if-eqz v1, :cond_7

    .line 190
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 193
    :cond_7
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 195
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 196
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 199
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    if-eqz v1, :cond_8

    .line 200
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 203
    :cond_8
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 205
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 206
    const/4 v1, 0x1

    .line 207
    iget-boolean v4, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    if-eqz v4, :cond_9

    .line 208
    const/4 v4, 0x2

    goto :goto_0

    .line 209
    :cond_9
    move v4, v3

    :goto_0
    or-int/2addr v1, v4

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 212
    :cond_a
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    if-eqz v1, :cond_b

    .line 213
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 216
    :cond_b
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 217
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v4, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 219
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v3, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 222
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    if-eqz v1, :cond_f

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "networkError":Ljava/lang/String;
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-boolean v3, v3, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v3, :cond_c

    .line 226
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v1, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 229
    :cond_c
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 231
    .local v3, "failCause":I
    const/16 v4, 0x225

    if-eq v3, v4, :cond_e

    .line 232
    iget-object v4, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 233
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->getImsReasonForCallFailCause(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 234
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-boolean v4, v4, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    if-eq v4, v2, :cond_d

    .line 236
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v4, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    .line 238
    :cond_d
    const-string v2, "CallFailCauseResponse has no int error code!"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 241
    :goto_1
    iput v3, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 244
    if-eqz v1, :cond_f

    .line 245
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iput-object v1, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    goto :goto_2

    .line 248
    :cond_e
    const-string v2, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 252
    .end local v1    # "networkError":Ljava/lang/String;
    .end local v3    # "failCause":I
    :cond_f
    :goto_2
    return-object v0
.end method

.method public static buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2123
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2124
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->callId:I

    .line 2125
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ectTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->ectType:I

    .line 2126
    if-eqz p2, :cond_0

    .line 2127
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2129
    :cond_0
    if-lez p3, :cond_1

    .line 2130
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    goto :goto_0

    .line 2132
    :cond_1
    const v1, 0x7fffffff

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->targetCallId:I

    .line 2134
    :goto_0
    return-object v0
.end method

.method public static buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    .locals 8
    .param p0, "connectionId"    # I
    .param p1, "userUri"    # Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;

    .line 851
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 856
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 857
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 859
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connIndex:I

    .line 862
    :goto_0
    if-eqz p1, :cond_1

    .line 863
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 865
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasMultiParty:Z

    .line 866
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->multiParty:Z

    .line 867
    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->conf_id:I

    .line 868
    if-eq p4, v1, :cond_4

    .line 869
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->hasFailCauseResponse:Z

    .line 870
    const/4 v1, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 871
    sget-object v2, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason errorInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v2, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 873
    .local v5, "b":Ljava/lang/Byte;
    iget-object v6, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v6, v6, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 872
    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 876
    :cond_2
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallFailCauseForImsReason(I)I

    move-result v2

    .line 877
    .local v2, "callFailCause":I
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iput v2, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 878
    sget-object v3, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupWithReason callFailCause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    const/16 v3, 0x1fd

    if-ne v2, v3, :cond_3

    .line 882
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

    .line 883
    .local v6, "b":Ljava/lang/Byte;
    iget-object v7, v0, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 882
    .end local v6    # "b":Ljava/lang/Byte;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 886
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

    .line 888
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

    .line 1154
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1156
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->messageRef:I

    .line 1157
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->format:Ljava/lang/String;

    .line 1158
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->shallRetry:Z

    .line 1159
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->smsc:Ljava/lang/String;

    .line 1160
    array-length v1, p4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-byte v3, p4, v2

    .line 1161
    .local v3, "a":B
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->pdu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v3    # "a":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1163
    :cond_1
    return-object v0
.end method

.method public static buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    .locals 3
    .param p0, "srvType"    # I
    .param p1, "network"    # I
    .param p2, "enabled"    # I
    .param p3, "restrictCause"    # I

    .line 257
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;-><init>()V

    .line 258
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    .line 259
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    .line 260
    iput p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    .line 263
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 264
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    .line 265
    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    .line 266
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    .line 267
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    return-object v1
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p0, "imsRadioCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 105
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 106
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 108
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    goto :goto_0

    .line 111
    :cond_0
    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 113
    :goto_0
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 115
    nop

    .local v1, "i":I
    :goto_2
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    if-ge v0, v1, :cond_2

    .line 116
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 118
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static callDomainFromHal(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 995
    packed-switch p0, :pswitch_data_0

    .line 1007
    const/4 v0, 0x4

    return v0

    .line 1003
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1001
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 999
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 997
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

    .line 1012
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1023
    const/4 v0, 0x4

    return v0

    .line 1020
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1018
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1016
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1014
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

    .line 1557
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1585
    return v0

    .line 1583
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1581
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1579
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1577
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1575
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1573
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1571
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1569
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1567
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1565
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1563
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1561
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1559
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

    .line 1538
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1540
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->hasCallDetails:Z

    if-eqz v1, :cond_0

    .line 1541
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1544
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1545
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1548
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1549
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 1550
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFailCauseFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1553
    :cond_2
    return-object v0
.end method

.method private static callStateFromHal(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "inCallState"    # I

    .line 1106
    packed-switch p0, :pswitch_data_0

    .line 1121
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1118
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1116
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1114
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1112
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1110
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1108
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

    .line 761
    packed-switch p0, :pswitch_data_0

    .line 787
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 783
    :pswitch_1
    const/16 v0, 0x19

    return v0

    .line 781
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 779
    :pswitch_3
    const/16 v0, 0x18

    return v0

    .line 777
    :pswitch_4
    const/16 v0, 0x17

    return v0

    .line 775
    :pswitch_5
    const/16 v0, 0x16

    return v0

    .line 773
    :pswitch_6
    const/16 v0, 0x15

    return v0

    .line 771
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 769
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 767
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 765
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 763
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

    .line 731
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 756
    const/16 v0, 0x9

    return v0

    .line 753
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 749
    :pswitch_1
    const/16 v0, 0x8

    return v0

    .line 747
    :pswitch_2
    const/4 v0, 0x7

    return v0

    .line 745
    :pswitch_3
    const/4 v0, 0x6

    return v0

    .line 743
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 751
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 741
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 739
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 737
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 735
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 733
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

    .line 1498
    packed-switch p0, :pswitch_data_0

    .line 1505
    const/4 v0, 0x2

    return v0

    .line 1502
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1500
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

    .line 1510
    packed-switch p0, :pswitch_data_0

    .line 1517
    const/4 v0, 0x2

    return v0

    .line 1514
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1512
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

    .line 1956
    packed-switch p0, :pswitch_data_0

    .line 1969
    const/4 v0, 0x5

    return v0

    .line 1966
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1964
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1962
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1960
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 1958
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

    .line 1937
    packed-switch p0, :pswitch_data_0

    .line 1951
    const/4 v0, 0x6

    return v0

    .line 1949
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1947
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1945
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1943
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1941
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1939
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

    .line 1607
    if-nez p0, :cond_0

    .line 1608
    const/4 v0, 0x0

    return-object v0

    .line 1611
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1613
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1615
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1616
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1619
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1620
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1623
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1625
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 1626
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1629
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1786
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1932
    :pswitch_0
    return v0

    .line 1930
    :pswitch_1
    const/16 v0, 0x48

    return v0

    .line 1928
    :pswitch_2
    const/16 v0, 0x47

    return v0

    .line 1926
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 1924
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 1922
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 1920
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1918
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1916
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1914
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1912
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1910
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1908
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1906
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1904
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1902
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1900
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1898
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1896
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1894
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1892
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1890
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1888
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1886
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1884
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1882
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1880
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1878
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1876
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1874
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1872
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1870
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1868
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1866
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1864
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1862
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1860
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1858
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1856
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1854
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1852
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1850
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1848
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1846
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1844
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1842
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1840
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1838
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1836
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1834
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1832
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1830
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1828
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1826
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1824
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1822
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1820
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1818
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1816
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1814
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1812
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1810
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1808
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1806
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1804
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1802
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1800
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1798
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1796
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1794
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1792
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1790
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1788
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

    .line 1633
    packed-switch p0, :pswitch_data_0

    .line 1781
    const/16 v0, 0x49

    return v0

    .line 1777
    :pswitch_0
    const/16 v0, 0x48

    return v0

    .line 1775
    :pswitch_1
    const/16 v0, 0x47

    return v0

    .line 1779
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 1773
    :pswitch_3
    const/16 v0, 0x45

    return v0

    .line 1771
    :pswitch_4
    const/16 v0, 0x44

    return v0

    .line 1769
    :pswitch_5
    const/16 v0, 0x43

    return v0

    .line 1767
    :pswitch_6
    const/16 v0, 0x42

    return v0

    .line 1765
    :pswitch_7
    const/16 v0, 0x41

    return v0

    .line 1763
    :pswitch_8
    const/16 v0, 0x40

    return v0

    .line 1761
    :pswitch_9
    const/16 v0, 0x3f

    return v0

    .line 1759
    :pswitch_a
    const/16 v0, 0x3e

    return v0

    .line 1757
    :pswitch_b
    const/16 v0, 0x3d

    return v0

    .line 1755
    :pswitch_c
    const/16 v0, 0x3c

    return v0

    .line 1753
    :pswitch_d
    const/16 v0, 0x3b

    return v0

    .line 1751
    :pswitch_e
    const/16 v0, 0x3a

    return v0

    .line 1749
    :pswitch_f
    const/16 v0, 0x39

    return v0

    .line 1747
    :pswitch_10
    const/16 v0, 0x38

    return v0

    .line 1745
    :pswitch_11
    const/16 v0, 0x37

    return v0

    .line 1743
    :pswitch_12
    const/16 v0, 0x36

    return v0

    .line 1741
    :pswitch_13
    const/16 v0, 0x35

    return v0

    .line 1739
    :pswitch_14
    const/16 v0, 0x34

    return v0

    .line 1737
    :pswitch_15
    const/16 v0, 0x33

    return v0

    .line 1735
    :pswitch_16
    const/16 v0, 0x32

    return v0

    .line 1733
    :pswitch_17
    const/16 v0, 0x31

    return v0

    .line 1731
    :pswitch_18
    const/16 v0, 0x30

    return v0

    .line 1729
    :pswitch_19
    const/16 v0, 0x2f

    return v0

    .line 1727
    :pswitch_1a
    const/16 v0, 0x2e

    return v0

    .line 1725
    :pswitch_1b
    const/16 v0, 0x2d

    return v0

    .line 1723
    :pswitch_1c
    const/16 v0, 0x2c

    return v0

    .line 1721
    :pswitch_1d
    const/16 v0, 0x2b

    return v0

    .line 1719
    :pswitch_1e
    const/16 v0, 0x2a

    return v0

    .line 1717
    :pswitch_1f
    const/16 v0, 0x29

    return v0

    .line 1715
    :pswitch_20
    const/16 v0, 0x28

    return v0

    .line 1713
    :pswitch_21
    const/16 v0, 0x27

    return v0

    .line 1711
    :pswitch_22
    const/16 v0, 0x26

    return v0

    .line 1709
    :pswitch_23
    const/16 v0, 0x25

    return v0

    .line 1707
    :pswitch_24
    const/16 v0, 0x24

    return v0

    .line 1705
    :pswitch_25
    const/16 v0, 0x23

    return v0

    .line 1703
    :pswitch_26
    const/16 v0, 0x22

    return v0

    .line 1701
    :pswitch_27
    const/16 v0, 0x21

    return v0

    .line 1699
    :pswitch_28
    const/16 v0, 0x20

    return v0

    .line 1697
    :pswitch_29
    const/16 v0, 0x1f

    return v0

    .line 1695
    :pswitch_2a
    const/16 v0, 0x1e

    return v0

    .line 1693
    :pswitch_2b
    const/16 v0, 0x1d

    return v0

    .line 1691
    :pswitch_2c
    const/16 v0, 0x1c

    return v0

    .line 1689
    :pswitch_2d
    const/16 v0, 0x1b

    return v0

    .line 1687
    :pswitch_2e
    const/16 v0, 0x1a

    return v0

    .line 1685
    :pswitch_2f
    const/16 v0, 0x19

    return v0

    .line 1683
    :pswitch_30
    const/16 v0, 0x18

    return v0

    .line 1681
    :pswitch_31
    const/16 v0, 0x17

    return v0

    .line 1679
    :pswitch_32
    const/16 v0, 0x16

    return v0

    .line 1677
    :pswitch_33
    const/16 v0, 0x15

    return v0

    .line 1675
    :pswitch_34
    const/16 v0, 0x14

    return v0

    .line 1673
    :pswitch_35
    const/16 v0, 0x13

    return v0

    .line 1671
    :pswitch_36
    const/16 v0, 0x12

    return v0

    .line 1669
    :pswitch_37
    const/16 v0, 0x11

    return v0

    .line 1667
    :pswitch_38
    const/16 v0, 0x10

    return v0

    .line 1665
    :pswitch_39
    const/16 v0, 0xf

    return v0

    .line 1663
    :pswitch_3a
    const/16 v0, 0xe

    return v0

    .line 1661
    :pswitch_3b
    const/16 v0, 0xd

    return v0

    .line 1659
    :pswitch_3c
    const/16 v0, 0xc

    return v0

    .line 1657
    :pswitch_3d
    const/16 v0, 0xb

    return v0

    .line 1655
    :pswitch_3e
    const/16 v0, 0xa

    return v0

    .line 1653
    :pswitch_3f
    const/16 v0, 0x9

    return v0

    .line 1651
    :pswitch_40
    const/16 v0, 0x8

    return v0

    .line 1649
    :pswitch_41
    const/4 v0, 0x7

    return v0

    .line 1647
    :pswitch_42
    const/4 v0, 0x6

    return v0

    .line 1645
    :pswitch_43
    const/4 v0, 0x5

    return v0

    .line 1643
    :pswitch_44
    const/4 v0, 0x4

    return v0

    .line 1641
    :pswitch_45
    const/4 v0, 0x3

    return v0

    .line 1639
    :pswitch_46
    const/4 v0, 0x2

    return v0

    .line 1637
    :pswitch_47
    const/4 v0, 0x1

    return v0

    .line 1635
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

    .line 498
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const/4 v0, 0x0

    .line 499
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-eqz p0, :cond_9

    .line 500
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 501
    .local v1, "listLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of SrvUpdates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 502
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 503
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_9

    .line 504
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 505
    .local v4, "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    if-eqz v4, :cond_8

    .line 506
    new-instance v5, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v5}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v5, v0, v3

    .line 507
    iget-boolean v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    if-eqz v5, :cond_0

    .line 508
    aget-object v5, v0, v3

    iget-boolean v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    iput-boolean v6, v5, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 510
    :cond_0
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 511
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-lez v5, :cond_1

    .line 512
    aget-object v5, v0, v3

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtils;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v8

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_1

    .line 514
    :cond_1
    aget-object v5, v0, v3

    new-array v8, v7, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v8, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 515
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v8, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v8}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v8, v5, v2

    .line 516
    aget-object v5, v0, v3

    iget-object v5, v5, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v5, v5, v2

    .line 517
    .local v5, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v8, 0xe

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 519
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v8, v6, :cond_2

    .line 520
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v8}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v8

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 522
    :cond_2
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    const v9, 0x7fffffff

    if-eq v8, v9, :cond_3

    .line 523
    iget v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    iput v8, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 526
    .end local v5    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_3
    :goto_1
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    if-eqz v5, :cond_4

    .line 528
    const-string v5, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 529
    aget-object v5, v0, v3

    iput v7, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    goto :goto_2

    .line 531
    :cond_4
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    if-eq v5, v6, :cond_5

    .line 532
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 535
    :cond_5
    :goto_2
    iget v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    if-eq v8, v5, :cond_6

    .line 536
    aget-object v5, v0, v3

    iget v6, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    iput v6, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    goto :goto_3

    .line 538
    :cond_6
    aget-object v5, v0, v3

    iput v2, v5, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 540
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

    .line 541
    iget-object v5, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 542
    .local v5, "userdataLen":I
    if-lez v5, :cond_7

    .line 543
    aget-object v6, v0, v3

    new-array v7, v5, [B

    iput-object v7, v6, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 544
    move v6, v2

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_7

    .line 545
    aget-object v7, v0, v3

    iget-object v7, v7, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v7, v6

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 548
    .end local v5    # "userdataLen":I
    .end local v6    # "j":I
    :cond_7
    goto :goto_5

    .line 549
    :cond_8
    const-string v5, "Null service status in list"

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 503
    .end local v4    # "fromInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 553
    .end local v1    # "listLen":I
    .end local v3    # "i":I
    :cond_9
    return-object v0
.end method

.method private static ectTypeToHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2138
    packed-switch p0, :pswitch_data_0

    .line 2146
    const/4 v0, 0x3

    return v0

    .line 2144
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2142
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2140
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

    .line 1126
    if-eqz p0, :cond_0

    .line 1130
    const/4 v0, -0x1

    return v0

    .line 1128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static facilityTypeToHal(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 1387
    packed-switch p0, :pswitch_data_0

    .line 1413
    const/16 v0, 0xc

    return v0

    .line 1411
    :pswitch_0
    const/16 v0, 0xb

    return v0

    .line 1409
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 1407
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 1405
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1403
    :pswitch_4
    const/4 v0, 0x7

    return v0

    .line 1401
    :pswitch_5
    const/4 v0, 0x6

    return v0

    .line 1399
    :pswitch_6
    const/4 v0, 0x5

    return v0

    .line 1397
    :pswitch_7
    const/4 v0, 0x4

    return v0

    .line 1395
    :pswitch_8
    const/4 v0, 0x3

    return v0

    .line 1393
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 1391
    :pswitch_a
    const/4 v0, 0x1

    return v0

    .line 1389
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

    .line 2154
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

    .line 1341
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 1342
    const/4 v0, 0x0

    return-object v0

    .line 1345
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1347
    .local v0, "outArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1348
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 4
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 392
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 394
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 395
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 398
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 399
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 402
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 403
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 407
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_3

    .line 408
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 411
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 415
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 417
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 418
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 421
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 422
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 425
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 426
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 429
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Details = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 431
    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 892
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 910
    sget-object v0, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/16 v0, 0x1fd

    return v0

    .line 906
    :pswitch_0
    const/16 v0, 0x1f8

    .line 907
    .local v0, "failCause":I
    goto :goto_0

    .line 903
    .end local v0    # "failCause":I
    :pswitch_1
    const/16 v0, 0x1f7

    .line 904
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 897
    .end local v0    # "failCause":I
    :pswitch_2
    const/16 v0, 0x1f6

    .line 898
    .restart local v0    # "failCause":I
    goto :goto_0

    .line 900
    .end local v0    # "failCause":I
    :cond_0
    const/16 v0, 0x1f5

    .line 901
    .restart local v0    # "failCause":I
    nop

    .line 911
    :goto_0
    nop

    .line 913
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getImsReasonForCallFailCause(I)I
    .locals 2
    .param p0, "failCause"    # I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call fail cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 275
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

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    .line 386
    const/4 v0, 0x0

    return v0

    .line 373
    :pswitch_0
    const/16 v0, 0xfb

    return v0

    .line 371
    :pswitch_1
    const/16 v0, 0xfa

    return v0

    .line 377
    :pswitch_2
    const/16 v0, 0xf9

    return v0

    .line 375
    :pswitch_3
    const/16 v0, 0xf8

    return v0

    .line 369
    :pswitch_4
    const/16 v0, 0xf7

    return v0

    .line 333
    :pswitch_5
    const/16 v0, 0x194

    return v0

    .line 331
    :pswitch_6
    const/16 v0, 0x193

    return v0

    .line 329
    :pswitch_7
    const/16 v0, 0x192

    return v0

    .line 327
    :pswitch_8
    const/16 v0, 0x191

    return v0

    .line 321
    :pswitch_9
    const/16 v0, 0x16a

    return v0

    .line 319
    :pswitch_a
    const/16 v0, 0x169

    return v0

    .line 311
    :pswitch_b
    const/16 v0, 0x161

    return v0

    .line 309
    :pswitch_c
    const/16 v0, 0x160

    return v0

    .line 302
    :pswitch_d
    const/16 v0, 0x15f

    return v0

    .line 300
    :pswitch_e
    const/16 v0, 0x155

    return v0

    .line 298
    :pswitch_f
    const/16 v0, 0x154

    return v0

    .line 296
    :pswitch_10
    const/16 v0, 0x153

    return v0

    .line 294
    :pswitch_11
    return v0

    .line 292
    :pswitch_12
    const/16 v0, 0x151

    return v0

    .line 290
    :pswitch_13
    return v1

    .line 288
    :pswitch_14
    const/16 v0, 0x14f

    return v0

    .line 286
    :pswitch_15
    const/16 v0, 0x14e

    return v0

    .line 284
    :pswitch_16
    const/16 v0, 0x14d

    return v0

    .line 282
    :pswitch_17
    const/16 v0, 0x14c

    return v0

    .line 280
    :pswitch_18
    const/16 v0, 0x14b

    return v0

    .line 278
    :pswitch_19
    const/16 v0, 0x141

    return v0

    .line 361
    :pswitch_1a
    const/16 v0, 0x5e8

    return v0

    .line 359
    :pswitch_1b
    const/16 v0, 0x3f8

    return v0

    .line 357
    :pswitch_1c
    const/16 v0, 0x3f7

    return v0

    .line 341
    :pswitch_1d
    const/16 v0, 0x3f6

    return v0

    .line 339
    :pswitch_1e
    return v1

    .line 347
    :pswitch_1f
    const/16 v0, 0x92

    return v0

    .line 349
    :pswitch_20
    const/16 v0, 0x95

    return v0

    .line 355
    :pswitch_21
    const/16 v0, 0x16c

    return v0

    .line 353
    :pswitch_22
    const/16 v0, 0x16b

    return v0

    .line 367
    :pswitch_23
    const/16 v0, 0xf6

    return v0

    .line 363
    :pswitch_24
    const/16 v0, 0xf5

    return v0

    .line 365
    :pswitch_25
    const/16 v0, 0xf4

    return v0

    .line 345
    :pswitch_26
    const/16 v0, 0xf3

    return v0

    .line 343
    :pswitch_27
    const/16 v0, 0xf1

    return v0

    .line 337
    :pswitch_28
    return v0

    .line 335
    :pswitch_29
    const/16 v0, 0x1f5

    return v0

    .line 324
    :cond_0
    const/16 v0, 0x5ea

    return v0

    .line 351
    :cond_1
    const/16 v0, 0x1f9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f9
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1fe
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x211
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x216
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
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

    .line 128
    packed-switch p0, :pswitch_data_0

    .line 135
    const/4 v0, 0x3

    return v0

    .line 130
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 133
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

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "isConferenceUri":Z
    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 155
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

    .line 435
    .local p0, "hidlPdu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 437
    .local v0, "pdu":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 438
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getUTInterfaceCFReasonFromCommandsInterfaceCFReason(I)I
    .locals 1
    .param p0, "commandsInterfaceCFReason"    # I

    .line 2419
    packed-switch p0, :pswitch_data_0

    .line 2435
    const/4 v0, -0x1

    return v0

    .line 2431
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2429
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2427
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2425
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2423
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2421
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

    .line 1044
    .local p0, "inList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    if-nez p0, :cond_0

    .line 1045
    const-string v0, "inList is null."

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->log(Ljava/lang/String;)V

    .line 1046
    const/4 v0, 0x0

    return-object v0

    .line 1049
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->copySrvStatusList(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1050
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1052
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method public static handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3
    .param p0, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 1057
    if-nez p0, :cond_0

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1061
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1063
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 1064
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1067
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 1068
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1071
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    if-eq v1, v2, :cond_3

    .line 1072
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1075
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hasHoExtra:Z

    if-eqz v1, :cond_4

    .line 1076
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->extraTypeFromHal(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/Extra;->extraInfo:Ljava/util/ArrayList;

    .line 1077
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->getByteArray(Ljava/util/ArrayList;)[B

    move-result-object v2

    .line 1076
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1080
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1083
    return-object v0
.end method

.method public static handoverTypeFromHal(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1087
    packed-switch p0, :pswitch_data_0

    .line 1101
    const/4 v0, -0x1

    return v0

    .line 1097
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1099
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1095
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1093
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1091
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1089
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

    .line 1167
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1173
    return v0

    .line 1171
    :pswitch_0
    return v0

    .line 1169
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

    .line 487
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result v0

    .line 488
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result v1

    .line 490
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v2
.end method

.method public static imsSmsStatusReportStatusToHidl(I)I
    .locals 1
    .param p0, "report"    # I

    .line 1178
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1184
    return v0

    .line 1182
    :pswitch_0
    return v0

    .line 1180
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

    .line 2159
    if-nez p0, :cond_0

    .line 2160
    const/4 v0, 0x0

    return-object v0

    .line 2163
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 2164
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2165
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 2168
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2169
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->imsStackEnabled:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 2168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2172
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 3
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 494
    new-instance v0, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->getSmsPdu(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static ipPresentationFromHal(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1456
    packed-switch p0, :pswitch_data_0

    .line 1463
    const/4 v0, 0x2

    return v0

    .line 1460
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1458
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

    .line 792
    packed-switch p0, :pswitch_data_0

    .line 800
    const/4 v0, 0x3

    return v0

    .line 798
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 796
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 794
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

    .line 1039
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtils;

    invoke-static {v0, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method private static mapHidlToFrameworkResponseReason(I)I
    .locals 1
    .param p0, "hidlReason"    # I

    .line 463
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 481
    return v0

    .line 479
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 477
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 475
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 473
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 471
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 469
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 467
    :pswitch_6
    return v0

    .line 465
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

    .line 448
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 458
    return v0

    .line 456
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 454
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 452
    :pswitch_2
    return v0

    .line 450
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

.method public static mapRadioTechToHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 946
    packed-switch p0, :pswitch_data_0

    .line 990
    const/16 v0, 0x15

    return v0

    .line 988
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 986
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 984
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 982
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 980
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 978
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 976
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 974
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 972
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 970
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 968
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 966
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 964
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 962
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 960
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 958
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 956
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 954
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 952
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 950
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 948
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

    .line 2085
    if-nez p0, :cond_0

    .line 2086
    const/4 v0, 0x0

    return-object v0

    .line 2089
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 2091
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2092
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 2095
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2096
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 2099
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2100
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 2103
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2104
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 2107
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 2108
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messagePriorityFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 2111
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2112
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 2115
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 2116
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 2118
    :cond_7
    return-object v0
.end method

.method public static messagePriorityFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2015
    packed-switch p0, :pswitch_data_0

    .line 2024
    const/4 v0, -0x1

    return v0

    .line 2021
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2019
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2017
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

    .line 2056
    if-nez p0, :cond_0

    .line 2057
    const/4 v0, 0x0

    return-object v0

    .line 2060
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 2062
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2063
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 2066
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2067
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 2070
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 2071
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 2074
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 2075
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 2078
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 2079
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 2081
    :cond_5
    return-object v0
.end method

.method public static messageTypeFromHal(I)I
    .locals 1
    .param p0, "type"    # I

    .line 1995
    packed-switch p0, :pswitch_data_0

    .line 2010
    const/4 v0, -0x1

    return v0

    .line 2007
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2005
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2003
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2001
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1999
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1997
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

    .line 2030
    if-nez p0, :cond_0

    .line 2031
    const/4 v0, 0x0

    return-object v0

    .line 2034
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 2035
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal summaryCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 2036
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2035
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
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

    .line 2038
    .local v2, "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    if-eqz v2, :cond_1

    .line 2039
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageSummaryFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2041
    .end local v2    # "summary":Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;
    :cond_1
    goto :goto_0

    .line 2042
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2043
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 2045
    :cond_3
    sget-object v1, Lorg/codeaurora/ims/ImsRadioUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageWaitingIndicationFromHal detailsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 2046
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2045
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
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

    .line 2048
    .local v2, "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    if-eqz v2, :cond_4

    .line 2049
    iget-object v3, v0, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->messageDetailsFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2051
    .end local v2    # "details":Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
    :cond_4
    goto :goto_1

    .line 2052
    :cond_5
    return-object v0
.end method

.method private static migrateCallFailCauseToV11(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2442
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 2443
    goto :goto_0

    .line 2444
    :cond_0
    nop

    .line 2442
    move v0, p0

    :goto_0
    return v0
.end method

.method private static migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .locals 5
    .param p0, "callInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 2450
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;-><init>()V

    .line 2453
    .local v0, "callInfoV11":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    .line 2454
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    .line 2455
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    .line 2456
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    .line 2457
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    .line 2458
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    .line 2459
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    .line 2460
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    .line 2461
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    .line 2462
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    .line 2463
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    .line 2464
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    .line 2465
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    .line 2466
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    .line 2467
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    .line 2468
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    .line 2470
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    .line 2471
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 2472
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 2473
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 2475
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2476
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2479
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

    .line 2480
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2479
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2483
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

    .line 2484
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2487
    .end local v2    # "i":I
    :cond_2
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 2488
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 2489
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 2490
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 2491
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 2493
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    .line 2494
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->failCause:I

    .line 2495
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallFailCauseToV11(I)I

    move-result v3

    iput v3, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 2497
    nop

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2498
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2501
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 2502
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    .line 2503
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 2504
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2507
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    .line 2508
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    .line 2509
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    .line 2510
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    .line 2511
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    .line 2512
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    .line 2513
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    .line 2515
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

    .line 2522
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    if-nez p0, :cond_0

    .line 2523
    const/4 v0, 0x0

    return-object v0

    .line 2525
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2528
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

    .line 2529
    .local v2, "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallInfoToV11(Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    move-result-object v3

    .line 2530
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2531
    .end local v2    # "callInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    goto :goto_0

    .line 2532
    :cond_1
    return-object v0
.end method

.method private static notificationTypeFromHal(I)I
    .locals 1
    .param p0, "inNotificationType"    # I

    .line 1329
    packed-switch p0, :pswitch_data_0

    .line 1335
    const v0, 0x7fffffff

    return v0

    .line 1333
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1331
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

    .line 2176
    packed-switch p0, :pswitch_data_0

    .line 2182
    const/4 v0, -0x1

    return v0

    .line 2180
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2178
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

    .line 2189
    if-nez p0, :cond_0

    .line 2190
    const/4 v0, 0x0

    return-object v0

    .line 2193
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 2195
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2196
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 2199
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 2200
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->operationFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 2203
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 2205
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 2206
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 2209
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->hasIsEct:Z

    if-eqz v1, :cond_4

    .line 2210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 2213
    :cond_4
    return-object v0
.end method

.method public static radioTechFromHal(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 682
    packed-switch p0, :pswitch_data_0

    .line 726
    const/16 v0, 0x14

    return v0

    .line 724
    :pswitch_0
    const/16 v0, 0x13

    return v0

    .line 722
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 720
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 718
    :pswitch_3
    const/16 v0, 0x10

    return v0

    .line 716
    :pswitch_4
    const/16 v0, 0xf

    return v0

    .line 714
    :pswitch_5
    const/16 v0, 0xe

    return v0

    .line 712
    :pswitch_6
    const/16 v0, 0xd

    return v0

    .line 710
    :pswitch_7
    const/16 v0, 0xc

    return v0

    .line 708
    :pswitch_8
    const/16 v0, 0xb

    return v0

    .line 706
    :pswitch_9
    const/16 v0, 0xa

    return v0

    .line 704
    :pswitch_a
    const/16 v0, 0x9

    return v0

    .line 702
    :pswitch_b
    const/16 v0, 0x8

    return v0

    .line 700
    :pswitch_c
    const/4 v0, 0x7

    return v0

    .line 698
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 696
    :pswitch_e
    const/4 v0, 0x5

    return v0

    .line 694
    :pswitch_f
    const/4 v0, 0x4

    return v0

    .line 692
    :pswitch_10
    const/4 v0, 0x3

    return v0

    .line 690
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 688
    :pswitch_12
    const/4 v0, 0x1

    return v0

    .line 686
    :pswitch_13
    const/4 v0, 0x0

    return v0

    .line 684
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

    .line 2283
    packed-switch p0, :pswitch_data_0

    .line 2305
    const/4 v0, -0x1

    return v0

    .line 2301
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 2299
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 2297
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 2295
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 2293
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 2291
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2289
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 2287
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 2285
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 2303
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

    .line 656
    packed-switch p0, :pswitch_data_0

    .line 664
    const/4 v0, -0x1

    return v0

    .line 660
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 662
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 658
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

    .line 669
    packed-switch p0, :pswitch_data_0

    .line 677
    const/4 v0, 0x3

    return v0

    .line 675
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 673
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 671
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

    .line 2219
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 2221
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    if-eqz p0, :cond_0

    .line 2222
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2225
    :cond_0
    if-eqz p2, :cond_1

    .line 2226
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->blockStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 2229
    :cond_1
    return-object v0
.end method

.method public static registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p0, :cond_3

    .line 618
    new-instance v1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    move-object v0, v1

    .line 619
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 620
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 623
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 624
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 627
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 629
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_2

    .line 630
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 633
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 636
    :cond_3
    return-object v0
.end method

.method public static requestTypeFromRILRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2382
    packed-switch p0, :pswitch_data_0

    .line 2395
    const/4 v0, -0x1

    return v0

    .line 2392
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2390
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2388
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2386
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2384
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

    .line 1028
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1034
    const/4 v0, 0x0

    return v0

    .line 1030
    :cond_0
    return v0
.end method

.method public static serviceClassStatusFromHal(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 1279
    packed-switch p0, :pswitch_data_0

    .line 1285
    const/4 v0, -0x1

    return v0

    .line 1281
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1283
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

    .line 2329
    packed-switch p0, :pswitch_data_0

    .line 2378
    const/4 v0, -0x1

    return v0

    .line 2375
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2373
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2371
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2369
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2367
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2365
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2363
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2361
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2359
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2357
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2355
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2353
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2351
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2349
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2347
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2345
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2343
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2341
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2339
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2337
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2335
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2333
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2331
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

    .line 805
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 806
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 807
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 809
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 810
    return-object v0
.end method

.method public static statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3
    .param p0, "inStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 587
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 588
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 589
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->radioTechFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 592
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 593
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusTypeFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 596
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 597
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 600
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 601
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 603
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateFromHal(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 605
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 606
    const-class v1, Lorg/codeaurora/ims/ImsRadioUtils;

    const-string v2, "Registered not sent"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 444
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

    .line 932
    packed-switch p0, :pswitch_data_0

    .line 941
    const/4 v0, 0x3

    return v0

    .line 938
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 936
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 934
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

    .line 917
    packed-switch p0, :pswitch_data_0

    .line 927
    const/4 v0, 0x4

    return v0

    .line 925
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 923
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 921
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 919
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

    .line 1291
    if-nez p0, :cond_0

    .line 1292
    const/4 v0, 0x0

    return-object v0

    .line 1295
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 1297
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1298
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->notificationTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 1302
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1303
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 1306
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 1307
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 1310
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 1311
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 1314
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 1315
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 1318
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 1321
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 1322
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 1325
    :cond_6
    return-object v0
.end method

.method public static suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 9
    .param p0, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 1419
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 1421
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 1423
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1424
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->FacilityTypeFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 1427
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1428
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 1431
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    .line 1432
    .local v2, "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    iget v3, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1433
    goto :goto_0

    .line 1435
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->serviceClass:I

    invoke-direct {v3, v4}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 1438
    .local v3, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->cbNumInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1439
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

    .line 1440
    .local v5, "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    iget-object v8, v5, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 1443
    .local v6, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v3, v6}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 1444
    .end local v5    # "numInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;
    .end local v6    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    goto :goto_1

    .line 1446
    :cond_3
    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 1447
    .end local v2    # "numList":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v3    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    goto :goto_0

    .line 1449
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 1450
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1452
    :cond_5
    return-object v0
.end method

.method public static teleserviceTypeFromRILTeleserviceType(I)I
    .locals 1
    .param p0, "teleservice"    # I

    .line 2399
    packed-switch p0, :pswitch_data_0

    .line 2414
    const/4 v0, -0x1

    return v0

    .line 2411
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2409
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2407
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2405
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2403
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2401
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

    .line 640
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 651
    const/4 v0, 0x0

    return v0

    .line 644
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 642
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 648
    :cond_0
    return v0

    .line 646
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

    .line 1468
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1478
    return v0

    .line 1476
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1474
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1472
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1470
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

    .line 1483
    packed-switch p0, :pswitch_data_0

    .line 1493
    const/4 v0, 0x4

    return v0

    .line 1489
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1487
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1485
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1491
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

    .line 565
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 570
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 571
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 572
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->statusForAccessTechFromHal(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 573
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

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method

.method public static voWiFiCallQualityFromHal(I)Ljava/lang/Object;
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2310
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2311
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2322
    aput v2, v1, v2

    goto :goto_0

    .line 2319
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2320
    goto :goto_0

    .line 2316
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2317
    goto :goto_0

    .line 2313
    :pswitch_2
    aput v0, v1, v2

    .line 2314
    nop

    .line 2325
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
