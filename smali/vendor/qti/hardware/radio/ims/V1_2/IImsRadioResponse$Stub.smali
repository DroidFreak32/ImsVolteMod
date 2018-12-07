.class public abstract Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 918
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 921
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 965
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 966
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 967
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 968
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 969
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0xct
        -0x2bt
        -0x1t
        0x78t
        -0x3dt
        -0x11t
        -0x56t
        -0x70t
        0x2at
        -0x65t
        -0x5bt
        0x38t
        -0x4t
        0xet
        0x1ct
        -0x7at
        -0x3et
        -0x6ct
        -0x4et
        -0xft
        -0x6dt
        -0x24t
        0x61t
        -0x10t
        0x78t
        0x60t
        -0x7dt
        0x39t
        -0x67t
        -0x43t
        -0x6t
        -0x6bt
    .end array-data

    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 934
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 974
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 975
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1003
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1743
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1744
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_5d

    .line 1745
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1746
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1747
    goto/16 :goto_7

    .line 1730
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1731
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1732
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1734
    goto/16 :goto_7

    .line 1735
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 1738
    goto/16 :goto_7

    .line 1714
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1715
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1716
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1717
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1718
    goto/16 :goto_7

    .line 1719
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1722
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1723
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1725
    goto/16 :goto_7

    .line 1699
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1700
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1701
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1703
    goto/16 :goto_7

    .line 1704
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->ping()V

    .line 1707
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1708
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1709
    goto/16 :goto_7

    .line 1689
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1690
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_5d

    .line 1691
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1692
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1693
    goto/16 :goto_7

    .line 1676
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1677
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1678
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1679
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1680
    goto/16 :goto_7

    .line 1681
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 1684
    goto/16 :goto_7

    .line 1643
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1644
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1645
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1647
    goto/16 :goto_7

    .line 1648
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1651
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1655
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1656
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v3, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1657
    const-wide/16 v9, 0xc

    invoke-virtual {v3, v9, v10, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1658
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 1659
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1661
    mul-int/lit8 v9, v1, 0x20

    int-to-long v9, v9

    .line 1662
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1663
    nop

    .line 1659
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1666
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1668
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1670
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1671
    goto/16 :goto_7

    .line 1627
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1628
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1629
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1631
    goto/16 :goto_7

    .line 1632
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1636
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1638
    goto/16 :goto_7

    .line 1613
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1614
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1615
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1617
    goto/16 :goto_7

    .line 1618
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1622
    goto/16 :goto_7

    .line 1597
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1598
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1599
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1601
    goto/16 :goto_7

    .line 1602
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1605
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1606
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1607
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1608
    goto/16 :goto_7

    .line 1580
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1581
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1582
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1583
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1584
    goto/16 :goto_7

    .line 1585
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1588
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1589
    .local v2, "msgeRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1590
    .local v3, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1591
    .local v4, "reason":I
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    .line 1592
    goto/16 :goto_7

    .line 1565
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msgeRef":I
    .end local v3    # "smsStatus":I
    .end local v4    # "reason":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1566
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1567
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1568
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1569
    goto/16 :goto_7

    .line 1570
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1573
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1574
    .local v2, "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1575
    goto/16 :goto_7

    .line 1550
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1551
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1552
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1553
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1554
    goto/16 :goto_7

    .line 1555
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1558
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1559
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1560
    goto/16 :goto_7

    .line 1533
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1534
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1535
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1537
    goto/16 :goto_7

    .line 1538
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1541
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1542
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1543
    .local v3, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1544
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1545
    goto/16 :goto_7

    .line 1518
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1520
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1522
    goto/16 :goto_7

    .line 1523
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1526
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1527
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1528
    goto/16 :goto_7

    .line 1503
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1505
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1506
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1507
    goto/16 :goto_7

    .line 1508
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1511
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1512
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1513
    goto/16 :goto_7

    .line 1488
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1490
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1492
    goto/16 :goto_7

    .line 1493
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1496
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1497
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1498
    goto/16 :goto_7

    .line 1472
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1473
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1474
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto/16 :goto_7

    .line 1477
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1480
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1481
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1482
    .local v3, "packetErrorCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1483
    goto/16 :goto_7

    .line 1456
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetErrorCount":J
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1457
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1458
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1460
    goto/16 :goto_7

    .line 1461
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1464
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1465
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1466
    .local v3, "packetCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1467
    goto/16 :goto_7

    .line 1440
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetCount":J
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1441
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1442
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1444
    goto/16 :goto_7

    .line 1445
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1448
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1449
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1450
    .local v3, "serviceStatus":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1451
    goto/16 :goto_7

    .line 1425
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "serviceStatus":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1426
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1427
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1429
    goto/16 :goto_7

    .line 1430
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1433
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1434
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1435
    goto/16 :goto_7

    .line 1406
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    :cond_29
    move v9, v1

    .line 1407
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_2a

    .line 1408
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1410
    goto/16 :goto_7

    .line 1411
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1414
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1415
    .local v11, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1416
    .local v12, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1417
    .local v13, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v5, v0

    .line 1418
    .local v5, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v5, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1419
    move-object v0, v6

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v14, v5

    .end local v5    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .local v14, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1420
    goto/16 :goto_7

    .line 1388
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "token":I
    .end local v11    # "errorCode":I
    .end local v12    # "serviceStatus":I
    .end local v13    # "serviceClass":I
    .end local v14    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1389
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1390
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1391
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1392
    goto/16 :goto_7

    .line 1393
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1396
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1397
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1398
    .local v3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1399
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1400
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1401
    goto/16 :goto_7

    .line 1373
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1374
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1375
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1377
    goto/16 :goto_7

    .line 1378
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1381
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1382
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1383
    goto/16 :goto_7

    .line 1358
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1359
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1360
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto/16 :goto_7

    .line 1363
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1366
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1367
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1368
    goto/16 :goto_7

    .line 1343
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1344
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1345
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1347
    goto/16 :goto_7

    .line 1348
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1351
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1352
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1353
    goto/16 :goto_7

    .line 1328
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1329
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1330
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_7

    .line 1333
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1336
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1337
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1338
    goto/16 :goto_7

    .line 1313
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1314
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1315
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1317
    goto/16 :goto_7

    .line 1318
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1321
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1322
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1323
    goto/16 :goto_7

    .line 1298
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1299
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1300
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_7

    .line 1303
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1306
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1307
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1308
    goto/16 :goto_7

    .line 1283
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1284
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1285
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1287
    goto/16 :goto_7

    .line 1288
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1291
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1292
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1293
    goto/16 :goto_7

    .line 1266
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1267
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1268
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1270
    goto/16 :goto_7

    .line 1271
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1274
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1275
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1276
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1277
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1278
    goto/16 :goto_7

    .line 1251
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1252
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1253
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1255
    goto/16 :goto_7

    .line 1256
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1259
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1260
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1261
    goto/16 :goto_7

    .line 1233
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1234
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1235
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1237
    goto/16 :goto_7

    .line 1238
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1241
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1242
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1243
    .local v3, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1245
    .local v4, "hasClirInfo":Z
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1246
    goto/16 :goto_7

    .line 1216
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v4    # "hasClirInfo":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1217
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1218
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1220
    goto/16 :goto_7

    .line 1221
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1224
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1225
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1226
    .local v3, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1227
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1228
    goto/16 :goto_7

    .line 1199
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1200
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1201
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1202
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1203
    goto/16 :goto_7

    .line 1204
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1207
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1208
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1209
    .local v3, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1210
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1211
    goto/16 :goto_7

    .line 1182
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1183
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1184
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1186
    goto/16 :goto_7

    .line 1187
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1190
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1191
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1192
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1193
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1194
    goto/16 :goto_7

    .line 1165
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1166
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1167
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1169
    goto/16 :goto_7

    .line 1170
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1173
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1174
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1175
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1176
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1177
    goto/16 :goto_7

    .line 1148
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1149
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1150
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_7

    .line 1153
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1156
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1157
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1158
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1159
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1160
    goto/16 :goto_7

    .line 1131
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1132
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1133
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_7

    .line 1136
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1139
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1140
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1141
    .restart local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1142
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1143
    goto/16 :goto_7

    .line 1114
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1115
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1116
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto/16 :goto_7

    .line 1119
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1122
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1123
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1124
    .local v3, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1126
    goto/16 :goto_7

    .line 1097
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1098
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1099
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1101
    goto/16 :goto_7

    .line 1102
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1105
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1106
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1107
    .restart local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1108
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1109
    goto/16 :goto_7

    .line 1082
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1083
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1084
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1086
    goto/16 :goto_7

    .line 1087
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1090
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1091
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1092
    goto/16 :goto_7

    .line 1066
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1067
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1068
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_7

    .line 1071
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1074
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1075
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1076
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1077
    goto/16 :goto_7

    .line 1051
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1052
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1053
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_7

    .line 1056
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1059
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1060
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1061
    goto :goto_7

    .line 1036
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1037
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1038
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1040
    goto :goto_7

    .line 1041
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1044
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1045
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1046
    goto :goto_7

    .line 1021
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1022
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1023
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1025
    goto :goto_7

    .line 1026
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1029
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1030
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1031
    goto :goto_7

    .line 1006
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1007
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1008
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto :goto_7

    .line 1011
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1014
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1015
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1016
    nop

    .line 1752
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :cond_5d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 959
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 985
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    return-object p0

    .line 988
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 950
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 979
    const/4 v0, 0x1

    return v0
.end method
