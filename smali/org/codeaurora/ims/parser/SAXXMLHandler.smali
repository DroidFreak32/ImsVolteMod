.class public Lorg/codeaurora/ims/parser/SAXXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXXMLHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mConfDescSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

.field private mConfUriEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfUriSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfuri:Lorg/codeaurora/ims/parser/Element;

.field private mInConfDescription:Z

.field private mInUser:Z

.field private mIsDisconnectInfo:Z

.field private mIsEndPoint:Z

.field private mIsEnpointInfo:Z

.field private mIsJoiningInfo:Z

.field private mIsUserCallInfo:Z

.field private mIsassociated:Z

.field private mIscallinfo:Z

.field private mIsconuri:Z

.field private mIsentry:Z

.field private mIsmedia:Z

.field private mIsreferredInfo:Z

.field private mIsroles:Z

.field private mIsserviceuri:Z

.field private mMessageElement:Lorg/codeaurora/ims/parser/Element;

.field private mMessageSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersElement:Lorg/codeaurora/ims/parser/Element;

.field private mUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserEndPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserSubElementlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private usersubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 33
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 34
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 35
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 36
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    .line 38
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    .line 39
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 40
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 41
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 42
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsserviceuri:Z

    .line 43
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsmedia:Z

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 49
    const-string v0, "SAXXMLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->LOGTAG:Ljava/lang/String;

    .line 52
    const-string v0, "SAXXMLHandler"

    const-string v1, "New List obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 54
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 186
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method

.method public endDocument()V
    .locals 3

    .line 426
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 427
    const-string v0, "SAXXMLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    nop

    .line 431
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 192
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_29

    .line 194
    const-string v0, "SAXXMLHandler"

    const-string v1, "endelment:inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "display-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "maximum-user-count"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "maximum-user-count"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    goto :goto_1

    .line 205
    :cond_2
    const-string v0, "subject"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "subject"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_3
    const-string v0, "free-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "free-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_4
    const-string v0, "keywords"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "keywords"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v0, :cond_a

    .line 216
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 217
    .local v0, "mEntry":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "entry"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 218
    const-string v2, "conf_uris"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 219
    const-string v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    const-string v2, "display-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_6
    const-string v2, "uri"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 223
    const-string v2, "uri"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_7
    const-string v2, "purpose"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 226
    const-string v2, "purpose"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_8
    const-string v2, "entry"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_9
    const-string v2, "conf_uris"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 231
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 232
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 235
    .end local v0    # "mEntry":Lorg/codeaurora/ims/parser/Element;
    :cond_a
    :goto_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_28

    .line 236
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 237
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    .line 238
    .local v0, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 239
    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 242
    const-string v3, "display-text"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v3, :cond_b

    .line 245
    const-string v3, "display-text"

    iget-object v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_b
    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    if-eqz v3, :cond_10

    .line 249
    new-instance v3, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v3}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 250
    .local v3, "Associated":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 252
    const-string v4, "display-text"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_c

    .line 254
    const-string v4, "associated-aors"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 255
    const-string v4, "user"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 256
    const-string v4, "display-text"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 262
    :cond_c
    const-string v4, "uri"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_d

    .line 264
    const-string v4, "uri"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 269
    :cond_d
    const-string v4, "entry"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_e

    .line 271
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto :goto_3

    .line 273
    :cond_e
    const-string v4, "entry"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    if-eqz v4, :cond_f

    .line 275
    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 276
    .local v4, "Role":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 277
    const-string v5, "roles"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 278
    const-string v5, "associated-aors"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 279
    const-string v5, "entry"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    .end local v4    # "Role":Lorg/codeaurora/ims/parser/Element;
    :cond_f
    const-string v4, "languages"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 284
    const-string v4, "languages"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 284
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v3    # "Associated":Lorg/codeaurora/ims/parser/Element;
    :cond_10
    :goto_3
    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v3, :cond_25

    .line 294
    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    iget-object v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 295
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 294
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    .line 296
    .local v3, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 297
    const-string v4, "user"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v4, "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    const-string v5, "display-text"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 300
    const-string v5, "display-text"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 302
    :cond_11
    const-string v5, "status"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 303
    const-string v5, "status"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 305
    :cond_12
    const-string v5, "joining-method"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 306
    const-string v5, "joining-method"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 308
    :cond_13
    const-string v5, "disconnection-method"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 309
    const-string v5, "disconnection-method"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_14
    :goto_4
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    if-eqz v5, :cond_24

    .line 313
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    if-eqz v5, :cond_18

    .line 314
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 315
    .local v5, "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    const-string v6, "refrred"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 316
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 318
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 320
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 323
    :cond_15
    const-string v6, "reason"

    .line 324
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 325
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 328
    :cond_16
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 329
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v5    # "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    :cond_17
    :goto_5
    goto/16 :goto_8

    :cond_18
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    if-eqz v5, :cond_1c

    .line 333
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 334
    .local v5, "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    const-string v6, "joining-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 335
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 337
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 339
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 341
    :cond_19
    const-string v6, "reason"

    .line 342
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 343
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 345
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 343
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 346
    :cond_1a
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 347
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v5    # "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_1b
    :goto_6
    goto/16 :goto_8

    :cond_1c
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    if-eqz v5, :cond_20

    .line 351
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 352
    .local v5, "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 353
    const-string v6, "disconnection-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 354
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 357
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 360
    :cond_1d
    const-string v6, "reason"

    .line 361
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 362
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 365
    :cond_1e
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 366
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 366
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v5    # "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_1f
    :goto_7
    goto/16 :goto_8

    :cond_20
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    if-eqz v5, :cond_24

    .line 371
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 372
    .local v5, "UserCallInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 373
    const-string v6, "call-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 374
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v6, "display-text"

    .line 377
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 378
    const-string v6, "display-text"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 378
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 381
    :cond_21
    const-string v6, "call-id"

    .line 382
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 383
    const-string v6, "call-id"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 383
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 386
    :cond_22
    const-string v6, "from-tag"

    .line 387
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 388
    const-string v6, "from-tag"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 391
    :cond_23
    const-string v6, "to-tag"

    .line 392
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 393
    const-string v6, "to-tag"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .end local v5    # "UserCallInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_24
    :goto_8
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 400
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v3    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    .end local v4    # "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_25
    const-string v3, "associated-aors"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 403
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 405
    :cond_26
    const-string v3, "user"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 406
    const-string v3, "SAXXMLHandler"

    const-string v4, "User need to added end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 408
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 409
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 410
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 412
    :cond_27
    const-string v3, "users"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 414
    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v0    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    .end local v2    # "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_28
    const-string v0, "conference-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 422
    :cond_29
    return-void
