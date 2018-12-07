.class public Lcom/qualcomm/ims/vt/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
.implements Lorg/codeaurora/ims/ICallListListener;
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/MediaController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPauseImageMode:Z

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private mNumberOfImsCallSessions:I

.field private mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "VideoCall_MediaController"

    sput-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 44
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 47
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 49
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/MediaController;

    .line 32
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/MediaController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 32
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private convertVideoQuality(I)I
    .locals 1
    .param p1, "videoQuality"    # I

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 299
    const/4 v0, 0x0

    return v0

    .line 291
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 293
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 295
    :pswitch_2
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/MediaController;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/MediaController;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    :try_start_1
    const-string v1, "getInstance sInstance= null"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    const-class v0, Lcom/qualcomm/ims/vt/MediaController;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/MediaController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaController: Multiple initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "media":Lcom/qualcomm/ims/vt/ImsMedia;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isMediaInitialized()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->isMediaInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPauseImageState()Z
    .locals 1

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    monitor-exit p0

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 419
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method private maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 358
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-string v0, "maybeInitializeMedia: De-initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallTransmitStaticImage(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->deInit()V

    .line 369
    :cond_1
    return-void
.end method

.method private maybeInitializeMedia()V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "maybeInitializeMedia: Initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->init()I

    .line 355
    :cond_0
    return-void
.end method

.method private setPauseImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 168
    .local v0, "isPauseImageMode":Z
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setPreviewImage(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 172
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseImage isPauseImageMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPauseImageMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 175
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    if-ne v1, v0, :cond_2

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_2
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 180
    if-eqz v0, :cond_3

    .line 181
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 185
    .end local v0    # "isPauseImageMode":Z
    :goto_1
    monitor-exit p0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCallModifyInitiated(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 402
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 405
    :cond_0
    return-void
.end method

.method public onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionAdded callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 342
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 343
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 345
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 348
    :cond_0
    return-void
.end method

.method public onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionRemoved callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 374
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionRemoved: Unknown session has been removed, Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 376
    return-void

    .line 378
    :cond_0
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 379
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;)V

    .line 380
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 383
    :cond_1
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "newCallType"    # I

    .line 409
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 412
    :cond_0
    return-void
.end method

.method public onCameraConfigChanged(IIILandroid/view/Surface;I)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "fps"    # I
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "orientationMode"    # I

    .line 196
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isPauseImageState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "received camera config changed when not in pause image mode"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 198
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 203
    .local v0, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v0, :cond_1

    .line 204
    const-string v1, "onCameraConfigChanged: ImsVideoCallProvider is not available"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 205
    return-void

    .line 208
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v1, p1, p2}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 209
    .local v1, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraConfigChanged in hide me mode New capabilities = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 211
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 391
    return-void
.end method

.method public onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "mediaId"    # I
    .param p2, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 322
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 323
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged dataUsage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteDataUsage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 326
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 327
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    goto :goto_0

    .line 330
    :cond_0
    const-string v2, "onDataUsageChanged: call session is null"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 332
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 333
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged: Call session video provider is null. Received mediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 336
    :goto_1
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 387
    return-void
.end method

.method public onOrientationModeChanged(I)V
    .locals 2
    .param p1, "orientationMode"    # I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationModeChanged to orientation mode- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getIncomingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 231
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 234
    :cond_0
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateOrientationMode(I)V

    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "Call session video provider is null. Can\'t propagate onOrientationModeChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void
.end method

.method public onPeerResolutionChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeerResolutionChangeEvent width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 249
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdatePeerDimensions(II)V

    goto :goto_0

    .line 252
    :cond_0
    const-string v1, "Active or Outgoing  call session video provider is null. Can\'t propagate OnPeerResolutionChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    .line 264
    .local v0, "imsVideoGlobals":Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    nop

    .line 265
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 266
    .local v1, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 268
    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getIncomingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 273
    :cond_0
    if-eqz v1, :cond_2

    .line 274
    if-nez p1, :cond_1

    .line 275
    const/4 v2, 0x2

    goto :goto_0

    .line 276
    :cond_1
    const/4 v2, 0x1

    .line 277
    .local v2, "status":I
    :goto_0
    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 278
    .end local v2    # "status":I
    goto :goto_1

    .line 279
    :cond_2
    const-string v2, "All call session video providers are null. Can\'t propagate onPlayerStateChanged event"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 282
    :goto_1
    return-void
.end method

.method public onRecordingDisabled()V
    .locals 0

    .line 224
    return-void
.end method

.method public onRecordingEnabled()V
    .locals 0

    .line 219
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 395
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 398
    :cond_0
    return-void
.end method

.method public onUpdateRecorderFrameRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .line 215
    return-void
.end method

.method public onVideoQualityEvent(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .line 308
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 309
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->convertVideoQuality(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateVideoQuality(I)V

    goto :goto_0

    .line 312
    :cond_0
    const-string v1, "Active call session video provider is null. Can\'t propagate OnVideoQualityChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 2
    .param p1, "mediaId"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCallDataUsage: mediaID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->requestCallDataUsage(I)V

    .line 89
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 83
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-static {p1}, Lcom/qualcomm/ims/vt/CvoUtil;->toOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendCvoInfo(I)V

    .line 84
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 79
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setSurface(Landroid/view/Surface;)V

    .line 80
    return-void
.end method

.method public setMediaEventListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 70
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 71
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    .line 149
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->cancel(Z)Z

    move-result v0

    .line 151
    .local v0, "isCancelled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPauseImage cancelling old pauseImageTask isCancelled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 154
    .end local v0    # "isCancelled":Z
    :cond_0
    if-nez p1, :cond_1

    .line 156
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    .line 157
    return-void

    .line 160
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedWidth()I

    move-result v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 161
    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedHeight()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;-><init>(Lcom/qualcomm/ims/vt/MediaController;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    .line 162
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->updateMergeStatus(I)V

    .line 76
    return-void
.end method
