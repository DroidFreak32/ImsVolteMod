.class Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
.super Landroid/os/AsyncTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field width:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;II)V
    .locals 0
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 95
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    iput p2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    .line 97
    iput p3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    .line 98
    return-void
.end method

.method private reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->access$000(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    iget v3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v4, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-static {v1, v2, v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-static {p1, v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    :goto_0
    if-eqz v0, :cond_1

    .line 111
    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImageAsync reconfigureAndDecodeImage bitmap b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->access$100(Ljava/lang/String;)V

    .line 116
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 124
    .local v0, "uri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImageAsync: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->access$100(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "setPreviewImageAsync: PauseImageTask is cancelled"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->access$100(Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewImageAsync bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->access$100(Ljava/lang/String;)V

    .line 139
    if-nez p1, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->access$200(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
