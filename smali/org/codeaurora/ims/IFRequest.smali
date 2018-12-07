.class Lorg/codeaurora/ims/IFRequest;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:I

.field private static sPool:Lorg/codeaurora/ims/IFRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lorg/codeaurora/ims/IFRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    .line 84
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 85
    sput v0, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;
    .locals 4
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    move-object v0, v2

    .line 110
    iget-object v2, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    sput-object v2, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 111
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 112
    sget v2, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    if-nez v0, :cond_1

    .line 117
    new-instance v1, Lorg/codeaurora/ims/IFRequest;

    invoke-direct {v1}, Lorg/codeaurora/ims/IFRequest;-><init>()V

    move-object v0, v1

    .line 120
    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v2, "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    move-object v2, v0

    sget-object v3, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_1
    sget v0, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    iput v0, v2, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    .line 122
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iput p0, v2, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 124
    iput-object p1, v2, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 126
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message target must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    :goto_0
    return-object v2

    .line 122
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 114
    .end local v2    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static resetSerial()V
    .locals 2

    .line 152
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lorg/codeaurora/ims/IFRequest;->sNextSerial:I

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 v0, 0x0

    .local v0, "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 182
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "errorMsg":Ljava/lang/String;
    new-instance v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-direct {v1, p1, v0}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .end local v0    # "errorMsg":Ljava/lang/String;
    move-object v0, v1

    .line 186
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 187
    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 192
    iget-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :cond_1
    return-void
.end method

.method release()V
    .locals 3

    .line 138
    sget-object v0, Lorg/codeaurora/ims/IFRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 140
    sget-object v1, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    iput-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mNext:Lorg/codeaurora/ims/IFRequest;

    .line 141
    sput-object p0, Lorg/codeaurora/ims/IFRequest;->sPool:Lorg/codeaurora/ims/IFRequest;

    .line 142
    sget v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/codeaurora/ims/IFRequest;->sPoolSize:I

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    .line 145
    :cond_0
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "sn":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "s":I
    :goto_0
    rsub-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_0

    .line 167
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
