.class public Lorg/codeaurora/ims/sms/IncomingSms;
.super Ljava/lang/Object;
.source "IncomingSms.java"


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mPdu:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "pdu"    # [B

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mPdu:[B

    .line 17
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mPdu:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
