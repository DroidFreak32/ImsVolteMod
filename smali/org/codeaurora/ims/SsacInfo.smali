.class public final Lorg/codeaurora/ims/SsacInfo;
.super Ljava/lang/Object;
.source "SsacInfo.java"


# instance fields
.field private mBarringFactorVideo:I

.field private mBarringFactorVideoSib:I

.field private mBarringFactorVoice:I

.field private mBarringFactorVoiceSib:I

.field private mBarringTimeVideo:I

.field private mBarringTimeVideoSib:I

.field private mBarringTimeVoice:I

.field private mBarringTimeVoiceSib:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    .line 31
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    .line 32
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    .line 33
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    .line 34
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    .line 35
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    .line 36
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    .line 37
    iput v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    .line 38
    return-void
.end method


# virtual methods
.method public getBarringFactorVoice()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SsacInfo barringFactorVoice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVoice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVoiceSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVoiceSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVoiceSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringFactorVideoSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringFactorVideoSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " barringTimeVideoSib: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SsacInfo;->mBarringTimeVideoSib:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
