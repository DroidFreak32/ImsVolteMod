.class public abstract Lorg/codeaurora/ims/QtiImsExtBase;
.super Ljava/lang/Object;
.source "QtiImsExtBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    }
.end annotation


# instance fields
.field private mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;-><init>(Lorg/codeaurora/ims/QtiImsExtBase;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtBase;->mQtiImsExtBinder:Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    return-object v0
.end method

.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 167
    return-void
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 211
    return-void
.end method

.method protected onGetPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 170
    return-void
.end method

.method protected onGetPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 173
    return-void
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 195
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 208
    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 192
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 201
    return-void
.end method

.method protected onRegisterForViceRefreshInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 198
    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 180
    return-void
.end method

.method protected onSendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 177
    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 184
    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 188
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 163
    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 215
    return-void
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 205
    return-void
.end method
