.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsCallSessionImpl$Listener;


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_SEND_SESSION_MODIFY_CALL_CONFIRM_DONE:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProviderImpl"


# instance fields
.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 45
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsVideocallProviderImpl instance created callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 49
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 50
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 51
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 53
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyConfirmDone(Landroid/os/Message;)V

    return-void
.end method

.method private handleSessionModifyConfirmDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyConfirmDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x2

    .line 177
    .local v1, "status":I
    const/4 v2, 0x0

    .line 179
    .local v2, "responseProfile":Landroid/telecom/VideoProfile;
    if-eqz v0, :cond_1

    .line 180
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 181
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 182
    const-string v3, "Session modify confirm success"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    .line 184
    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 186
    :cond_0
    const-string v3, "Session modify confirm error"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 187
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 188
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 189
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    const/4 v4, 0x4

    .line 188
    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    goto :goto_0

    .line 193
    :cond_1
    const-string v3, "handleSessionModifyConfirmDone: null message object"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 195
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 196
    return-void
.end method

.method private handleSessionModifyDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 204
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x2

    .line 205
    .local v1, "status":I
    if-eqz v0, :cond_1

    .line 206
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 208
    const-string v2, "Session modify success"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    .line 210
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 212
    :cond_0
    const-string v2, "Session modify error"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 213
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 215
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    const/4 v3, 0x4

    .line 214
    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 219
    :cond_1
    const-string v2, "handleSessionModifyDone:null message object"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 222
    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 374
    .local v0, "isValid":Z
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 377
    :cond_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 381
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 385
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method


# virtual methods
.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method isOpen()Z
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 82
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return v0
.end method

.method public onCallDataUsageChanged(J)V
    .locals 2
    .param p1, "dataUsage"    # J

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 264
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCallDataUsage(J)V

    .line 265
    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 357
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "newCallType"    # I

    .line 361
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 331
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 332
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 333
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 325
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 3

    .line 300
    const-string v0, "onRequestCallDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 304
    .local v0, "mediaId":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(I)V

    goto :goto_0

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCallDataUsage: Invalid MediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 309
    :goto_0
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 250
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 254
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto :goto_0

    .line 257
    :cond_1
    const-string v1, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyRequest, videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 153
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 154
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isVideoPauseRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v2

    .line 166
    .local v2, "callType":I
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v3, v0, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 168
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v2    # "callType":I
    :goto_0
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyResponse, responseProfile state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 239
    .local v0, "callType":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 242
    .local v1, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V

    .line 243
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCamera, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 100
    :goto_0
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceOrientation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 133
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDisplaySurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)V

    .line 122
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPauseImage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewSurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 111
    return-void
.end method

.method public onSetZoom(F)V
    .locals 2
    .param p1, "value"    # F

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetZoom, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->setZoom(F)V

    .line 144
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnsolCallModify session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 343
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 344
    .local v0, "newVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 345
    .local v1, "vcp":Landroid/telecom/VideoProfile;
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 346
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget v2, p2, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 349
    .local v2, "uiError":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 350
    .end local v2    # "uiError":I
    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 353
    :goto_0
    return-void
.end method

.method public onUpdateOrientationMode(I)V
    .locals 2
    .param p1, "orientationMode"    # I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateOrientationMode orientation mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateOrientationMode(I)V

    .line 293
    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePeerDimensions width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    .line 272
    return-void
.end method

.method public onUpdateVideoQuality(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateVideoQuality video quality is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeVideoQuality(I)V

    .line 287
    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1
    .param p1, "hasFailed"    # Z

    .line 275
    const-string v0, "sendCameraFailure"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 276
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 277
    :cond_0
    const/4 v0, 0x6

    .line 279
    .local v0, "status":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 280
    return-void
.end method

.method public updateMergeStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMergeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->updateMergeStatus(I)V

    .line 78
    return-void
.end method
