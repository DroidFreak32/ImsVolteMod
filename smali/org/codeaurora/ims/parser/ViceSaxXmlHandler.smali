.class public Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ViceSaxXmlHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

.field private mDialogInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDoesDialogHaveSubElement:Z

.field private mDoesDialogLocalHaveSubElement:Z

.field private mDoesRemoteDialogHaveSubElement:Z

.field private mDoesRouteSetHaveSubElement:Z

.field private mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

.field private mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalTargetSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaAttriSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRouteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogSubList:Ljava/util/List;
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

    .line 54
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    .line 52
    const-string v0, "ViceSaxXmlHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->LOGTAG:Ljava/lang/String;

    .line 55
    const-string v0, "ViceSaxXmlHandler"

    const-string v1, "ViceSaxxHandler: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    .line 57
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

    .line 336
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 337
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 338
    return-void
.end method

.method public dumpDialogInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 470
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 471
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 472
    .local v3, "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    const-string v4, "ViceSaxXmlHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpDialogInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] -> index , dialog ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", exclusive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", direction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", param name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", param val = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", remote identity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    .line 479
    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", local identity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    .line 481
    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 484
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 486
    .local v4, "mediaattri":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 487
    const-string v6, "ViceSaxXmlHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpDialogInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] -> index , dialog media type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 489
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", dialog media direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 491
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", dialog media port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 493
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 487
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 470
    .end local v3    # "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .end local v4    # "mediaattri":I
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 498
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    return-object v1

    .line 500
    .end local v0    # "size":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public endDocument()V
    .locals 3

    .line 460
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 461
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    nop

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 343
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_10

    .line 345
    const-string v0, "ViceSaxXmlHandler"

    const-string v1, "endelment:inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 347
    const-string v0, "sa:exclusive"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "sa:exclusive"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_SA attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "sa:exclusive"

    .line 351
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "sa:exclusive"

    .line 354
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    goto/16 :goto_0

    .line 355
    :cond_0
    const-string v0, "state"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "state"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_STATE attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "state"

    .line 359
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "state"

    .line 362
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 363
    :cond_1
    const-string v0, "duration"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "duration"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_DURATION attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "duration"

    .line 367
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :cond_2
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_REMOTE_IDENTITY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "identity"

    .line 373
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v3}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "identity"

    .line 377
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    goto :goto_0

    .line 379
    :cond_3
    const-string v0, "referred-by"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "referred-by"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_REFERRED_BY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "referred-by"

    .line 383
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 388
    :cond_5
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    if-eqz v0, :cond_7

    .line 389
    const-string v0, "hop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 390
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "hop"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_ROUTE_SET_HOP attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "hop"

    .line 393
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_6
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 398
    :cond_7
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_c

    .line 399
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_LOCAL_IDENTITY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "identity"

    .line 404
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v3}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "identity"

    .line 407
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    goto/16 :goto_1

    .line 409
    :cond_8
    const-string v0, "mediaType"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaType"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_TYPE attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "mediaType"

    .line 413
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "mediaType"

    .line 417
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    goto/16 :goto_1

    .line 418
    :cond_9
    const-string v0, "mediaDirection"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 419
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaDirection"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_DIRECTION attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "mediaDirection"

    .line 422
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "mediaDirection"

    .line 426
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    goto :goto_1

    .line 427
    :cond_a
    const-string v0, "port0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 428
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "port0"

    const/4 v3, 0x1

    .line 429
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_PORT attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "port0"

    .line 431
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "port0"

    .line 435
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    .line 437
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 440
    :cond_c
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    if-eqz v0, :cond_d

    .line 441
    const-string v0, "remote"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    .line 446
    :cond_d
    const-string v0, "mediaAttributes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v0, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_e
    const-string v0, "dialog"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 451
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_f
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 455
    :cond_10
    return-void
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 65
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", localname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", qName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v0, "dialog-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "dialog-info"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    const-string v2, "version"

    .line 82
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "state"

    const-string v2, "state"

    .line 84
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "entity"

    const-string v2, "entity"

    .line 86
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 89
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "version"

    .line 91
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "state"

    .line 92
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "entity"

    .line 93
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    const-string v0, "dialog"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 97
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "id"

    const-string v3, "id"

    .line 105
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "call-id"

    const-string v3, "call-id"

    .line 107
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local-tag"

    const-string v3, "local-tag"

    .line 109
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "remote-tag"

    const-string v3, "remote-tag"

    .line 111
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "direction"

    const-string v3, "direction"

    .line 113
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 116
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "id"

    .line 118
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "call-id"

    .line 119
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "local-tag"

    .line 120
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "remote-tag"

    .line 121
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "direction"

    .line 123
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "direction"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    .line 131
    :cond_1
    const-string v0, "sa:exclusive"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "state"

    .line 132
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "duration"

    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :cond_2
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 137
    :cond_3
    const-string v0, "replaces"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 139
    .local v0, "viceDialogReplacesElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "replaces"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 140
    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 142
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v2, "call-id"

    const-string v3, "call-id"

    .line 144
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "local-tag"

    const-string v3, "local-tag"

    .line 146
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "remote-tag"

    const-string v3, "remote-tag"

    .line 148
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "call-id"

    .line 151
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "local-tag"

    .line 152
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "remote-tag"

    .line 153
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "viceDialogReplacesElement":Lorg/codeaurora/ims/parser/Element;
    :cond_4
    const-string v0, "referred-by"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "referred-by"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 161
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 163
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_5
    const-string v0, "route-set"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "route-set"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 171
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    .line 173
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 174
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    const-string v0, "hop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    .line 179
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "hop"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "route-set"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 182
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 184
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_7
    const-string v0, "local"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 195
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 199
    :cond_8
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_9

    .line 201
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    .line 202
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 205
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 210
    :cond_9
    const-string v0, "target"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    if-nez v0, :cond_a

    .line 212
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    .line 213
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 216
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    .line 218
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 219
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "uri"

    const-string v3, "uri"

    .line 222
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "uri"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_a
    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 230
    .local v0, "viceDialogLocalParamElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "param"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 231
    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 233
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 235
    const-string v2, "pname"

    const-string v3, "pname"

    .line 236
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "pval"

    const-string v3, "pval"

    .line 238
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pname"

    .line 241
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pval"

    .line 242
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    const-string v3, "pname"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    const-string v3, "pval"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    .line 250
    .end local v0    # "viceDialogLocalParamElement":Lorg/codeaurora/ims/parser/Element;
    :cond_b
    const-string v0, "mediaAttributes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 251
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    .line 252
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 255
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    .line 257
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 258
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 260
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 263
    :cond_c
    const-string v0, "mediaType"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    .line 265
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaType"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 268
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 273
    :cond_d
    const-string v0, "mediaDirection"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    .line 275
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaDirection"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 278
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 283
    :cond_e
    const-string v0, "port0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 284
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    .line 285
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "port0"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 288
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 293
    :cond_f
    const-string v0, "remote"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 294
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "remote"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 298
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    .line 300
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 301
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 303
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    .line 306
    :cond_10
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-nez v0, :cond_11

    .line 308
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    .line 309
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "remote"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 317
    :cond_11
    const-string v0, "target"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRemoteDialogHaveSubElement:Z

    if-eqz v0, :cond_12

    .line 319
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    .line 320
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "uri"

    const-string v2, "uri"

    .line 326
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_12
    return-void
.end method
