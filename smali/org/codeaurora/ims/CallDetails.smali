.class public Lorg/codeaurora/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_SUBSTATE_AUDIO_CONNECTED_SUSPENDED:I = 0x1

.field public static final CALL_SUBSTATE_AVP_RETRY:I = 0x4

.field public static final CALL_SUBSTATE_MEDIA_PAUSED:I = 0x8

.field public static final CALL_SUBSTATE_NONE:I = 0x0

.field public static final CALL_SUBSTATE_VIDEO_CONNECTED_SUSPENDED:I = 0x2

.field public static final CALL_TYPE_CS_VS_RX:I = 0x16

.field public static final CALL_TYPE_CS_VS_TX:I = 0x15

.field public static final CALL_TYPE_PS_VS_RX:I = 0x18

.field public static final CALL_TYPE_PS_VS_TX:I = 0x17

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_UT:I = 0x19

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CAUSE_CODE_UNSPECIFIED:I = 0x0

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field public static final RINGBACK_TONE_START:I = 0x1

.field public static final RINGBACK_TONE_STOP:I = 0x0

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public causeCode:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field private mIsCallPull:Z

.field private mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

.field private mVideoPauseState:I

.field public peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 196
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 197
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 201
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 202
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 207
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 208
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    .line 214
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;
    .param p4, "info"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 196
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 197
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 201
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 202
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 218
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 219
    iput p2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 220
    iput-object p3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;)V
    .locals 2
    .param p1, "srcCall"    # Lorg/codeaurora/ims/CallDetails;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 194
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 196
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 197
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 201
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 202
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 227
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 228
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 229
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 230
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 232
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 233
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 234
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 235
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 237
    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 310
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 312
    .local v0, "extras":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 313
    const/4 v1, 0x0

    return-object v1

    .line 318
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 320
    nop

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 323
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 324
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;)V
    .locals 3
    .param p1, "extra"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 299
    :cond_0
    return-void
.end method

.method public getCallPull()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    return v0
.end method

.method public getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    return-object v0
.end method

.method public getRttMode()I
    .locals 1

    .line 385
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    return v0
.end method

.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 348
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 349
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "currKey":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const/4 v0, 0x1

    aget-object v0, v2, v0

    return-object v0

    .line 347
    .end local v2    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    .line 343
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 377
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallPull(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 302
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 303
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .param p1, "extraparams"    # [Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setRttMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 381
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 382
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 359
    if-eqz p1, :cond_1

    .line 360
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 361
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 362
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "currKey":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 365
    goto :goto_1

    .line 360
    .end local v2    # "currKey":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 0
    .param p1, "videoPauseState"    # I

    .line 335
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 340
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 397
    const-string v0, ""

    .local v0, "extrasResult":Ljava/lang/String;
    const-string v1, ""

    .local v1, "localSrvAbility":Ljava/lang/String;
    const-string v2, ""

    .line 398
    .local v2, "peerSrvAbility":Ljava/lang/String;
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 399
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v5, v3

    move-object v6, v0

    move v0, v4

    .end local v0    # "extrasResult":Ljava/lang/String;
    .local v6, "extrasResult":Ljava/lang/String;
    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v7, v3, v0

    .line 400
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .end local v7    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    move-object v0, v6

    .end local v6    # "extrasResult":Ljava/lang/String;
    .restart local v0    # "extrasResult":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v3, :cond_5

    .line 405
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v5, v3

    move-object v6, v1

    move v1, v4

    .end local v1    # "localSrvAbility":Ljava/lang/String;
    .local v6, "localSrvAbility":Ljava/lang/String;
    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v7, v3, v1

    .line 406
    .local v7, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v7, :cond_3

    .line 407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rttMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    iget-object v8, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v8, :cond_3

    .line 410
    iget-object v8, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v9, v8

    move-object v10, v6

    move v6, v4

    .end local v6    # "localSrvAbility":Ljava/lang/String;
    .local v10, "localSrvAbility":Ljava/lang/String;
    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v11, v8, v6

    .line 411
    .local v11, "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 410
    .end local v11    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 405
    .end local v7    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    move-object v6, v10

    .end local v10    # "localSrvAbility":Ljava/lang/String;
    .restart local v6    # "localSrvAbility":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_4
    move-object v1, v6

    .end local v6    # "localSrvAbility":Ljava/lang/String;
    .restart local v1    # "localSrvAbility":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v3, :cond_9

    .line 419
    iget-object v3, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v5, v3

    move-object v6, v2

    move v2, v4

    .end local v2    # "peerSrvAbility":Ljava/lang/String;
    .local v6, "peerSrvAbility":Ljava/lang/String;
    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v7, v3, v2

    .line 420
    .restart local v7    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v7, :cond_7

    .line 421
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v7, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rttMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 423
    iget-object v8, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v8, :cond_7

    .line 424
    iget-object v8, v7, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v9, v8

    move-object v10, v6

    move v6, v4

    .end local v6    # "peerSrvAbility":Ljava/lang/String;
    .local v10, "peerSrvAbility":Ljava/lang/String;
    :goto_4
    if-ge v6, v9, :cond_6

    aget-object v11, v8, v6

    .line 425
    .restart local v11    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " accTechStatus "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 424
    .end local v11    # "at":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 419
    .end local v7    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_6
    move-object v6, v10

    .end local v10    # "peerSrvAbility":Ljava/lang/String;
    .restart local v6    # "peerSrvAbility":Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 432
    :cond_8
    move-object v2, v6

    .end local v6    # "peerSrvAbility":Ljava/lang/String;
    .restart local v2    # "peerSrvAbility":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callSubState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " videoPauseState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mediaId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Rtt mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Local Ability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Peer Ability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Cause code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sipAlternateUri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 8
    .param p1, "update"    # Lorg/codeaurora/ims/CallDetails;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 242
    return v1

    .line 244
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v2, v3, :cond_1

    .line 245
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 246
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_1
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v2, v3, :cond_2

    .line 250
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    if-eq v2, v3, :cond_3

    .line 254
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_3
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    if-eq v2, v3, :cond_4

    .line 258
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 259
    const/4 v0, 0x1

    .line 262
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iget-object v3, p1, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 263
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 264
    const/4 v0, 0x1

    .line 267
    :cond_5
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 268
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 270
    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "hasChanged":Z
    :goto_0
    iget-object v3, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 271
    iget-object v3, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "currKeyValuePair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 273
    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "oldVal":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 275
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 276
    iget-object v6, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v7, v3, v1

    aget-object v5, v3, v5

    invoke-virtual {p0, v6, v7, v5}, Lorg/codeaurora/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 278
    const/4 v2, 0x1

    goto :goto_1

    .line 281
    :cond_6
    const/4 v2, 0x1

    .line 282
    iget-object v5, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 270
    .end local v3    # "currKeyValuePair":[Ljava/lang/String;
    .end local v4    # "oldVal":Ljava/lang/String;
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getVideoPauseState()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CallDetails;->setVideoPauseState(I)V

    .line 287
    return v2
.end method
