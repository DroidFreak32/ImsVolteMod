.class Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQtiImsExt.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 286
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 623
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 626
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 293
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    return-object v0
.end method

.method public getPacketCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 380
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 383
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 387
    nop

    .line 388
    return-void

    .line 386
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getPacketErrorCount(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 405
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getRcsAppConfig(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 668
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 672
    nop

    .line 674
    return v2

    .line 671
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getVvmAppConfig(I)I
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    nop

    .line 709
    nop

    .line 711
    return v2

    .line 708
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public querySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 515
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    nop

    .line 520
    return-void

    .line 518
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public queryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 600
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 603
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    nop

    .line 608
    return-void

    .line 606
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public queryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 495
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public registerForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 555
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 558
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 562
    nop

    .line 563
    return-void

    .line 561
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public resumePendingCall(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v1, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 428
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    nop

    .line 433
    return-void

    .line 431
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 454
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    nop

    .line 459
    return-void

    .line 457
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public sendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 472
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 475
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "reason"    # I
    .param p8, "serviceClass"    # I
    .param p9, "dialingNumber"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x0

    if-eqz p10, :cond_0

    invoke-interface {p10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 332
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 648
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 652
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setRcsAppConfig(II)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 687
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    nop

    .line 691
    nop

    .line 693
    return v2

    .line 690
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setVvmAppConfig(II)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 719
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    nop

    .line 728
    nop

    .line 730
    return v2

    .line 727
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 578
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 582
    iget-object v2, p0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    nop

    .line 587
    return-void

    .line 585
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
