.class Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
    }
.end annotation


# static fields
.field public static final CACHED_MEDIA_EVENT:I = 0x64

.field public static final CAMERA_FRAME_RATE_CHANGE_EVT:I = 0xa

.field public static final CAMERA_PARAM_READY_EVT:I = 0x1

.field public static final DATA_USAGE_EVT:I = 0x8

.field public static final DISPLAY_MODE_EVT:I = 0x5

.field public static final DPL_INIT_FAILURE:I = -0x1

.field public static final DPL_INIT_MULTIPLE:I = -0x2

.field public static final DPL_INIT_SUCCESSFUL:I = 0x0

.field private static final LOOPBACK_MODE_FPS:I = 0x14

.field private static final LOOPBACK_MODE_HEIGHT:I = 0x90

.field private static final LOOPBACK_MODE_WIDTH:I = 0xb0

.field public static final MEDIA_EVENT:I = 0x0

.field public static final PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final PLAYER_START_EVENT:I = 0x3

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field public static final PLAYER_STOP_EVENT:I = 0x4

.field public static final START_READY_EVT:I = 0x2

.field public static final STOP_READY_EVT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field public static final VIDEO_QUALITY_EVT:I = 0x7

.field private static mInitCalledFlag:Z

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mCachedMediaEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMediaLoopback:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private final mMediaStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNegotiatedFps:S

.field private mNegotiatedHeight:I

.field private mNegotiatedWidth:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mShouldCacheMediaEvents:Z

.field private mSurface:Landroid/view/Surface;

.field private mUIOrientationMode:I

.field private mVideoQualityLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 177
    const-string v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    const/16 v0, 0xf0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 88
    const/16 v1, 0x140

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 89
    const/4 v2, 0x2

    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 90
    const/16 v2, 0x14

    iput-short v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 92
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 93
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 98
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    .line 100
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 102
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initializemIsMediaLoopback()V

    .line 127
    return-void
.end method

.method private static areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 1
    .param p0, "a"    # Landroid/view/Surface;
    .param p1, "b"    # Landroid/view/Surface;

    .line 620
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 621
    const/4 v0, 0x1

    return v0

    .line 622
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 623
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private doOnCachedMediaEvent()V
    .locals 4

    .line 258
    const-string v0, "doOnCachedMediaEvent: scheduling the cache"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 259
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 260
    const-string v0, "VT lib deinitialized. Do not process cached events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 262
    return-void

    .line 265
    :cond_0
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 267
    .local v1, "eventId":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnCachedMediaEvent: scheduling event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(I)V

    .line 269
    .end local v1    # "eventId":Ljava/lang/Integer;
    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 271
    monitor-exit p0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doOnMediaEvent(I)V
    .locals 8
    .param p1, "eventId"    # I

    .line 469
    packed-switch p1, :pswitch_data_0

    .line 543
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown event id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 534
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecorderFrameRate()I

    move-result v0

    .line 535
    .local v0, "rate":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CAMERA_FRAME_RATE_CHANGE_EVT, rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 536
    if-lez v0, :cond_2

    .line 537
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 538
    .local v2, "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v2, v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(I)V

    .line 539
    .end local v2    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_0

    .line 500
    .end local v0    # "rate":I
    :pswitch_2
    const-string v0, "Received STOP_READY_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 502
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled()V

    .line 503
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_1

    .line 504
    :cond_0
    goto/16 :goto_4

    .line 527
    :pswitch_3
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetVideoQualityIndication()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received VIDEO_QUALITY_EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(I)V

    goto/16 :goto_4

    .line 484
    :pswitch_4
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerHeight()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 485
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerWidth()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received PEER_RESOLUTION_CHANGE_EVENT. Updating peer values mPeerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPeerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(II)V

    goto/16 :goto_4

    .line 506
    :pswitch_5
    const-string v0, "Received DISPLAY_MODE_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received DISPLAY_MODE_EVT mUIOrientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onOrientationModeChanged(I)V

    goto/16 :goto_4

    .line 521
    :pswitch_6
    const-string v0, "Received PLAYER_STOP_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_4

    .line 514
    :pswitch_7
    const-string v0, "Received PLAYER_START_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(I)V

    goto/16 :goto_4

    .line 493
    :pswitch_8
    const-string v0, "Received START_READY_EVT. Camera recording can be started"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 495
    .restart local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled()V

    .line 496
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_2

    .line 497
    :cond_1
    goto :goto_4

    .line 471
    :pswitch_9
    const-string v0, "Received PARAM_READY_EVT. Updating negotiated values"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->updatePreviewParams()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Camera values mNegotiatedWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNegotiatedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRecordingSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 477
    .restart local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    iget-short v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    iget-object v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    iget v7, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    move-object v2, v1

    invoke-interface/range {v2 .. v7}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IIILandroid/view/Surface;I)V

    .line 480
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_3

    .line 545
    :cond_2
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v1}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 119
    :cond_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 1
    .param p0, "a"    # Landroid/view/Surface;
    .param p1, "b"    # Landroid/view/Surface;

    .line 611
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 612
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    return v0

    .line 614
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializemIsMediaLoopback()V
    .locals 3

    .line 248
    const-string v0, "net.lte.VT_LOOPBACK_ENABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, "property":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 250
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 659
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 663
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 667
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()S
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeGetPeerHeight()I
.end method

