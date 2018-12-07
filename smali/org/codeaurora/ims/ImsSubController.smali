.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_RADIO_DOWN:I = 0x4

.field private static final EVENT_IMS_RADIO_UP:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static mImsPhoneId:I

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumMultiModeStacks:I

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    .line 59
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxrs"    # [Lorg/codeaurora/ims/ImsSenderRxr;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 53
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 63
    const/4 v1, 0x6

    iput v1, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 64
    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 444
    new-instance v1, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 118
    new-instance v1, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/ims/ImsSubController$1;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 120
    .local v3, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    invoke-virtual {v3, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V

    .line 119
    .end local v3    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSubController;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 38
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSubController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 38
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    return-void
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public static getImsPhoneId()I
    .locals 2

    .line 177
    const-class v0, Lorg/codeaurora/ims/ImsSubController;

    monitor-enter v0

    .line 178
    :try_start_0
    sget v1, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    monitor-exit v0

    return v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRafInfoChange()V
    .locals 9

    .line 391
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfoChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    return-void

    .line 398
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 399
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 400
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "tempPhoneId":I
    :goto_0
    const/4 v4, 0x1

    if-ge v1, v0, :cond_2

    .line 401
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 402
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 403
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    .line 404
    .local v6, "nRafInfo":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRafInfoChange: Phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    iget v7, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v7, v4

    iput v7, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 407
    move v3, v1

    .line 400
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v6    # "nRafInfo":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Multiple Multimode stacks: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-le v1, v4, :cond_4

    .line 421
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_3

    .line 422
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    :cond_3
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 432
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 435
    const-string v1, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 438
    :cond_4
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 439
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 441
    :goto_1
    return-void
.end method

.method private handleSubConfigChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 246
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 248
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 250
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 251
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 252
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 254
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v2, v3, :cond_1

    .line 255
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([Z)V

    .line 259
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 260
    :cond_2
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 206
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 207
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    .line 208
    .local v0, "errorCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubConfigException error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 213
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 215
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .line 311
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 312
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 314
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    .line 319
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 320
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 329
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 332
    :cond_1
    :goto_0
    return-void
.end method

.method private isMultiModeSupported(I)Z
    .locals 2
    .param p1, "nRatMask"    # I

    .line 384
    const/16 v0, 0x4000

    .line 385
    .local v0, "nMmMask":I
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidPhoneId(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 238
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Phone Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    :cond_1
    return v0
.end method

.method private isValidSimultStackCount(I)Z
    .locals 4
    .param p1, "count"    # I

    .line 220
    const/4 v0, 0x1

    .line 222
    .local v0, "MAX_VALID_SIMULT_STACK_COUNT":I
    const/4 v1, 0x1

    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 223
    .local v1, "valid":Z
    :goto_0
    if-nez v1, :cond_1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Simultaneous Stack Count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    :cond_1
    return v1
.end method

.method private isValidStackStatusCount(I)Z
    .locals 3
    .param p1, "count"    # I

    .line 230
    if-lez p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Stack Status Count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    :cond_1
    return v0
.end method

.method private notifyActivateIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 188
    .local v1, "l":Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ImsSubController$ImsStateListener;->onActivateIms(I)V

    .line 189
    .end local v1    # "l":Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method private notifyDeactivateIms(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 193
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 194
    .local v1, "l":Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ImsSubController$ImsStateListener;->onDeactivateIms(I)V

    .line 195
    .end local v1    # "l":Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method private notifyStackConfigChanged([Z)V
    .locals 2
    .param p1, "activeStacks"    # [Z

    .line 199
    const-string v0, "notifyStackConfigChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 201
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([Z)V

    .line 202
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 358
    const/4 v0, 0x0

    .line 364
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 370
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 375
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 377
    return-void
.end method


# virtual methods
.method public onServiceDown(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 142
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method

.method public onServiceUp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 130
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 131
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 132
    :cond_0
    const-string v0, "Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 135
    :goto_0
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 88
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([Z)V

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 152
    if-eqz p1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 109
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 170
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateActiveImsStackForPhoneId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 337
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 343
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 344
    if-ne v2, p1, :cond_1

    .line 345
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    goto :goto_1

    .line 347
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean v1, v3, v2

    .line 343
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([Z)V

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
