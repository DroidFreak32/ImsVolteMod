.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$vS8MvKuTFLZM4boa3Y-HnKe1ls4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private final synthetic f$1:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$vS8MvKuTFLZM4boa3Y-HnKe1ls4;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$vS8MvKuTFLZM4boa3Y-HnKe1ls4;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$vS8MvKuTFLZM4boa3Y-HnKe1ls4;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$vS8MvKuTFLZM4boa3Y-HnKe1ls4;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionInviteParticipantsRequestFailed$20(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