.method private static native nativeGetPeerWidth()I
.end method

.method private static native nativeGetRecorderFrameRate()I
.end method

.method private static native nativeGetRecordingSurface()Landroid/view/Surface;
.end method

.method private static native nativeGetUIOrientationMode()I
.end method

.method private static native nativeGetVideoQualityIndication()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetCameraFacing(I)V
.end method

.method private static native nativeSetCameraInfo(II)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)I
.end method

.method private static native nativeSetVideoImageBuffer([III)I
.end method

.method private notifyOnMediaDeinitialized()V
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 229
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    :try_start_0
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaDeinitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_1

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOnMediaDeinitialized: Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 233
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method private notifyOnMediaInitialized()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 239
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    :try_start_0
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_1

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOnMediaInitialized: Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 243
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method

.method private onDataUsageEvent(I[J)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "dataUsage"    # [J

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataUsageEvent mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 578
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 579
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 580
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 581
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 582
    return-void
.end method

.method private registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "instance"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 449
    const-string v0, "Registering for Media Callback Events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 450
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 451
    return-void
.end method

.method private declared-synchronized updatePreviewParams()Z
    .locals 7

    monitor-enter p0

    .line 629
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 630
    const/16 v0, 0x90

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 631
    const/16 v0, 0xb0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 632
    const/16 v0, 0x14

    iput-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return v1

    .line 635
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedHeight()I

    move-result v0

    .line 636
    .local v0, "h":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedWidth()I

    move-result v2

    .line 637
    .local v2, "w":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedFPS()S

    move-result v3

    .line 638
    .local v3, "fps":S
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v4

    .line 641
    .local v4, "mode":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v5

    .line 642
    .local v5, "surface":Landroid/view/Surface;
    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    if-ne v6, v0, :cond_2

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    if-ne v6, v2, :cond_2

    iget-short v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 645
    invoke-static {v6, v5}, Lcom/qualcomm/ims/vt/ImsMedia;->areSurfacesSame(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v6, v4, :cond_1

    goto :goto_0

    .line 654
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 647
    :cond_2
    :goto_0
    :try_start_2
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 648
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 649
    iput-short v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    .line 650
    iput-object v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 651
    iput v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    monitor-exit p0

    return v1

    .line 628
    .end local v0    # "h":I
    .end local v2    # "w":I
    .end local v3    # "fps":S
    .end local v4    # "mode":I
    .end local v5    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/qualcomm/ims/vt/ImsMedia;
    throw v0
.end method


# virtual methods
.method public addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    return-void
.end method

.method public addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public clearMediaEventCache()V
    .locals 1

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 276
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    return-void
.end method

.method deInit()V
    .locals 1

    .line 218
    const-string v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 220
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaDeinitialized()V

    .line 221
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDeInit()V

    .line 222
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 223
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 224
    return-void
.end method

.method public getNegotiatedFps()S
    .locals 2

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Fps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 362
    iget-short v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:S

    return v0
.end method

.method public getNegotiatedHeight()I
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    return v0
.end method

.method public getNegotiatedWidth()I
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    return v0
.end method

.method public getPeerHeight()I
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    return v0
.end method

.method public getPeerWidth()I
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    return v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordingSurface= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUIOrientationMode()I
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI Orientation Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 378
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    return v0
.end method

.method public getVideoQualityLevel()I
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Quality Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 402
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown msg id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnCachedMediaEvent()V

    .line 604
    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 592
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 593
    .local v1, "mediaId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [J

    .line 594
    .local v2, "dataUsage":[J
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v3, :cond_2

    .line 595
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    new-instance v4, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v4, v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-interface {v3, v1, v4}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v1    # "mediaId":I
    .end local v2    # "dataUsage":[J
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 600
    nop

    .line 601
    goto :goto_0

    .line 599
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 587
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(I)V

    .line 588
    nop

    .line 608
    :goto_0
    return-void
.end method

.method init()I
    .locals 4

    .line 187
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeInit()I

    move-result v0

    .line 189
    .local v0, "status":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init called error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    sput-boolean v2, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 193
    invoke-direct {p0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 194
    goto :goto_0

    .line 196
    :pswitch_1
    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    sput-boolean v2, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    .line 200
    const-string v1, "Dpl init is called multiple times"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaInitialized()V

    .line 207
    :cond_0
    return v0

    .line 211
    .end local v0    # "status":I
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaEvent(I)V
    .locals 2
    .param p1, "eventId"    # I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaEvent eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShouldCacheMediaEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 553
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    if-nez v0, :cond_0

    .line 554
    const-string v0, "VT lib deinitialized. Do not cache events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 555
    return-void

    .line 557
    :cond_0
    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 567
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 465
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 142
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 3
    .param p1, "mediaId"    # I

    .line 409
    const-string v0, "requestCallDataUsage"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 410
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRequestRtpDataUsage(I)I

    move-result v0

    .line 411
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCallDataUsage: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCvoInfo orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetDeviceOrientation(I)V

    .line 255
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 3
    .param p1, "isFacingFront"    # Z

    .line 312
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "facing":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing isFacingFront="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 315
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraFacing(I)V

    .line 316
    return-void
.end method

.method public setCameraInfo(II)V
    .locals 2
    .param p1, "facing"    # I
    .param p2, "mount"    # I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraInfo facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 323
    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraInfo(II)V

    .line 324
    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 454
    const-string v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 455
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 456
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)Z
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 416
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 417
    const-string v0, "setPreviewImage: VT lib deinitialized so ignore"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 418
    return v1

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImage: bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 424
    if-nez p1, :cond_1

    .line 425
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result v0

    .local v0, "status":I
    goto :goto_0

    .line 427
    .end local v0    # "status":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 428
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 429
    .local v10, "width":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewImage: bitmap width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 431
    mul-int v2, v10, v0

    new-array v11, v2, [I

    .line 433
    .local v11, "argb":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v11

    move v5, v10

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 434
    invoke-static {v11, v10, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result v0

    .line 441
    .end local v10    # "width":I
    .end local v11    # "argb":[I
    .local v0, "status":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewImage: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 442
    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "st"    # Landroid/view/Surface;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 340
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 342
    :cond_1
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 283
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    goto :goto_0

    .line 290
    :pswitch_1
    const-string v0, "persist.vendor.radio.schd.cache"

    .line 291
    .local v0, "PROPERTY_SCHEDULE_MEDIA_CACHE":Ljava/lang/String;
    const/16 v1, 0x8fc

    .line 294
    .local v1, "MEDIA_CACHE_DELAY":I
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 295
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "persist.vendor.radio.schd.cache"

    const/16 v4, 0x8fc

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, "delay":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduling the cache with delay ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 298
    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    goto :goto_0

    .line 285
    .end local v0    # "PROPERTY_SCHEDULE_MEDIA_CACHE":Ljava/lang/String;
    .end local v1    # "MEDIA_CACHE_DELAY":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "delay":I
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 286
    nop

    .line 305
    :goto_0
    monitor-exit p0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
