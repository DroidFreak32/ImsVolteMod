.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$jYDT8sK35MdW73FxfiCF-P3Q-EQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$jYDT8sK35MdW73FxfiCF-P3Q-EQ;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$jYDT8sK35MdW73FxfiCF-P3Q-EQ;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$dispose$26(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    return-void
.end method
