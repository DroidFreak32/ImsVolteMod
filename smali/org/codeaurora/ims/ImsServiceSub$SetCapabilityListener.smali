.class Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCapabilityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "x1"    # Lorg/codeaurora/ims/ImsServiceSub$1;

    .line 715
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    return-void
.end method


# virtual methods
.method public onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCapabilityValueFailure :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$200(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 730
    const-string v0, "onSetCapabilityValueFailure :: Null mCapabilityCallback!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$200(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    move-result-object v0

    .line 734
    invoke-static {p3}, Lorg/codeaurora/ims/ImsServiceSub;->access$300(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result v1

    .line 733
    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->onChangeCapabilityConfigurationError(III)V

    .line 735
    return-void
.end method

.method public onSetCapabilityValueSuccess(III)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "value"    # I

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCapabilityValueSuccess :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    return-void
.end method
