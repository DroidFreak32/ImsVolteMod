.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;
.super Landroid/os/Handler;
.source "ImsServiceSub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsServiceSubHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1446
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1447
    return-void
.end method

.method private extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 4
    .param p1, "combinedUris"    # Ljava/lang/String;

    .line 1556
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 1557
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1558
    .local v0, "uriStrings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    .line 1559
    .local v1, "uris":[Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1560
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1562
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 1556
    .end local v0    # "uriStrings":[Ljava/lang/String;
    .end local v1    # "uris":[Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRilRadioTech(Lorg/codeaurora/ims/ImsRegistrationInfo;)I
    .locals 3
    .param p1, "registration"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 1535
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    .line 1536
    return v1

    .line 1540
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1549
    goto :goto_0

    .line 1546
    :pswitch_0
    const/16 v1, 0x12

    .line 1547
    .local v1, "imsRat":I
    goto :goto_0

    .line 1542
    .end local v1    # "imsRat":I
    :cond_1
    const/16 v1, 0xe

    .line 1543
    .restart local v1    # "imsRat":I
    nop

    .line 1549
    :goto_0
    move v0, v1

    .line 1552
    .end local v1    # "imsRat":I
    .local v0, "imsRat":I
    return v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleImsStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1488
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v1, "handleImsStateChanged"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, "errorCode":I
    const/4 v1, 0x0

    .line 1491
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1492
    .local v2, "selfIdentityUrisCombined":Ljava/lang/String;
    const/4 v3, 0x2

    .line 1493
    .local v3, "regState":I
    const/4 v4, 0x0

    .line 1494
    .local v4, "imsRat":I
    const/4 v5, 0x0

    .line 1495
    .local v5, "selfIdentityUriStrings":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1496
    .local v6, "selfIdentityUris":[Landroid/net/Uri;
    if-eqz p1, :cond_2

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_2

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v7, v7, Lorg/codeaurora/ims/ImsRegistrationInfo;

    if-eqz v7, :cond_2

    .line 1497
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 1499
    .local v7, "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorCode()I

    move-result v0

    .line 1500
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 1501
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v2

    .line 1502
    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getState()I

    move-result v3

    .line 1503
    invoke-direct {p0, v7}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->getRilRadioTech(Lorg/codeaurora/ims/ImsRegistrationInfo;)I

    move-result v4

    .line 1504
    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    .line 1505
    iget-object v8, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v8, v8, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsServiceSub;->access$900(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 1507
    :cond_0
    if-eqz v2, :cond_1

    .line 1508
    nop

    .line 1509
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v6

    .line 1511
    .end local v7    # "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    :cond_1
    goto :goto_0

    .line 1512
    :cond_2
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v8, "handleImsStateChanged error"

    invoke-static {v7, v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1515
    :goto_0
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x3e8

    invoke-direct {v7, v8, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1519
    .local v7, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    move v8, v3

    .line 1520
    .local v8, "wfcRegState":I
    const/16 v9, 0xe

    if-ne v4, v9, :cond_3

    .line 1521
    const/4 v8, 0x2

    .line 1522
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v10, "VOLTE ims registered, WFC change to Not  registered"

    invoke-static {v9, v10}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1524
    :cond_3
    iget-object v9, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v9, v7, v8}, Lorg/codeaurora/ims/ImsServiceSub;->access$1000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;I)V

    .line 1526
    invoke-direct {p0, v3, v7, v4}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;I)V

    .line 1528
    if-eqz v6, :cond_4

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->selfIdentityUrisHaveChanged([Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1529
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 1530
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegAssociatedUriChange([Landroid/net/Uri;)V

    .line 1532
    :cond_4
    return-void
.end method

.method private notifyRegAssociatedUriChange([Landroid/net/Uri;)V
    .locals 2
    .param p1, "self_identity"    # [Landroid/net/Uri;

    .line 1476
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;[Landroid/net/Uri;)V

    .line 1482
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$700(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1483
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$700(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1485
    :cond_0
    return-void
.end method

.method private notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;I)V
    .locals 2
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I

    .line 1454
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1470
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$700(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1471
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$700(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1473
    :cond_0
    return-void
.end method

.method private selfIdentityUrisHaveChanged([Landroid/net/Uri;)Z
    .locals 4
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .line 1566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1567
    :cond_0
    const/4 v0, 0x0

    .line 1568
    .local v0, "changed":Z
    array-length v1, p1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    .line 1569
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1572
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 1573
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1574
    const/4 v0, 0x1

    .line 1575
    goto :goto_2

    .line 1572
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1570
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1579
    :cond_4
    :goto_2
    return v0
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .line 1583
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1102(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;

    goto :goto_0

    .line 1586
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1588
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1589
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1100(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1598
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1782
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1778
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1779
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$4200(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1780
    goto/16 :goto_0

    .line 1718
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1719
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1720
    goto/16 :goto_0

    .line 1774
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1775
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRegistrationBlockStatus(Landroid/os/AsyncResult;)V

    .line 1776
    goto/16 :goto_0

    .line 1770
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1771
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$4100(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1772
    goto/16 :goto_0

    .line 1766
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1767
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$4000(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1768
    goto/16 :goto_0

    .line 1762
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1763
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1764
    goto/16 :goto_0

    .line 1758
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1759
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1760
    goto/16 :goto_0

    .line 1754
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1755
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleParticipantStatusInfo(Landroid/os/AsyncResult;)V

    .line 1756
    goto/16 :goto_0

    .line 1750
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1751
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1752
    goto/16 :goto_0

    .line 1746
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1747
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3600(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1748
    goto/16 :goto_0

    .line 1742
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1743
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1744
    goto/16 :goto_0

    .line 1738
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1739
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1740
    goto/16 :goto_0

    .line 1734
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1735
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1736
    goto/16 :goto_0

    .line 1730
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1731
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3200(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1732
    goto/16 :goto_0

    .line 1726
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1727
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1728
    goto/16 :goto_0

    .line 1722
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1723
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$3000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1724
    goto/16 :goto_0

    .line 1687
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1688
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1689
    goto/16 :goto_0

    .line 1714
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1715
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1716
    goto/16 :goto_0

    .line 1710
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1711
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1712
    goto/16 :goto_0

    .line 1706
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1707
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2600(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1708
    goto/16 :goto_0

    .line 1702
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1703
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2500(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    .line 1704
    goto/16 :goto_0

    .line 1683
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1684
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$2000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1685
    goto/16 :goto_0

    .line 1699
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->access$2300(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V

    .line 1700
    goto/16 :goto_0

    .line 1691
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1692
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1693
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/CallModify;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$2200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V

    goto/16 :goto_0

    .line 1695
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error EVENT_MODIFY_CALL AsyncResult ar= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1697
    goto/16 :goto_0

    .line 1679
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1680
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1681
    goto/16 :goto_0

    .line 1675
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1676
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->handleRefreshConfInfo(Landroid/os/AsyncResult;)V

    .line 1677
    goto/16 :goto_0

    .line 1671
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1672
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1673
    goto/16 :goto_0

    .line 1613
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1614
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 1615
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v2, "Request turn on/off IMS failed"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1667
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1668
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1700(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1669
    goto/16 :goto_0

    .line 1663
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1664
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    .line 1665
    goto/16 :goto_0

    .line 1644
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1e
    goto/16 :goto_0

    .line 1631
    :pswitch_1f
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v1, "Received event: EVENT_GET_STATUS_UPDATE"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1632
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1633
    .local v0, "arResultSrv":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1634
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1636
    .local v1, "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    .line 1637
    .end local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto/16 :goto_0

    .line 1638
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v2, "IMS Service Status Update failed!"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1639
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1300(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 1641
    goto/16 :goto_0

    .line 1619
    .end local v0    # "arResultSrv":Landroid/os/AsyncResult;
    :pswitch_20
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v1, "Received event: EVENT_SRV_STATUS_UPDATE"

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$800(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1620
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1621
    .local v0, "arResult":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1622
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1624
    .restart local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V

    .line 1625
    .end local v1    # "responseArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    goto/16 :goto_0

    .line 1626
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v2, "IMS Service Status Update failed!"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1627
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1300(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 1629
    goto/16 :goto_0

    .line 1609
    .end local v0    # "arResult":Landroid/os/AsyncResult;
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1610
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    .line 1611
    goto :goto_0

    .line 1600
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1601
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 1603
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 1605
    :cond_3
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->handleImsStateChanged(Landroid/os/AsyncResult;)V

    .line 1607
    goto :goto_0

    .line 1646
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1647
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1648
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1649
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1500(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1650
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v2, "EVENT_CALL_STATE_CHANGE when Radio is Unavailable"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1651
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1652
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1600(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1653
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 1654
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1656
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v2, "EVENT_CALL_STATE_CHANGE with no calls ignored!"

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    goto :goto_0

    .line 1659
    :cond_6
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CALL_STATE_CHANGE exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$400(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 1661
    nop

    .line 1784
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_7
    :goto_0
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
.end method
