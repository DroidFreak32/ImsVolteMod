.class Lcom/qualcomm/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$IFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraManager;->shallUseCamera2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager$1;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraManager;->setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V

    .line 33
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 34
    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/CameraManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/CameraManager;

    .line 19
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/ims/vt/CameraManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    .line 55
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 68
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open cameraid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    invoke-interface {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraManager$IFactory;->create(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v0

    .line 79
    .local v0, "camera":Lcom/qualcomm/ims/vt/Camera;
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->open()V

    .line 82
    return-object v0

    .line 74
    .end local v0    # "camera":Lcom/qualcomm/ims/vt/Camera;
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    const-string v2, "Camera is disabled."

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private shallUseCamera2()Z
    .locals 7

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, "camera1":I
    const/4 v1, 0x2

    .line 89
    .local v1, "camera2":I
    const-string v2, "persist.vendor.qti.telephony.vt_cam_interface"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 91
    .local v2, "cameraInterface":I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    .line 92
    const-string v4, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cameraInterface = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    .line 63
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    .line 64
    return-void
.end method
