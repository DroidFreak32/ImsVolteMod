.class public Lorg/codeaurora/ims/SuppService;
.super Ljava/lang/Object;
.source "SuppService.java"


# static fields
.field public static final IP_PRESENTATION_NUM_ALLOWED:I = 0x0

.field public static final IP_PRESENTATION_NUM_DEFAULT:I = 0x2

.field public static final IP_PRESENTATION_NUM_RESTRICTED:I = 0x1

.field public static final NOT_PROVISIONED:I = 0x0

.field public static final PROVISIONED:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x2


# instance fields
.field private mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/SuppService;-><init>(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    .line 32
    iput-object p2, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 33
    return-void
.end method


# virtual methods
.method public getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    return v0
.end method

.method public setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 45
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 36
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuppService status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 53
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 54
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method
