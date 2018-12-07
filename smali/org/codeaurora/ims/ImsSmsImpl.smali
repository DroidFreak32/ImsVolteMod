.class public Lorg/codeaurora/ims/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSmsImpl"


# instance fields
.field private final EVENT_SEND_SMS_RESPONSE:I

.field private final EVENT_UNSOL_INCOMING_SMS:I

.field private final EVENT_UNSOL_STATUS_REPORT:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIncomingToken:I

.field private final mLock:Ljava/lang/Object;

.field private mSendToken:I

.field private mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mSmsFwkReady:Z

.field private mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsPhoneId:I


# direct methods
.method public constructor <init>(ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 5
    .param p1, "mPhoneId"    # I
    .param p2, "mCi"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 45
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsPhoneId:I

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    .line 38
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSendToken:I

    .line 39
    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_SEND_SMS_RESPONSE:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_INCOMING_SMS:I

    .line 43
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->EVENT_UNSOL_STATUS_REPORT:I

    .line 46
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 47
    iput p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsPhoneId:I

    .line 48
    new-instance v2, Landroid/os/HandlerThread;

    const-class v3, Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v2, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;-><init>(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendResponseToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendSmsToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSmsImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 25
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportToFramework(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private sendDeliveryErrorToRIL()V
    .locals 4

    .line 60
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    .line 61
    return-void
.end method

.method private sendResponseToFramework(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 64
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/SmsResponse;

    .line 65
    .local v0, "smsResponse":Lorg/codeaurora/ims/sms/SmsResponse;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getMsgRef()I

    move-result v1

    .line 71
    .local v1, "ref":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getResult()I

    move-result v2

    .line 72
    .local v2, "result":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/SmsResponse;->getReason()I

    move-result v3

    .line 74
    .local v3, "reason":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendSmsResult:: token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSendToken:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " smsResponse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSendToken:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    iget v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSendToken:I

    invoke-virtual {p0, v4, v1, v2, v3}, Lorg/codeaurora/ims/ImsSmsImpl;->onSendSmsResult(IIII)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSmsResult: Ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 66
    .end local v1    # "ref":I
    .end local v2    # "result":I
    .end local v3    # "reason":I
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsResponse ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFrameworkRead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private sendSmsToFramework(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 86
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/IncomingSms;

    .line 87
    .local v0, "incomingSms":Lorg/codeaurora/ims/sms/IncomingSms;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmsReceived:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " incomingSms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mIncomingToken:I

    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/IncomingSms;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/IncomingSms;->getPdu()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSmsReceived: Ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    .line 104
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 88
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incomingSms ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFrameworkRead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSmsImpl;->sendDeliveryErrorToRIL()V

    .line 91
    return-void
.end method

.method private sendStatusReportErrorToRIL(I)V
    .locals 3
    .param p1, "msgRef"    # I

    .line 56
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    .line 57
    return-void
.end method

.method private sendStatusReportToFramework(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 107
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/sms/StatusReport;

    .line 108
    .local v0, "statusReport":Lorg/codeaurora/ims/sms/StatusReport;
    const/4 v1, 0x0

    .line 109
    .local v1, "token":I
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getMsgRef()I

    move-result v2

    .line 116
    .local v2, "ref":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "format":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v1, v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSmsStatusReportReceived:: token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " statusReport:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :try_start_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/sms/StatusReport;->getPdu()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsSmsImpl;->onSmsStatusReportReceived(IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v4

    .line 125
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSmsStatusReportReceived: Ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    .line 128
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 117
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 110
    .end local v2    # "ref":I
    .end local v3    # "format":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusReport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isFrameworkRead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSmsImpl;->sendStatusReportErrorToRIL(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 172
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSms:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSms(IILandroid/os/Message;)V

    .line 176
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "result"    # I

    .line 180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSmsReport:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->acknowledgeSmsReport(IILandroid/os/Message;)V

    .line 185
    return-void

    .line 180
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReady()V
    .locals 1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsFwkReady:Z

    .line 195
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B

    .line 162
    iput p1, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSendToken:I

    .line 163
    const-string v0, "ImsSmsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms:: token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msgRef:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isRetry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mSmsCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 166
    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V

    .line 168
    return-void
.end method
