.class Lcom/qualcomm/ims/vt/Camera2;
.super Lcom/qualcomm/ims/vt/Camera;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_REQUEST_START_NONE:I = 0x0

.field public static final CAMERA_REQUEST_START_PREVIEW:I = 0x1

.field public static final CAMERA_REQUEST_START_RECORDING:I = 0x2

.field public static final CAMERA_STATE_CLOSED:I = 0x0

.field public static final CAMERA_STATE_OPEN:I = 0x2

.field public static final CAMERA_STATE_OPENING:I = 0x1

.field public static final ENABLE_AV_TIMER:B = 0x1t

.field private static final GENERIC_CONSTANT_INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Camera2"

.field private static final ZOOM_CONSTANT_NOT_SUPPORTED:I = 0x1


# instance fields
.field private mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraFacing:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameSkippingRate:I

.field private mIsCreateSessionPending:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mOpenState:I

.field private mPendingStartRequest:I

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSensorOrientation:I

.field private mSessionId:I

.field private mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.av_timer.use_av_timer"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 591
    new-instance v0, Lcom/qualcomm/ims/vt/Camera2$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/Camera2$1;-><init>(Lcom/qualcomm/ims/vt/Camera2;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ctor, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    .line 89
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ctor: Camera sensor orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cameraFacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-direct {v0, p1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    .line 95
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 96
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    .line 101
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 102
    return-void
.end method

.method private abortCaptures()V
    .locals 3

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortCaptures: Aborting captures..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 626
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abortCaptures: Failed to abort capture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 634
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .line 37
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/ims/vt/Camera2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->exectutePendingRequests()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/ims/vt/Camera2;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;

    .line 37
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return v0
.end method

.method static synthetic access$502(Lcom/qualcomm/ims/vt/Camera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRequestPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/Camera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static adjustRotationCounterclockwise(I)I
    .locals 3
    .param p0, "rotation"    # I

    .line 767
    packed-switch p0, :pswitch_data_0

    .line 777
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustRotationCounterclockwise: Invalid rotation value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return p0

    .line 775
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 773
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 771
    :pswitch_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 478
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 479
    new-array v0, v1, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    nop

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    if-ge v1, v2, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 490
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    return-object v0
.end method

.method static calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 4
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .line 785
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateRotation mSensorOrientation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cameraConfigIms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getOrientationMode()I

    move-result v0

    .line 788
    .local v0, "orientationMode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 789
    const-string v1, "Camera2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateRotation Portrait mode so rotating by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v1

    return v1

    .line 791
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 792
    invoke-static {p0, p1, p2}, Lcom/qualcomm/ims/vt/Camera2;->getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v1

    return v1

    .line 793
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 794
    const-string v1, "Camera2"

    const-string v2, "calculateRotation Landscape mode no rotation"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private cancelSession()V
    .locals 3

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSession: Canceling session..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 641
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 643
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :cond_0
    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSession: Failed to stop repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 651
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private clearStartRequest()V
    .locals 2

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearStartRequest: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 835
    return-void
.end method

.method private computeBestFps(I)Landroid/util/Range;
    .locals 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeBestFps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 505
    .local v0, "fpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeBestFps: Available FPS Ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 510
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 511
    .local v2, "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 512
    .local v3, "minDelta":I
    array-length v4, v0

    move-object v5, v2

    move v2, v1

    .end local v2    # "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v5, "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 513
    .local v6, "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 514
    .local v7, "delta":I
    if-ge v7, v3, :cond_0

    .line 515
    move-object v5, v6

    .line 516
    move v3, v7

    .line 512
    .end local v6    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "delta":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 521
    .end local v3    # "minDelta":I
    .local v2, "minDelta":I
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 522
    .local v4, "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    if-eq v6, v7, :cond_2

    .end local v4    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 523
    .restart local v4    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 524
    .local v6, "delta":I
    if-ge v6, v2, :cond_3

    .line 525
    move-object v5, v4

    .line 526
    move v2, v6

    .line 521
    .end local v4    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "delta":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_4
    return-object v5

    .line 507
    .end local v2    # "minDelta":I
    .end local v5    # "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method private doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 3
    .param p2, "l"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 843
    .local p1, "o":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 853
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 854
    return-void

    .line 848
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Camera device is not ready (null)."

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Only one session request is allowed."

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private doStartPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStartPreview: surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "Error preview surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 711
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 712
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 714
    new-array v0, v1, [Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v1, 0x0

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 717
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 718
    new-instance v1, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v0    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Failed to start preview, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 723
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private doStartRecording()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStartRecording: Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "Error preview surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    const-string v1, "Error recording surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 733
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 735
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const v1, 0x7f030006

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 737
    .local v0, "shallComputeRotation":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 738
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isFacingFront()Z

    move-result v4

    .line 737
    invoke-static {v2, v3, v4}, Lcom/qualcomm/ims/vt/Camera2;->calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v2

    goto :goto_0

    .line 739
    :cond_0
    move v2, v1

    .line 740
    .local v2, "rotation":I
    :goto_0
    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->adjustRotationCounterclockwise(I)I

    move-result v3

    move v2, v3

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doStartRecording: shallComputeRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Camera2 API rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;I)V

    .line 745
    .local v3, "recordingOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 747
    .local v1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 748
    new-instance v4, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v1, v4}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v0    # "shallComputeRotation":Z
    .end local v1    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v2    # "rotation":I
    .end local v3    # "recordingOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    nop

    .line 755
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: Failed to start recording, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 752
    throw v0
.end method

.method private doStartRepeating(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 654
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 659
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartRepeating: Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v1, v3, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 665
    :goto_0
    return-void

    .line 655
    .end local v0    # "size":I
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$CameraException;

    const-string v1, "Empty CaptureRequest"

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private exectutePendingRequests()V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exectutePendingRequests: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    :try_start_0
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    goto :goto_0

    .line 559
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    nop

    .line 567
    :goto_0
    goto :goto_1

    .line 565
    :catch_0
    move-exception v0

    .line 568
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private failIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 930
    :cond_0
    const-string v0, "failIfClosed: Camera is closed...no operation is allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 935
    if-eqz p1, :cond_0

    return-void

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failIfSurfaceNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 938
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private genSessionId()I
    .locals 2

    .line 912
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 913
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSessionId: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return v0
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 572
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 573
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 6
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .line 801
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 802
    const-string v0, "Camera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateRotation CVO mode and w<h so rotating by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v0

    return v0

    .line 809
    :cond_0
    add-int/lit8 v0, p0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    .line 810
    .local v0, "rotationFront":I
    add-int/lit16 v1, p0, 0x10e

    rem-int/lit16 v1, v1, 0x168

    .line 811
    .local v1, "rotationBack":I
    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    .line 812
    .local v2, "rotation":I
    :goto_0
    const-string v3, "Camera2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateRotation CVO mode and w>=h so rotating by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v3

    return v3
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 296
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method static getOutputConfigurationRotation(I)I
    .locals 2
    .param p0, "angle"    # I

    .line 818
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p0, v1, :cond_0

    .line 828
    return v0

    .line 826
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 824
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 822
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 820
    :cond_3
    return v0
.end method

.method private isClosed()Z
    .locals 1

    .line 924
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpened()Z
    .locals 2

    .line 857
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpening()Z
    .locals 2

    .line 920
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRequestPending()Z
    .locals 1

    .line 908
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 581
    .local p2, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    const/4 v0, 0x1

    return v0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 903
    const-string v0, "onConfigureFailed: onConfigureFailed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 905
    return-void
.end method

.method private onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 894
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 896
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 898
    :cond_0
    const-string v0, "onConfigured: Builder is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 2

    .line 158
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 161
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 162
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 163
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 164
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 165
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 166
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 167
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 168
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 169
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 170
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 171
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 172
    return-void
.end method

.method private restartRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 686
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartRepeating: Re-starting session... id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 690
    const-string v0, "restartRepeating: Stopping repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 692
    const-string v0, "restartRepeating: Starting repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 695
    :cond_0
    const-string v0, "restartRepeating: Session is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    goto :goto_1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartRepeating: Failed to start restart repeating session Ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 703
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-void
.end method

.method private shallDefer()Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 668
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRepeating: Starting session..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 671
    const-string v0, "startRepeating: Session is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    return-void

    .line 676
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRepeating: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRepeating: Failed to start repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 683
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 534
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 536
    sget-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "Enabling AV timer..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    if-eqz v0, :cond_1

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting FPS_RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CROP_REGION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 551
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 136
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->close()V

    .line 154
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 155
    return-void
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 265
    .local v0, "maxZoom":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom: maxZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return v0

    .line 267
    .end local v0    # "maxZoom":F
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom: Failed to retrieve Max Zoom, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    throw v0
.end method

.method public getMinZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "ZOOM_MIN_VALUE":I
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 279
    .end local v0    # "ZOOM_MIN_VALUE":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSensorOrientation()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFacingFront()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 254
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 408
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 109
    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: Available camera IDs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: camera is already opened, state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 122
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 123
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->open()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: Failed to open camera, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 127
    throw v1

    .line 114
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    new-instance v1, Lcom/qualcomm/ims/vt/Camera$CameraException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 224
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 225
    iget v0, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->computeBestFps(I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 227
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 229
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 231
    :cond_0
    const-string v0, "Reconfiguration is deferred."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-void
.end method

.method public setRecorderFrameRate(I)V
    .locals 1
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 442
    const-string v0, "setRecorderFrameRate: Frame rate is greater than max allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    div-int/2addr v0, p1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    .line 448
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const-string v0, "setRecorderFrameRate: Deferred."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    return-void

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    const-string v0, "setRecorderFrameRate: Deferred. Recording has not started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 461
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 463
    :cond_3
    const-string v0, "setRecorderFrameRate: Deferred."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 10
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 189
    .local v0, "activeRegion":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoom: ActiveArraySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v1, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 195
    .local v2, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 200
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v5, p1

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 201
    .local v4, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, p1

    div-float/2addr v6, v5

    float-to-int v5, v6

    .line 204
    .local v5, "yDelta":I
    sub-int v6, v2, v4

    sub-int v7, v3, v5

    add-int v8, v2, v4

    add-int v9, v3, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setZoom: CropRegionSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 208
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v6, :cond_0

    .line 209
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 210
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 212
    :cond_0
    const-string v6, "Setting zoom is deferred."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 183
    .end local v0    # "activeRegion":Landroid/graphics/Rect;
    .end local v1    # "cropRegion":Landroid/graphics/Rect;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    .end local v4    # "xDelta":I
    .end local v5    # "yDelta":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom: incorrect zoom value. v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview, surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "startPreview: Preview has already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    return-void

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 312
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 317
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 319
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Deferring startPreview request, currRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V

    .line 326
    :goto_0
    return-void
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 2
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: PreviewSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "startRecording: Recording has already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 364
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 365
    const-string v0, "Error recording surface is null"

    invoke-direct {p0, p2, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 368
    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 369
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 371
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 373
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: Deferring startRecording request, currRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    goto :goto_0

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStarted()V

    .line 381
    return-void
.end method

.method public stopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 333
    const-string v0, "stopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    .line 336
    .local v0, "isRecordingStarted":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    return-void

    .line 340
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 341
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 342
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 344
    if-eqz v0, :cond_1

    .line 345
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    .line 347
    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 388
    const-string v0, "stopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 395
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startPreview(Landroid/view/Surface;)V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    .line 401
    return-void
.end method