.end method

.method public getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 67
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriEntryList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const-string v0, "conference-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "conference-info"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "state"

    const-string v2, "state"

    .line 83
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    const-string v2, "version"

    .line 85
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "entity"

    const-string v2, "entity"

    .line 87
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 90
    const-string v0, "SAXXMLHandler"

    const-string v1, "New ConfreInf obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const-string v0, "conference-description"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    const-string v0, "maximum-user-count"

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 103
    :cond_1
    const-string v0, "users"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 110
    :cond_2
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const-string v0, "SAXXMLHandler"

    const-string v2, "User need to added start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 113
    .local v0, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 114
    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 116
    const-string v2, "state"

    const-string v3, "state"

    .line 117
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "entity"

    const-string v3, "entity"

    .line 119
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 129
    .end local v0    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    goto/16 :goto_1

    :cond_3
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v0, :cond_4

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    goto/16 :goto_1

    .line 132
    :cond_4
    const-string v0, "associated-aors"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_5

    .line 134
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    goto/16 :goto_1

    .line 135
    :cond_5
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_6

    .line 137
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 138
    :cond_6
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_7

    .line 139
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 140
    :cond_7
    const-string v0, "roles"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 142
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 143
    :cond_8
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_9

    .line 144
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 145
    .local v0, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "endpoint"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 146
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 148
    const-string v2, "entity"

    const-string v3, "entity"

    .line 149
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 152
    .end local v0    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    goto :goto_1

    :cond_9
    const-string v0, "conf_uris"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 153
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 154
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conf_uris"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-description"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_a
    const-string v0, "entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    goto :goto_1

    .line 95
    :cond_b
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-description"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 162
    :cond_c
    :goto_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v0, :cond_10

    .line 163
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 164
    const-string v0, "refrred"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    goto :goto_2

    .line 166
    :cond_d
    const-string v0, "joining-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    goto :goto_2

    .line 168
    :cond_e
    const-string v0, "disconnection-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    goto :goto_2

    .line 170
    :cond_f
    const-string v0, "call-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 173
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 182
    :cond_10
    :goto_2
    return-void
.end method
