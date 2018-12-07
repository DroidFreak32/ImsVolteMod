.class public abstract Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1023
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1065
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1066
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1067
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1068
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1069
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

    .line 1041
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

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

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

    .line 1035
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1054
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1074
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1075
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 17
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 1103
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 1869
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1870
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_63

    .line 1871
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1872
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1873
    goto/16 :goto_8

    .line 1856
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1857
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1858
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1859
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1860
    goto/16 :goto_8

    .line 1861
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 1864
    goto/16 :goto_8

    .line 1840
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1841
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1842
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1843
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1844
    goto/16 :goto_8

    .line 1845
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1848
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1849
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1851
    goto/16 :goto_8

    .line 1825
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1826
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1827
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1829
    goto/16 :goto_8

    .line 1830
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->ping()V

    .line 1833
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1834
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1835
    goto/16 :goto_8

    .line 1815
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1816
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_63

    .line 1817
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1819
    goto/16 :goto_8

    .line 1802
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1803
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1804
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1805
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1806
    goto/16 :goto_8

    .line 1807
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setHALInstrumentation()V

    .line 1810
    goto/16 :goto_8

    .line 1769
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1770
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1771
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1773
    goto/16 :goto_8

    .line 1774
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1777
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1781
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1782
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1783
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1784
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1785
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1787
    mul-int/lit8 v6, v1, 0x20

    int-to-long v10, v6

    .line 1788
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v10, v11, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1789
    nop

    .line 1785
    .end local v10    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1792
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1794
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1796
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1797
    goto/16 :goto_8

    .line 1753
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1754
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1755
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1757
    goto/16 :goto_8

    .line 1758
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1762
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1764
    goto/16 :goto_8

    .line 1739
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1740
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1741
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1743
    goto/16 :goto_8

    .line 1744
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1748
    goto/16 :goto_8

    .line 1723
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1724
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1725
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1726
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1727
    goto/16 :goto_8

    .line 1728
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1731
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1732
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1734
    goto/16 :goto_8

    .line 1708
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1709
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1710
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1711
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1712
    goto/16 :goto_8

    .line 1713
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1716
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1717
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 1718
    goto/16 :goto_8

    .line 1693
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1694
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1695
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1697
    goto/16 :goto_8

    .line 1698
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1701
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 1703
    goto/16 :goto_8

    .line 1679
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1680
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1681
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1683
    goto/16 :goto_8

    .line 1684
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1687
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 1688
    goto/16 :goto_8

    .line 1661
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    :cond_19
    move v10, v1

    .line 1662
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v2, :cond_1a

    .line 1663
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1664
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1665
    goto/16 :goto_8

    .line 1666
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1669
    .local v11, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v12

    .line 1670
    .local v12, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v14

    .line 1671
    .local v14, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v6, v0

    .line 1672
    .local v6, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v6, v8}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1673
    move-object v0, v7

    move v1, v11

    move-wide v2, v12

    move-wide v4, v14

    move-object/from16 v16, v6

    .end local v6    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    .local v16, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 1674
    goto/16 :goto_8

    .line 1645
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "token":I
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v16    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 1646
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 1647
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1649
    goto/16 :goto_8

    .line 1650
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1653
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 1654
    .local v2, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1655
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 1656
    goto/16 :goto_8

    .line 1631
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 1632
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 1633
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1635
    goto/16 :goto_8

    .line 1636
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1639
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 1640
    goto/16 :goto_8

    .line 1617
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 1618
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 1619
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1621
    goto/16 :goto_8

    .line 1622
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1624
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1625
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 1626
    goto/16 :goto_8

    .line 1599
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 1600
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 1601
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1603
    goto/16 :goto_8

    .line 1604
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1607
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1608
    .local v2, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1609
    .local v3, "facilityType":I
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1610
    .local v4, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v4, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 1612
    goto/16 :goto_8

    .line 1583
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "operationType":I
    .end local v3    # "facilityType":I
    .end local v4    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 1584
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 1585
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1587
    goto/16 :goto_8

    .line 1588
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1591
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 1592
    .local v2, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1593
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 1594
    goto/16 :goto_8

    .line 1568
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1569
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1570
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1572
    goto/16 :goto_8

    .line 1573
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1576
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1577
    .local v2, "status":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 1578
    goto/16 :goto_8

    .line 1552
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1553
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1554
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1555
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1556
    goto/16 :goto_8

    .line 1557
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1560
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1561
    .local v2, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1562
    .local v3, "serviceClass":I
    invoke-virtual {v7, v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallWaiting(III)V

    .line 1563
    goto/16 :goto_8

    .line 1537
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceStatus":I
    .end local v3    # "serviceClass":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1538
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1539
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1541
    goto/16 :goto_8

    .line 1542
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1545
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1546
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1547
    goto/16 :goto_8

    .line 1521
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "serviceClass":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1522
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1523
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_8

    .line 1526
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1529
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1530
    .local v2, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1531
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1532
    goto/16 :goto_8

    .line 1505
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1506
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1507
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1509
    goto/16 :goto_8

    .line 1510
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1513
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1514
    .restart local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1515
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1516
    goto/16 :goto_8

    .line 1489
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1490
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1491
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1493
    goto/16 :goto_8

    .line 1494
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1497
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1498
    .local v2, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1499
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1500
    goto/16 :goto_8

    .line 1473
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1474
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1475
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1477
    goto/16 :goto_8

    .line 1478
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1481
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1482
    .restart local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1483
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1484
    goto/16 :goto_8

    .line 1457
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1458
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1459
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1461
    goto/16 :goto_8

    .line 1462
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1465
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1466
    .local v2, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1468
    goto/16 :goto_8

    .line 1443
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1444
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1445
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1446
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1447
    goto/16 :goto_8

    .line 1448
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1451
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->stopDtmf(I)V

    .line 1452
    goto/16 :goto_8

    .line 1427
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1428
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1429
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1431
    goto/16 :goto_8

    .line 1432
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1435
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1436
    .local v2, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1437
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1438
    goto/16 :goto_8

    .line 1411
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1412
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1413
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1415
    goto/16 :goto_8

    .line 1416
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1418
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1419
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1420
    .restart local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1421
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1422
    goto/16 :goto_8

    .line 1397
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1398
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1399
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1401
    goto/16 :goto_8

    .line 1402
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1405
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1406
    goto/16 :goto_8

    .line 1381
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1382
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1383
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1385
    goto/16 :goto_8

    .line 1386
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1389
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1390
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1391
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1392
    goto/16 :goto_8

    .line 1367
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1368
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1369
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1370
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1371
    goto/16 :goto_8

    .line 1372
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1375
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getColr(I)V

    .line 1376
    goto/16 :goto_8

    .line 1351
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1352
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1353
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1355
    goto/16 :goto_8

    .line 1356
    :cond_42
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1359
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1360
    .local v2, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1361
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1362
    goto/16 :goto_8

    .line 1337
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1338
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1339
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1341
    goto/16 :goto_8

    .line 1342
    :cond_44
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1345
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClir(I)V

    .line 1346
    goto/16 :goto_8

    .line 1323
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1324
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1325
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1327
    goto/16 :goto_8

    .line 1328
    :cond_46
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1331
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getClip(I)V

    .line 1332
    goto/16 :goto_8

    .line 1309
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1310
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1311
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1313
    goto/16 :goto_8

    .line 1314
    :cond_48
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1317
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->conference(I)V

    .line 1318
    goto/16 :goto_8

    .line 1293
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1294
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1295
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1297
    goto/16 :goto_8

    .line 1298
    :cond_4a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1301
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1302
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1303
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1304
    goto/16 :goto_8

    .line 1277
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1278
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1279
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1281
    goto/16 :goto_8

    .line 1282
    :cond_4c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1285
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1286
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1287
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1288
    goto/16 :goto_8

    .line 1262
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1263
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1264
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1266
    goto/16 :goto_8

    .line 1267
    :cond_4e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1270
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1271
    .local v2, "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->resume(II)V

    .line 1272
    goto/16 :goto_8

    .line 1247
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1248
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1249
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1250
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1251
    goto/16 :goto_8

    .line 1252
    :cond_50
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1255
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1256
    .restart local v2    # "callId":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->hold(II)V

    .line 1257
    goto/16 :goto_8

    .line 1231
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callId":I
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1232
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1233
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1235
    goto/16 :goto_8

    .line 1236
    :cond_52
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1239
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1240
    .local v2, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1241
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1242
    goto/16 :goto_8

    .line 1217
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1218
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1219
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1221
    goto/16 :goto_8

    .line 1222
    :cond_54
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1225
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1226
    goto/16 :goto_8

    .line 1202
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1203
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1204
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1206
    goto/16 :goto_8

    .line 1207
    :cond_56
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1210
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1211
    .local v2, "state":I
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1212
    goto/16 :goto_8

    .line 1186
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "state":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1187
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1188
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_8

    .line 1191
    :cond_58
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1194
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1195
    .local v2, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1196
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1197
    goto/16 :goto_8

    .line 1169
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1170
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1171
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1173
    goto/16 :goto_8

    .line 1174
    :cond_5a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1177
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1178
    .local v2, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1179
    .local v3, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1180
    .local v4, "mode":I
    invoke-virtual {v7, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->answer(IIII)V

    .line 1181
    goto/16 :goto_8

    .line 1155
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callType":I
    .end local v3    # "presentation":I
    .end local v4    # "mode":I
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1156
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1157
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1159
    goto/16 :goto_8

    .line 1160
    :cond_5c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1163
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1164
    goto/16 :goto_8

    .line 1139
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1140
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1141
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto :goto_8

    .line 1144
    :cond_5e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1147
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1148
    .local v2, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1149
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1150
    goto :goto_8

    .line 1123
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1124
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1125
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1127
    goto :goto_8

    .line 1128
    :cond_60
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1131
    .restart local v0    # "token":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1132
    .restart local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1133
    invoke-virtual {v7, v0, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1134
    goto :goto_8

    .line 1106
    .end local v0    # "token":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    goto :goto_7

    :cond_61
    move v2, v1

    .line 1107
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_62

    .line 1108
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto :goto_8

    .line 1111
    :cond_62
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1114
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v3

    .line 1115
    .local v3, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v7, v0, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1116
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1118
    nop

    .line 1878
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :cond_63
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
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

    .line 1059
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1085
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    return-object p0

    .line 1088
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

    .line 1092
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1050
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1079
    const/4 v0, 0x1

    return v0
.end method
