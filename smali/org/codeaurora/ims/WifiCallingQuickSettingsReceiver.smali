.class public Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingQuickSettingsReceiver.java"


# static fields
.field private static final CONTENT_WIFI_CALLING_Tile:Ljava/lang/String; = "Wifi Calling Tile"

.field private static final EXTRAKEY_CONTENT:Ljava/lang/String; = "contentDescription"

.field private static final EXTRAKEY_ICONID:Ljava/lang/String; = "iconId"

.field private static final EXTRAKEY_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field private static final EXTRAKEY_LABEL:Ljava/lang/String; = "label"

.field private static final EXTRAKEY_ONCLICK:Ljava/lang/String; = "onClick"

.field private static final EXTRAKEY_ONCLICK_URI:Ljava/lang/String; = "onClickUri"

.field private static final EXTRAKEY_ONLAUNCH:Ljava/lang/String; = "onLaunch"

.field private static final EXTRAKEY_ONLAUNCH_URI:Ljava/lang/String; = "onLaunchUri"

.field private static final EXTRAKEY_ONLONGCLICK:Ljava/lang/String; = "onLongClick"

.field private static final EXTRAKEY_ONLONGCLICK_URI:Ljava/lang/String; = "onLongClickUri"

.field private static final QS_ONCLICK_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

.field private static final QS_ONLAUNCH_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

.field private static final SSID_NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final WIFICALLING_TILE_ACTION:Ljava/lang/String; = "org.codeaurora.qs.tiles.wificallingtile"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mWfcEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 29
    sget-object v0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;

    .line 29
    iget-boolean v0, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    return-void
.end method

.method private getConnectedWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    const-string v0, "wifi"

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 173
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 174
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v2, 0x0

    .line 175
    .local v2, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<unknown ssid>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_0
    return-object v2
.end method

.method private getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    nop

    .line 162
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 164
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private sendIntentToUpdateQSTile(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.codeaurora.qs.tiles.wificallingtile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "contentDescription"

    const-string v2, "Wifi Calling Tile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "iconPackage"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private showVoWiFiDialog()V
    .locals 3

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mContext:Landroid/content/Context;

    .line 184
    const v2, 0x7f04000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mContext:Landroid/content/Context;

    .line 185
    const v2, 0x7f04000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;-><init>(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;)V

    .line 186
    const v2, 0x7f04000f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    const v1, 0x7f04000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 196
    .local v0, "vowifiDilog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 198
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 201
    return-void
.end method

.method private updateIntentWifiCallingStatus(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 127
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    .line 131
    iget-boolean v0, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getConnectedWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, "label":Ljava/lang/String;
    :goto_1
    iget-boolean v1, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    if-eqz v1, :cond_2

    const v1, 0x7f020001

    goto :goto_2

    .line 133
    :cond_2
    const/high16 v1, 0x7f020000

    .line 135
    .local v1, "iconId":I
    :goto_2
    const-string v2, "label"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v2, "iconId"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method private updatePendingIntents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 140
    const-string v0, "onClick"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    .line 141
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 140
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    const-string v0, "onClickUri"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v0, "onLaunch"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    .line 144
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const-string v0, "onLaunchUri"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v0, "onLongClick"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    .line 149
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 148
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-string v0, "onLongClickUri"

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    sput-object p1, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.QS_ONLAUNCH_ACTION"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    const-string v1, "org.codeaurora.qs.tiles.wificallingtile.ONCLICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    const-string v1, "phone"

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 79
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v2, "Call is present so ignore the click"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    const-string v2, "WFC is not enable by platform ignore the click"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_2
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 90
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    .line 91
    iget-boolean v2, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    if-nez v2, :cond_4

    .line 92
    invoke-direct {p0}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->showVoWiFiDialog()V

    goto :goto_1

    .line 94
    :cond_4
    iget-boolean v2, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->mWfcEnabled:Z

    xor-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 95
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    .line 97
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_1
    goto :goto_3

    .line 98
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Unexpected Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->sendIntentToUpdateQSTile(Landroid/content/Context;)V

    .line 100
    :goto_3
    return-void
.end method
