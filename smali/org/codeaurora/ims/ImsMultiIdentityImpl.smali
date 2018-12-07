.class public Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.super Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
    }
.end annotation


# instance fields
.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

.field private final EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinesInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

.field private mPhoneId:I

.field private mRegisteredSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 54
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;-><init>()V

    .line 37
    new-instance v0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    .line 44
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 45
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

    .line 49
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

    .line 50
    const/4 v2, 0x4

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

    .line 51
    const/4 v2, 0x5

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

    .line 55
    iput p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    .line 56
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 57
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    .line 58
    new-instance v2, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;

    invoke-direct {v2, p0, p4}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 61
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onClientDeath()V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 28
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onRegisterMultiIdentityLinesResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 28
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityRegistrationStatusChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 28
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingIndication()V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 28
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 28
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityVirtualLineInfoResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 124
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 125
    :cond_0
    const-string v1, "getMultiIdentityListener :: IImsMultiIdentityListener is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "getMultiIdentityListener :: IImsMultiIdentityListener is null."

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onClientDeath()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 135
    return-void
.end method

.method private onMultiIdentityInfoPendingIndication()V
    .locals 4

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 175
    .local v1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    .line 177
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 178
    return-void

    .line 175
    .end local v1    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onMultiIdentityInfoPendingResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 164
    const-string v0, "multiIdentityInfoPendingResponse"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    const-string v0, "multiIdentity Info Pending action was unsuccessfull"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :cond_1
    return-void
.end method

.method private onMultiIdentityRegistrationStatusChange(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 222
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiIdentityRegistrationStatusChange :: AsyncResult exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    return-void

    .line 232
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 233
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 236
    .local v3, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 239
    iget-object v5, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v3    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 242
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onRegistrationStatusChange(ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiIdentityRegistrationStatusChange exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 242
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 223
    .end local v0    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :cond_4
    :goto_2
    const-string v0, "onMultiIdentityRegistrationStatusChange :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private onMultiIdentityVirtualLineInfoResponse(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 148
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VirtualLineInfo;

    .line 149
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    if-nez v0, :cond_0

    .line 150
    const-string v1, "multiIdentityVirtualLineInfoResponse :: virtualInfo is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v1, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mMsisdn:Ljava/lang/String;

    .line 154
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v2, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mVirtualInfo:Ljava/util/ArrayList;

    .line 156
    .local v2, "virtualLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v3, v4, v1, v2}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiIdentityVirtualLineInfoResponse exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private onRegisterMultiIdentityLinesResponse(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v0, "registerMultiIdentityLinesResponse :: NULL response received. Returning"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    .line 215
    .local v0, "ret":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onUpdateRegistrationInfoResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMultiIdentityLinesResponse exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public queryVirtualLineInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVirtualLineInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V

    .line 145
    return-void

    .line 140
    :cond_0
    const-string v0, "queryVirtualLineInfo :: msisdn is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "queryVirtualLineInfo :: msisdn is null."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMultiIdentityListener(Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setMultiIdentityListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 107
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 109
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 113
    if-eqz p1, :cond_1

    .line 114
    invoke-interface {p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 115
    .restart local v2    # "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 116
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "Trying to set a NULL listener."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 120
    return-void
.end method

.method public updateRegistrationStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "linesInfo":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateRegistrationStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 188
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 189
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 192
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    goto :goto_0

    .line 195
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    new-instance v5, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v5, v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 198
    .local v1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 204
    return-void

    .line 198
    .end local v1    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
