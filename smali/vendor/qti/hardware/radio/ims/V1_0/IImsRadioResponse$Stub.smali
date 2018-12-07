.class public abstract Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 968
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 971
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1013
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1014
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1015
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1016
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1017
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

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 983
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1002
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1022
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1023
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

    .line 1051
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1774
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1775
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_5b

    .line 1776
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1778
    goto/16 :goto_7

    .line 1761
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1762
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1763
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1765
    goto/16 :goto_7

    .line 1766
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 1769
    goto/16 :goto_7

    .line 1745
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1746
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1747
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1749
    goto/16 :goto_7

    .line 1750
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1753
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1754
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1755
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1756
    goto/16 :goto_7

    .line 1730
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1731
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1732
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1734
    goto/16 :goto_7

    .line 1735
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->ping()V

    .line 1738
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1739
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1740
    goto/16 :goto_7

    .line 1720
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1721
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_5b

    .line 1722
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_7

    .line 1707
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1708
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1709
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1710
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1711
    goto/16 :goto_7

    .line 1712
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 1715
    goto/16 :goto_7

    .line 1674
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1675
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1676
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1677
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1678
    goto/16 :goto_7

    .line 1679
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1682
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1684
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1686
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1687
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v3, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1688
    const-wide/16 v9, 0xc

    invoke-virtual {v3, v9, v10, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1689
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x20

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    .line 1690
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1692
    mul-int/lit8 v9, v1, 0x20

    int-to-long v9, v9

    .line 1693
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1694
    nop

    .line 1690
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1697
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1699
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1701
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1702
    goto/16 :goto_7

    .line 1658
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1659
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1660
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1661
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1662
    goto/16 :goto_7

    .line 1663
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1667
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1669
    goto/16 :goto_7

    .line 1644
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1645
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1646
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1648
    goto/16 :goto_7

    .line 1649
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1652
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1653
    goto/16 :goto_7

    .line 1628
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1629
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1630
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1632
    goto/16 :goto_7

    .line 1633
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1636
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1637
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1639
    goto/16 :goto_7

    .line 1613
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1614
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1615
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1617
    goto/16 :goto_7

    .line 1618
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1621
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1622
    .local v2, "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1623
    goto/16 :goto_7

    .line 1598
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1599
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1600
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1602
    goto/16 :goto_7

    .line 1603
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1606
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1607
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1608
    goto/16 :goto_7

    .line 1581
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1582
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1583
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1585
    goto/16 :goto_7

    .line 1586
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1589
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1590
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1591
    .local v3, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1592
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1593
    goto/16 :goto_7

    .line 1566
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1567
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1568
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1570
    goto/16 :goto_7

    .line 1571
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1574
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1575
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1576
    goto/16 :goto_7

    .line 1551
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1552
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1553
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1555
    goto/16 :goto_7

    .line 1556
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1559
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1560
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1561
    goto/16 :goto_7

    .line 1536
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1537
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1538
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1540
    goto/16 :goto_7

    .line 1541
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1544
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1545
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1546
    goto/16 :goto_7

    .line 1520
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1521
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1522
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1524
    goto/16 :goto_7

    .line 1525
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1528
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1529
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1530
    .local v3, "packetErrorCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1531
    goto/16 :goto_7

    .line 1504
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetErrorCount":J
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1505
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1506
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1508
    goto/16 :goto_7

    .line 1509
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1512
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1513
    .restart local v2    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    .line 1514
    .local v3, "packetCount":J
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1515
    goto/16 :goto_7

    .line 1488
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "packetCount":J
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1490
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1492
    goto/16 :goto_7

    .line 1493
    :cond_24
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
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1498
    .local v3, "serviceStatus":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1499
    goto/16 :goto_7

    .line 1473
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "serviceStatus":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1474
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1475
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1477
    goto/16 :goto_7

    .line 1478
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1481
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1482
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1483
    goto/16 :goto_7

    .line 1454
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    :cond_27
    move v9, v1

    .line 1455
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v2, :cond_28

    .line 1456
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1457
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1458
    goto/16 :goto_7

    .line 1459
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1462
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1463
    .local v11, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1464
    .local v12, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1465
    .local v13, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v5, v0

    .line 1466
    .local v5, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v5, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    move-object v0, v6

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v14, v5

    .end local v5    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .local v14, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1468
    goto/16 :goto_7

    .line 1436
    .end local v9    # "_hidl_is_oneway":Z
    .end local v10    # "token":I
    .end local v11    # "errorCode":I
    .end local v12    # "serviceStatus":I
    .end local v13    # "serviceClass":I
    .end local v14    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1437
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1438
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1439
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1440
    goto/16 :goto_7

    .line 1441
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1443
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1444
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1445
    .restart local v2    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1446
    .local v3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1447
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1448
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1449
    goto/16 :goto_7

    .line 1421
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1422
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1423
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1425
    goto/16 :goto_7

    .line 1426
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1429
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1430
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1431
    goto/16 :goto_7

    .line 1406
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1407
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1408
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1410
    goto/16 :goto_7

    .line 1411
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1414
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1415
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1416
    goto/16 :goto_7

    .line 1391
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1392
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1393
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1395
    goto/16 :goto_7

    .line 1396
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1399
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1400
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1401
    goto/16 :goto_7

    .line 1376
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1377
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1378
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1380
    goto/16 :goto_7

    .line 1381
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1384
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1385
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1386
    goto/16 :goto_7

    .line 1361
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1362
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1363
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1365
    goto/16 :goto_7

    .line 1366
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1369
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1370
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1371
    goto/16 :goto_7

    .line 1346
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1347
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1348
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1350
    goto/16 :goto_7

    .line 1351
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1354
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1355
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1356
    goto/16 :goto_7

    .line 1331
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1332
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1333
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1335
    goto/16 :goto_7

    .line 1336
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1339
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1340
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1341
    goto/16 :goto_7

    .line 1314
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1315
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1316
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1318
    goto/16 :goto_7

    .line 1319
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1322
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1323
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1324
    .local v3, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1325
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1326
    goto/16 :goto_7

    .line 1299
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1300
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1301
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1303
    goto/16 :goto_7

    .line 1304
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1307
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1308
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1309
    goto/16 :goto_7

    .line 1281
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1282
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1283
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_7

    .line 1286
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1289
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1290
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1291
    .local v3, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 1293
    .local v4, "hasClirInfo":Z
    invoke-virtual {v6, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1294
    goto/16 :goto_7

    .line 1264
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v4    # "hasClirInfo":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1266
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1268
    goto/16 :goto_7

    .line 1269
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1272
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1273
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1274
    .local v3, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1275
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1276
    goto/16 :goto_7

    .line 1247
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1249
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1251
    goto/16 :goto_7

    .line 1252
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1255
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1256
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1257
    .local v3, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1258
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1259
    goto/16 :goto_7

    .line 1230
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1231
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1232
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1234
    goto/16 :goto_7

    .line 1235
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1238
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1239
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1240
    .local v3, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1241
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1242
    goto/16 :goto_7

    .line 1213
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1214
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1215
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1217
    goto/16 :goto_7

    .line 1218
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1221
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1222
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1223
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1224
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1225
    goto/16 :goto_7

    .line 1196
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1197
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1198
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1199
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1200
    goto/16 :goto_7

    .line 1201
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1204
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1205
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1206
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1207
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1208
    goto/16 :goto_7

    .line 1179
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1180
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1181
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_7

    .line 1184
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1187
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1188
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1189
    .restart local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1190
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1191
    goto/16 :goto_7

    .line 1162
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1163
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1164
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1166
    goto/16 :goto_7

    .line 1167
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1170
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1171
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1172
    .local v3, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1173
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1174
    goto/16 :goto_7

    .line 1145
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1146
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1147
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1149
    goto/16 :goto_7

    .line 1150
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1153
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1154
    .restart local v2    # "errorCode":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1155
    .restart local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1156
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1157
    goto/16 :goto_7

    .line 1130
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1131
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1132
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1134
    goto/16 :goto_7

    .line 1135
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1138
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1139
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1140
    goto/16 :goto_7

    .line 1114
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1115
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1116
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    goto/16 :goto_7

    .line 1119
    :cond_52
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
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1124
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {v6, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1125
    goto/16 :goto_7

    .line 1099
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1100
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1101
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1103
    goto/16 :goto_7

    .line 1104
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1107
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1108
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1109
    goto :goto_7

    .line 1084
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1085
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1086
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto :goto_7

    .line 1089
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1092
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1093
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1094
    goto :goto_7

    .line 1069
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1070
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1071
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1073
    goto :goto_7

    .line 1074
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1077
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1078
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1079
    goto :goto_7

    .line 1054
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1055
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1056
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto :goto_7

    .line 1059
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1062
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1063
    .restart local v2    # "errorCode":I
    invoke-virtual {v6, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1064
    nop

    .line 1783
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "errorCode":I
    :cond_5b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1007
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1033
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    return-object p0

    .line 1036
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

    .line 1040
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 998
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1027
    const/4 v0, 0x1

    return v0
.end method
