.class Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;
.super Landroid/os/Handler;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSmsImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 169
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 170
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 177
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 178
    const-string v1, "msg.obg is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return-void

    .line 181
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 192
    const-string v1, "ImsSmsImpl"

    const-string v2, "Invalid Response"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->access$200(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V

    .line 190
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->access$100(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V

    .line 187
    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->access$000(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V

    .line 184
    nop

    .line 194
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
