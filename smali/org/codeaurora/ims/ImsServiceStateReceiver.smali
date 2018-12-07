.class public Lorg/codeaurora/ims/ImsServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStateReceiver.java"


# static fields
.field private static CHANNEL_ID:Ljava/lang/String; = null

.field private static final IMS_HD_ICON:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStateReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mShowHDIcon:Z

.field private mShowVOLTEIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "ims_services_channel_"

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 51
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 52
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    .line 53
    iput p3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 54
    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification$Builder;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.substName"

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 81
    return-void
.end method

.method private shallShowHDIcon()Z
    .locals 8

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "showHDIcon":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 128
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 129
    const-string v2, "ImsServiceStateReceiver"

    const-string v3, "shallShowHDIcon SubscriptionManager is null"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v0

    .line 133
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 134
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1

    .line 135
    const-string v3, "ImsServiceStateReceiver"

    const-string v4, "shallShowHDIcon SubscriptionInfo is null"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return v0

    .line 139
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 141
    .local v3, "subId":I
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    const-string v4, "ImsServiceStateReceiver"

    const-string v5, "shallShowHDIcon subId is not active"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return v0

    .line 146
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v4

    .line 147
    .local v4, "subRes":Landroid/content/res/Resources;
    const v5, 0x7f030001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 148
    const v5, 0x7f030002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 149
    const-string v5, "ImsServiceStateReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shallShowHDIcon config showHDIcon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v0
.end method

.method private showHDIcon(Z)V
    .locals 10
    .param p1, "showHDIcon"    # Z

    .line 84
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 91
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 92
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 95
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_2

    .line 96
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "name":Ljava/lang/CharSequence;
    const/4 v4, 0x2

    .line 98
    .local v4, "importance":I
    new-instance v5, Landroid/app/NotificationChannel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v0, v5

    .line 99
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    .end local v3    # "name":Ljava/lang/CharSequence;
    .end local v4    # "importance":I
    :cond_2
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 103
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 104
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f040003

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v9, v6

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 104
    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 107
    const v4, 0x7f020004

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f040001

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v9, v6

    .line 111
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    .line 109
    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 112
    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 114
    :goto_0
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 115
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 116
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 117
    .local v4, "notification":Landroid/app/Notification;
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 118
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v6, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v1, v6

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v1, v4, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 120
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "notification":Landroid/app/Notification;
    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v1, v3

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 123
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 156
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "simStatus":Ljava/lang/String;
    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "phoneId":I
    const-string v2, "ImsServiceStateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStateReceiver phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " simStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    if-ne v1, v2, :cond_0

    const-string v2, "LOADED"

    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 167
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->onIccLoaded()V

    .line 170
    .end local v0    # "simStatus":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_0
    return-void
.end method

.method public updateHDIcon(ZZ)V
    .locals 3
    .param p1, "isVideoCapable"    # Z
    .param p2, "isVoiceCapable"    # Z

    .line 57
    const-string v0, "ImsServiceStateReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHDIcon isVideo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isVoice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " show HD Icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 64
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->shallShowHDIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_2

    .line 68
    :cond_3
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_2

    .line 72
    :cond_4
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    .line 74
    :goto_2
    return-void
.end method
