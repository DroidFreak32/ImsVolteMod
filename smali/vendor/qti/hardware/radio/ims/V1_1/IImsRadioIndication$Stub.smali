.class public abstract Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 635
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 638
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 682
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 683
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 684
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 685
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 686
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

    .line 657
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
        0x2bt
        0x23t
        0x39t
        -0x14t
        -0x1ft
        -0xct
        -0x4et
        0x6bt
        -0x3t
        0x4bt
        -0x1dt
        0x45t
        -0x58t
        0x0t
        0x4et
        -0x1ft
        -0x1ft
        -0x56t
        -0x4ft
        -0x1t
        -0x74t
        -0x1bt
        0x1t
        -0x5ct
        -0x4ct
        0x1et
        0x7at
        -0x5at
        -0x6t
        -0x68t
        0x18t
        -0x53t
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

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

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

    .line 651
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 691
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 692
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1205
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1206
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_41

    .line 1207
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_7

    .line 1192
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1193
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1194
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1195
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1196
    goto/16 :goto_7

    .line 1197
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1200
    goto/16 :goto_7

    .line 1176
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1177
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1178
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1180
    goto/16 :goto_7

    .line 1181
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1184
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1185
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1187
    goto/16 :goto_7

    .line 1161
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1162
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1165
    goto/16 :goto_7

    .line 1166
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->ping()V

    .line 1169
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1171
    goto/16 :goto_7

    .line 1151
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1152
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_41

    .line 1153
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1154
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1155
    goto/16 :goto_7

    .line 1138
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1139
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1140
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1142
    goto/16 :goto_7

    .line 1143
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1146
    goto/16 :goto_7

    .line 1105
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1106
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1107
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1109
    goto/16 :goto_7

    .line 1110
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1113
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1115
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1117
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1118
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1119
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1120
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1121
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1123
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1124
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1125
    nop

    .line 1121
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1128
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1130
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1132
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1133
    goto/16 :goto_7

    .line 1089
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1090
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1091
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1093
    goto/16 :goto_7

    .line 1094
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1098
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_7

    .line 1075
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1076
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1077
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_7

    .line 1080
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto/16 :goto_7

    .line 1059
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1060
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1061
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1063
    goto/16 :goto_7

    .line 1064
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1067
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1068
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_7

    .line 1045
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1046
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1047
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1049
    goto/16 :goto_7

    .line 1050
    :cond_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1053
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1054
    goto/16 :goto_7

    .line 1030
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_7

    .line 1035
    :cond_16
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1038
    .local v0, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1039
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1040
    goto/16 :goto_7

    .line 1016
    .end local v0    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 1017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 1018
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1020
    goto/16 :goto_7

    .line 1021
    :cond_18
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1024
    .local v0, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1025
    goto/16 :goto_7

    .line 1002
    .end local v0    # "voWiFiCallQualityInfo":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 1003
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 1004
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_7

    .line 1007
    :cond_1a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1011
    goto/16 :goto_7

    .line 983
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_7

    .line 988
    :cond_1c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 991
    .local v0, "hasBlockStatusOnWwan":Z
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 992
    .local v2, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 994
    .local v3, "hasBlockStatusOnWlan":Z
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 995
    .local v4, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v4, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 996
    invoke-virtual {p0, v0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 997
    goto/16 :goto_7

    .line 968
    .end local v0    # "hasBlockStatusOnWwan":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v3    # "hasBlockStatusOnWlan":Z
    .end local v4    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 969
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_7

    .line 973
    :cond_1e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 976
    .local v0, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 977
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 978
    goto/16 :goto_7

    .line 953
    .end local v0    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 954
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 955
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 957
    goto/16 :goto_7

    .line 958
    :cond_20
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 961
    .local v0, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 962
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 963
    goto/16 :goto_7

    .line 938
    .end local v0    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 939
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 940
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_7

    .line 943
    :cond_22
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 946
    .local v2, "lat":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v4

    .line 947
    .local v4, "lon":D
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 948
    goto/16 :goto_7

    .line 923
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 924
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 925
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_7

    .line 928
    :cond_24
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 931
    .local v0, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 932
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 933
    goto/16 :goto_7

    .line 908
    .end local v0    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 909
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 910
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    goto/16 :goto_7

    .line 913
    :cond_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 916
    .local v0, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 917
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 918
    goto/16 :goto_7

    .line 893
    .end local v0    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 894
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 895
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 897
    goto/16 :goto_7

    .line 898
    :cond_28
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 901
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 902
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 903
    goto/16 :goto_7

    .line 878
    .end local v0    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 879
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 880
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    goto/16 :goto_7

    .line 883
    :cond_2a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 886
    .local v0, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 887
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 888
    goto/16 :goto_7

    .line 863
    .end local v0    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 864
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 865
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_7

    .line 868
    :cond_2c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 871
    .local v0, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 872
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 873
    goto/16 :goto_7

    .line 848
    .end local v0    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 849
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 850
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 852
    goto/16 :goto_7

    .line 853
    :cond_2e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 856
    .local v0, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 857
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 858
    goto/16 :goto_7

    .line 835
    .end local v0    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 836
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 837
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_7

    .line 840
    :cond_30
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 843
    goto/16 :goto_7

    .line 822
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 823
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 824
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 826
    goto/16 :goto_7

    .line 827
    :cond_32
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 830
    goto/16 :goto_7

    .line 808
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 809
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 812
    goto/16 :goto_7

    .line 813
    :cond_34
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 816
    .local v0, "radioState":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 817
    goto/16 :goto_7

    .line 794
    .end local v0    # "radioState":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 795
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 796
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto/16 :goto_7

    .line 799
    :cond_36
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 802
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 803
    goto/16 :goto_7

    .line 779
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 780
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 781
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto/16 :goto_7

    .line 784
    :cond_38
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 787
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 788
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 789
    goto/16 :goto_7

    .line 764
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 765
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 766
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 768
    goto/16 :goto_7

    .line 769
    :cond_3a
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 772
    .local v0, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 773
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 774
    goto :goto_7

    .line 750
    .end local v0    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 751
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 752
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto :goto_7

    .line 755
    :cond_3c
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 758
    .local v0, "tone":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 759
    goto :goto_7

    .line 737
    .end local v0    # "tone":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 738
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 739
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 741
    goto :goto_7

    .line 742
    :cond_3e
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onRing()V

    .line 745
    goto :goto_7

    .line 723
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 724
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 725
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 727
    goto :goto_7

    .line 728
    :cond_40
    const-string v0, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 731
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 732
    nop

    .line 1214
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :cond_41
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 676
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 702
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    return-object p0

    .line 705
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

    .line 709
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 667
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 696
    const/4 v0, 0x1

    return v0
.end method
