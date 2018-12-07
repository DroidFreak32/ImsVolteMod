.class public final enum Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
.super Ljava/lang/Enum;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetCapabilityFailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

.field public static final enum ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

.field public static final enum ERROR_SUCCESS:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    const-string v1, "ERROR_GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 57
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    const-string v1, "ERROR_SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_SUCCESS:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    sget-object v1, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    aput-object v1, v0, v2

    sget-object v1, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_SUCCESS:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    aput-object v1, v0, v3

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->$VALUES:[Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    return-object v0
.end method

.method public static values()[Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    .locals 1

    .line 55
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->$VALUES:[Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    invoke-virtual {v0}, [Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImpl$1;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v0, ""

    return-object v0

    .line 65
    :pswitch_0
    const-string v0, "ERROR_SUCCESS"

    return-object v0

    .line 63
    :pswitch_1
    const-string v0, "ERROR_GENERIC"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
