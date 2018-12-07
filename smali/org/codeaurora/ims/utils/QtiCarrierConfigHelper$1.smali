.class Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiCarrierConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .line 62
    iput-object p1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 65
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$100(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$100(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 72
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reload carrier configs on sub Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$300(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    .line 76
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    .local v1, "phoneId":I
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$400(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/CarrierConfigManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    .line 79
    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$400(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Landroid/telephony/CarrierConfigManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 80
    iget-object v3, p0, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper$1;->this$0:Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    invoke-static {v3}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$500(Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clear carrier configs on phone Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "subId":I
    .end local v1    # "phoneId":I
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    :goto_0
    return-void
.end method
