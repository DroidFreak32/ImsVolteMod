.class Lcom/qualcomm/ims/vt/Camera$ConfigIms;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigIms"
.end annotation


# instance fields
.field fps:I

.field orientationMode:I

.field size:Landroid/util/Size;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "f"    # I
    .param p4, "mode"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    .line 45
    iput p3, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    .line 46
    iput p4, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/util/Size;II)V
    .locals 2
    .param p1, "s"    # Landroid/util/Size;
    .param p2, "f"    # I
    .param p3, "mode"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    .line 60
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    .line 61
    iput p3, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Size passed to ConfigIms is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOrientationMode()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera.ConfigIms(width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->orientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method
