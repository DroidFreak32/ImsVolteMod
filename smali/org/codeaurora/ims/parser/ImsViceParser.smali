.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;,
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_VIDEO_HELD:Ljava/lang/String; = "vtheld"

.field private static final CALL_TYPE_VIDEO_RX:Ljava/lang/String; = "vtrx"

.field private static final CALL_TYPE_VIDEO_TX:Ljava/lang/String; = "vttx"

.field private static final CALL_TYPE_VIDEO_TX_RX:Ljava/lang/String; = "vttxrx"

.field private static final CALL_TYPE_VOICE_ACTIVE:Ljava/lang/String; = "volteactive"

.field private static final CALL_TYPE_VOICE_HELD:Ljava/lang/String; = "volteheld"

.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final MEDIA_DIRECTION_INACTIVE:Ljava/lang/String; = "inactive"

.field private static final MEDIA_DIRECTION_RECVONLY:Ljava/lang/String; = "recvonly"

.field private static final MEDIA_DIRECTION_SENDONLY:Ljava/lang/String; = "sendonly"

.field private static final MEDIA_DIRECTION_SENDRECV:Ljava/lang/String; = "sendrecv"

.field private static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final STATE_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final STATE_TERMINATED:Ljava/lang/String; = "terminated"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ImsViceParser"

    sput-object v0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    .line 90
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 119
    const-string v0, "full"

    .line 121
    .local v0, "resultantState":Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "elementState":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 123
    move-object v0, v1

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method private static getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I
    .locals 3
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 145
    const/4 v0, 0x2

    if-eqz p0, :cond_1

    .line 146
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    return v0

    .line 152
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallState Dialog null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    return v0
.end method

.method private static getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, "audioState":Ljava/lang/String;
    const/4 v2, 0x0

    .line 177
    .local v2, "videoState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 179
    .local v3, "portPresent":Z
    if-eqz p0, :cond_13

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v5, "confirmed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 180
    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 181
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_9

    .line 182
    iget-object v6, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 183
    .local v6, "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    if-eqz v6, :cond_7

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 185
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 186
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "sendrecv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 188
    const-string v1, "volteactive"

    goto/16 :goto_2

    .line 189
    :cond_0
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "sendonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "recvonly"

    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "inactive"

    .line 193
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 195
    :cond_1
    const-string v1, "volteheld"

    goto :goto_2

    .line 197
    :cond_2
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 198
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "sendrecv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    const-string v2, "vttxrx"

    goto :goto_1

    .line 201
    :cond_3
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "sendonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    const-string v2, "vttx"

    goto :goto_1

    .line 204
    :cond_4
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "recvonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 206
    const-string v2, "vtrx"

    goto :goto_1

    .line 207
    :cond_5
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string v8, "inactive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 209
    const-string v2, "vtheld"

    .line 211
    :cond_6
    :goto_1
    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    .line 213
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 214
    const/4 v3, 0x1

    goto :goto_2

    .line 218
    :cond_7
    sget-object v7, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v8, "Media Parameter incorrect!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_8
    :goto_2
    sget-object v7, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", videoState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", portPresent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v6    # "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 224
    .end local v5    # "i":I
    :cond_9
    if-eqz v1, :cond_12

    .line 225
    const-string v5, "volteactive"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 226
    if-eqz v2, :cond_e

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    goto :goto_3

    .line 228
    :cond_a
    const-string v5, "vttxrx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 229
    const-string v5, "vttxrx"

    return-object v5

    .line 230
    :cond_b
    const-string v5, "vttx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 231
    const-string v5, "vttx"

    return-object v5

    .line 232
    :cond_c
    const-string v5, "vtrx"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 233
    const-string v5, "vtrx"

    return-object v5

    .line 234
    :cond_d
    const-string v5, "vtheld"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 235
    const-string v5, "vtheld"

    return-object v5

    .line 227
    :cond_e
    :goto_3
    const-string v5, "volteactive"

    return-object v5

    .line 237
    :cond_f
    const-string v5, "volteheld"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 238
    if-eqz v2, :cond_11

    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    goto :goto_4

    .line 240
    :cond_10
    if-eqz v2, :cond_13

    if-nez v3, :cond_13

    .line 241
    const-string v5, "vtheld"

    return-object v5

    .line 239
    :cond_11
    :goto_4
    const-string v5, "volteheld"

    return-object v5

    .line 245
    :cond_12
    sget-object v5, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v6, "audioState null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v4    # "size":I
    :cond_13
    const/4 v4, 0x0

    return-object v4
