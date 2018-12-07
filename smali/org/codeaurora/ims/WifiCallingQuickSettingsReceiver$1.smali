.class Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;
.super Ljava/lang/Object;
.source "WifiCallingQuickSettingsReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->showVoWiFiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;

    .line 187
    iput-object p1, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;->this$0:Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 190
    invoke-static {}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;->this$0:Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;

    invoke-static {v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->access$100(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver$1;->this$0:Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;

    invoke-static {}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;->access$200(Lorg/codeaurora/ims/WifiCallingQuickSettingsReceiver;Landroid/content/Context;)V

    .line 192
    return-void
.end method
