.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/ImsService;
.source "ImsService.java"


# static fields
.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final UNINITIALIZED_VALUE:I = -0x1


# instance fields
.field private mNumPhonesCache:I

.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return-void
.end method

.method private getNumSlots()I
    .locals 2

    .line 48
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 51
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return v0
.end method

.method private setup()V
    .locals 12

    .line 55
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->setup(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    .line 57
    .local v0, "numSlots":I
    new-array v1, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 58
    new-array v1, v0, [Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 59
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v4, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    aput-object v4, v3, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/codeaurora/ims/ImsSubController;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 63
    move v2, v1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 64
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 65
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v10, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v11, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v6, v3, v2

    iget-object v7, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    iget-object v8, v9, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v11

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v11, v10, v2

    .line 63
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 69
    .local v2, "defaultSub":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v3, v1

    invoke-static {v1, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 72
    new-instance v1, Lorg/codeaurora/ims/QtiImsExt;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v1, p0, v3}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 73
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 91
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Returning mImsServiceController for ImsService binding"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Intent action in onBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 78
    const-string v0, "ImsService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->setup()V

    .line 82
    const-string v0, "qti.ims.ext"

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 223
    const-string v0, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 226
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aput-object v2, v1, v0

    .line 227
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aput-object v2, v1, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 230
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 231
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 232
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->teardown()V

    .line 233
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 234
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 113
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 114
    .local v0, "features":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 115
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v2, v1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 1

    .line 134
    const-string v0, "readyForFeatureCreation :: No-op"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    return-void
.end method