.end method

.method private static isCallHeld(Ljava/lang/String;)Z
    .locals 5
    .param p0, "callType"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 280
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v0

    .line 284
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3010b10d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x7f00dbb9

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 290
    return v0

    .line 287
    :pswitch_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z
    .locals 5
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "pullable":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 308
    return v1

    .line 310
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "callType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 312
    return v1

    .line 315
    :cond_1
    const-string v3, "vttxrx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "vttx"

    .line 316
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "vtrx"

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 319
    .local v1, "canVtBePulled":Z
    :goto_1
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "volteactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 323
    :cond_5
    const/4 v0, 0x1

    .line 325
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    const-string v4, "+sip.rendering"

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    const-string v4, "no"

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 329
    const/4 v0, 0x0

    .line 332
    :cond_6
    return v0
.end method

.method private isDialogIdsEmpty()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I
    .locals 5
    .param p0, "callType"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 253
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v0

    .line 257
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "vttx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "vtrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "vttxrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "volteactive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 273
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapViceCallToImsCallProfileCallType unknown callType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v0

    .line 270
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 267
    :pswitch_1
    return v3

    .line 264
    :pswitch_2
    return v4

    .line 260
    :pswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x49d18576 -> :sswitch_5
        -0x3010b10d -> :sswitch_4
        -0x300af478 -> :sswitch_3
        0x376584 -> :sswitch_2
        0x3765c2 -> :sswitch_1
        0x7f00dbb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private preparePartialList()V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 93
    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 94
    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 21
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 337
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallPullInfo mDialogIds null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x0

    return-object v1

    .line 343
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, "extCallStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 347
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 348
    .local v3, "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 349
    .local v4, "callId":I
    iget-object v5, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 350
    .local v13, "remoteAddress":Landroid/net/Uri;
    iget-object v5, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 351
    .local v14, "localAddress":Landroid/net/Uri;
    move/from16 v15, p1

    move/from16 v12, p2

    invoke-static {v3, v15, v12}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z

    move-result v16

    .line 353
    .local v16, "isPullable":Z
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I

    move-result v17

    .line 354
    .local v17, "callState":I
    nop

    .line 355
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-static {v5}, Lorg/codeaurora/ims/parser/ImsViceParser;->mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I

    move-result v18

    .line 356
    .local v18, "callType":I
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallHeld(Ljava/lang/String;)Z

    move-result v19

    .line 358
    .local v19, "isHeld":Z
    new-instance v20, Landroid/telephony/ims/ImsExternalCallState;

    move-object/from16 v5, v20

    move v6, v4

    move-object v7, v13

    move-object v8, v14

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    invoke-direct/range {v5 .. v12}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;Landroid/net/Uri;ZIIZ)V

    .line 361
    .local v5, "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v3    # "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .end local v4    # "callId":I
    .end local v13    # "remoteAddress":Landroid/net/Uri;
    .end local v14    # "localAddress":Landroid/net/Uri;
    .end local v16    # "isPullable":Z
    .end local v17    # "callState":I
    .end local v18    # "callType":I
    .end local v19    # "isHeld":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    .end local v5    # "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    :cond_1
    move/from16 v15, p1

    return-object v1
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object v0
.end method

.method public updateViceXmlBytes([B)V
    .locals 5
    .param p1, "vicexml"    # [B

    .line 97
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VICE XML in string :- \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 104
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-static {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 105
    const-string v1, "*************New Vice Notification*****************"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 106
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 107
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
