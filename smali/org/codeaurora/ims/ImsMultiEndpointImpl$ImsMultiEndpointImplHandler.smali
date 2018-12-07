.class Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
.super Landroid/os/Handler;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiEndpointImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl;
    .param p2, "x1"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;

    .line 48
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 51
    const-string v0, "ImsMultiEndpointImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 54
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 64
    const-string v1, "ImsMultiEndpointImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :pswitch_0
    const-string v1, "ImsMultiEndpointImpl"

    const-string v2, "EVENT_CAPABILITIES_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->access$200(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V

    .line 62
    goto :goto_0

    .line 56
    :pswitch_1
    const-string v1, "ImsMultiEndpointImpl"

    const-string v2, "EVENT_REFRESH_VICE_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;->this$0:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->access$100(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V

    .line 58
    nop

    .line 67
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
