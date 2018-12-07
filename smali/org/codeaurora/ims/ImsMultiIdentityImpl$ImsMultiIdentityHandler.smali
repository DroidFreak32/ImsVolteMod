.class Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
.super Landroid/os/Handler;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiIdentityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 72
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$500(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V

    .line 96
    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$400(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V

    .line 93
    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$300(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    .line 90
    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$200(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V

    .line 87
    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$100(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V

    .line 84
    nop

    .line 100
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
