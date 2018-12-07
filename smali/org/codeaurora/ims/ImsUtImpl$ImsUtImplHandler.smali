.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 644
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 645
    return-void
.end method

.method private handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "msg"    # Landroid/os/Message;

    .line 649
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 651
    .local v0, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v1, v0

    const/16 v2, 0x324

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    .line 652
    const-string v1, "ImsCallForwardTimerInfo[] has no elements!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v1

    iget v3, p2, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 655
    return-void

    .line 658
    :cond_0
    const/4 v1, 0x0

    .line 661
    .local v1, "badCfResponse":Z
    array-length v5, v0

    new-array v5, v5, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 664
    .local v5, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    move v6, v1

    move v1, v4

    .local v1, "i":I
    .local v6, "badCfResponse":Z
    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_5

    .line 665
    aget-object v7, v0, v1

    .line 666
    .local v7, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    new-instance v8, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v8}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 668
    .local v8, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v9, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-ne v9, v3, :cond_1

    .line 669
    iput v3, v8, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 671
    :cond_1
    iget v9, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v9, :cond_2

    .line 672
    iput v4, v8, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_1

    .line 675
    :cond_2
    const/4 v6, 0x1

    .line 676
    const-string v9, "Bad status in Query CFUT response."

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    :goto_1
    iget v9, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v9, :cond_3

    .line 680
    iput v4, v8, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_2

    .line 683
    :cond_3
    const/4 v6, 0x1

    .line 684
    const-string v9, "Bad reason in Query CFUT response."

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    :goto_2
    if-eqz v6, :cond_4

    .line 688
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v9, p2, Landroid/os/Message;->arg1:I

    new-instance v10, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v10, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v9, v10}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 690
    return-void

    .line 693
    :cond_4
    new-instance v9, Ljava/lang/String;

    iget-object v10, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v8, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 697
    aput-object v8, v5, v1

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    .end local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v8    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 702
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 706
    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/16 v7, 0x324

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_f

    .line 1309
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1310
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1311
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ims/ImsSsData;

    .line 1312
    .local v3, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 1313
    .end local v3    # "ssData":Landroid/telephony/ims/ImsSsData;
    goto/16 :goto_f

    .line 1314
    :cond_0
    const-string v3, "exception in handling UNSOL_ON_SS"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_f

    .line 794
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 795
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 796
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1

    .line 797
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    return-void

    .line 801
    :cond_1
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 802
    const-string v3, "Update CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 805
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 806
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 805
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 809
    :cond_2
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 810
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 811
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 812
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_3

    .line 813
    const-string v5, "SuppSvcResponse has failure for CB update."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 816
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 814
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 817
    return-void

    .line 818
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 819
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 821
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 822
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CB update failed with error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 825
    return-void

    .line 827
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 828
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_f

    .line 831
    :cond_5
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_f

    .line 712
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 713
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 714
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_6

    .line 715
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    return-void

    .line 719
    :cond_6
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 720
    const-string v3, "Query CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 723
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 724
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 723
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 727
    :cond_7
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 728
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 729
    .restart local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 730
    .restart local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_8

    .line 731
    const-string v5, "SuppSvcResponse has failure for CB query."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 734
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 732
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 735
    return-void

    .line 736
    :cond_8
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 737
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 739
    .restart local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 740
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CB query failed with error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 742
    return-void

    .line 744
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_9
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_a

    .line 745
    const-string v5, "No service status info in response for CB query."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v9, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v5, v6, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 750
    :cond_a
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 751
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v5, "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    nop

    .line 753
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v6

    .line 754
    .local v6, "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 755
    .local v8, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 756
    nop

    .line 757
    invoke-virtual {v8}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v9

    .line 758
    .local v9, "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 759
    .local v11, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    new-instance v12, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v12}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 760
    .local v12, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 761
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v13

    iput v13, v12, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 762
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    .end local v11    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    .end local v12    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_1

    .line 765
    .end local v8    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    .end local v9    # "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    :cond_b
    goto :goto_0

    .line 766
    :cond_c
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 768
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 767
    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 766
    invoke-virtual {v7, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 769
    .end local v5    # "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    .end local v6    # "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    goto :goto_3

    .line 770
    :cond_d
    new-array v5, v6, [Landroid/telephony/ims/ImsSsInfo;

    .line 771
    .local v5, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v7}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 772
    .local v7, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v9

    if-nez v9, :cond_e

    .line 773
    iput v8, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_2

    .line 774
    :cond_e
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v9

    if-ne v9, v6, :cond_f

    .line 775
    iput v6, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 777
    :cond_f
    :goto_2
    aput-object v7, v5, v8

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success callback Query Anonymous CB, status= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v7, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 784
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_3
    goto/16 :goto_f

    .line 786
    :cond_10
    const-string v3, "Null response received for Query CB!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1180
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1181
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 1182
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_11

    .line 1183
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    return-void

    .line 1186
    :cond_11
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 1187
    const-string v3, "Query COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1190
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1192
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1190
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1195
    :cond_12
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1198
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1199
    .restart local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1200
    .restart local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_13

    .line 1201
    const-string v5, "SuppSvcResponse has failure for COLP query."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1204
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1202
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_4

    .line 1205
    :cond_13
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    .line 1206
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1208
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1209
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "COLP query failed with error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1213
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_4

    .line 1215
    :cond_14
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1216
    .local v5, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1217
    .local v6, "clInfo":Landroid/os/Bundle;
    iget-object v7, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1218
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v7

    iput v7, v5, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 1219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " provision Status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v7

    iput v7, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    const-string v7, "imsSsInfo"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1228
    const-string v7, "Success callback called for Query COLP."

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1229
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1232
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "clInfo":Landroid/os/Bundle;
    :goto_4
    goto/16 :goto_f

    .line 1135
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1136
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1137
    .local v3, "colr":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_45

    .line 1138
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_15

    .line 1139
    const-string v4, "Invalid message id received in handleMessage."

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    return-void

    .line 1142
    :cond_15
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error for Query Event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_45

    .line 1146
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1147
    .restart local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_16

    .line 1148
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1151
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    .line 1152
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1148
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_5

    .line 1154
    :cond_16
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1156
    invoke-static {v7, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1154
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1158
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_f

    .line 1159
    :cond_17
    if-eqz v3, :cond_45

    .line 1160
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1161
    .local v4, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 1166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Provision Status= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1170
    .local v5, "clInfo":Landroid/os/Bundle;
    const-string v6, "imsSsInfo"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success callback on Query event= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1175
    .end local v4    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v5    # "clInfo":Landroid/os/Bundle;
    goto/16 :goto_f

    .line 1098
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "colr":Lorg/codeaurora/ims/SuppService;
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1099
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1100
    .local v3, "clipStatus":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_45

    .line 1101
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_18

    .line 1102
    const-string v4, "Invalid message id received in handleMessage."

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1103
    return-void

    .line 1105
    :cond_18
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error for Query Event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    iget-object v4, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_45

    .line 1108
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1109
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_19

    .line 1110
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1113
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    .line 1114
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1110
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_6

    .line 1116
    :cond_19
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1118
    invoke-static {v7, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1116
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1120
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    goto/16 :goto_f

    .line 1121
    :cond_1a
    if-eqz v3, :cond_45

    .line 1122
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1123
    .local v4, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1124
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1125
    .restart local v5    # "clInfo":Landroid/os/Bundle;
    const-string v6, "imsSsInfo"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success callback on Query event= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1130
    .end local v4    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v5    # "clInfo":Landroid/os/Bundle;
    goto/16 :goto_f

    .line 1241
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "clipStatus":Lorg/codeaurora/ims/SuppService;
    :pswitch_6
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1243
    .local v2, "error":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1244
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_45

    .line 1245
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_1b

    .line 1246
    const-string v4, "Invalid message id received in handleMessage."

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    return-void

    .line 1249
    :cond_1b
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    .line 1250
    iget v4, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1c

    .line 1251
    const-string v4, "Update CLIR error"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 1253
    :cond_1c
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1d

    .line 1254
    const-string v4, "Update CLIP error"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 1256
    :cond_1d
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1e

    .line 1257
    const-string v4, "Update COLR error"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    .line 1259
    :cond_1e
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1f

    .line 1260
    const-string v4, "Update COLP error"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    :cond_1f
    :goto_7
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_22

    .line 1265
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1267
    .local v4, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1268
    .local v5, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v5, :cond_20

    .line 1269
    const-string v6, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v8, v1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    .line 1274
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v10

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v7, v10, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1271
    invoke-virtual {v6, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_8

    .line 1275
    :cond_20
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    .line 1276
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1277
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SuppSvc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " failed, error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_8

    .line 1282
    :cond_21
    const-string v6, "ImsUtImpl"

    const-string v7, "SuppSvcResponse failure with neither errordetails nor failurecause"

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    iget-object v8, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1286
    invoke-static {v8, v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v8

    .line 1284
    invoke-virtual {v6, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1288
    .end local v4    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_8
    goto/16 :goto_f

    :cond_22
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_23

    .line 1289
    const-string v4, "ImsUtImpl"

    const-string v5, "SuppSvcResponse failure with valid userObj"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1292
    invoke-static {v6, v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1290
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1295
    :cond_23
    const-string v4, "ImsUtImpl"

    const-string v5, "SuppSvcResponse failure with neither ar.result nor userObj"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1299
    invoke-static {v6, v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1297
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1302
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success callback called for msg.what= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_f

    .line 1069
    .end local v2    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1070
    .local v2, "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 1071
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_25

    .line 1072
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1075
    :cond_25
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_27

    .line 1076
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_26

    .line 1077
    const-string v3, "Query CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    :cond_26
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1081
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1083
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1081
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1086
    :cond_27
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1087
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1088
    .local v3, "clirResp":[I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1089
    .local v4, "clirInfo":Landroid/os/Bundle;
    const-string v5, "queryClir"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1090
    const-string v5, "Calling success callback for Query CLIR."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 1093
    .end local v3    # "clirResp":[I
    .end local v4    # "clirInfo":Landroid/os/Bundle;
    goto/16 :goto_f

    .line 1013
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1014
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 1015
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_28

    .line 1016
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    return-void

    .line 1019
    :cond_28
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_29

    .line 1020
    const-string v3, "Query CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 1022
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1024
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1022
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 1027
    :cond_29
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    .line 1028
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1030
    .local v3, "cwResponse":[I
    new-array v4, v6, [Landroid/telephony/ims/ImsSsInfo;

    .line 1031
    .local v4, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 1033
    .local v5, "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v9, v3, v8

    if-ne v9, v6, :cond_2b

    .line 1034
    aget v7, v3, v6

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_2a

    .line 1035
    iput v6, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_9

    .line 1037
    :cond_2a
    iput v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_9

    .line 1040
    :cond_2b
    aget v6, v3, v8

    if-nez v6, :cond_2c

    .line 1041
    iput v8, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 1053
    :goto_9
    aput-object v5, v4, v8

    .line 1055
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1058
    .end local v3    # "cwResponse":[I
    .end local v4    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v5    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_f

    .line 1044
    .restart local v3    # "cwResponse":[I
    .restart local v4    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .restart local v5    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_2c
    const-string v6, "No service status received for CallWaitingInfo."

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v9, v1, Landroid/os/Message;->arg1:I

    new-instance v10, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v10, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1048
    return-void

    .line 1060
    .end local v3    # "cwResponse":[I
    .end local v4    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v5    # "callWaitingInfo":Landroid/telephony/ims/ImsSsInfo;
    :cond_2d
    const-string v3, "Null response received for Query CW!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 838
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 839
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 840
    iget v5, v1, Landroid/os/Message;->arg1:I

    if-gez v5, :cond_2e

    .line 841
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    return-void

    .line 844
    :cond_2e
    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_35

    .line 845
    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, v4, :cond_2f

    .line 846
    const-string v3, "Update CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 848
    :cond_2f
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v3, :cond_30

    .line 849
    const-string v3, "Update CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    :cond_30
    :goto_a
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_33

    .line 855
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 857
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 858
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_31

    .line 859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 863
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 861
    invoke-virtual {v5, v6, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_b

    .line 864
    :cond_31
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_32

    .line 865
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 868
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 869
    const-string v6, "ImsUtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SuppSvc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " failed with error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 873
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_b

    .line 874
    :cond_32
    const-string v5, "ImsUtImpl"

    const-string v6, "SuppSvcResponse failure with neither errordetails nor failurecause"

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 877
    invoke-static {v7, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 876
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 879
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    goto/16 :goto_f

    .line 880
    :cond_33
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 881
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 882
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 881
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 885
    :cond_34
    const-string v3, "ImsUtImpl"

    const-string v4, "SuppSvcResponse failure with neither ar.result nor userObj"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 888
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 887
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 892
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success callback called for msg.what= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_f

    .line 900
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 901
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_45

    .line 902
    iget v9, v1, Landroid/os/Message;->arg1:I

    if-gez v9, :cond_36

    .line 903
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    return-void

    .line 906
    :cond_36
    iget-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_37

    .line 907
    const-string v3, "Query CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_45

    .line 909
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 910
    invoke-static {v5, v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 909
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_f

    .line 913
    :cond_37
    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v9, :cond_44

    .line 914
    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v9, v9, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v9, :cond_38

    .line 915
    const-string v3, "Handle CFUT response"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 916
    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->handleCFUTResponse(Landroid/os/AsyncResult;Landroid/os/Message;)V

    .line 917
    return-void

    .line 919
    :cond_38
    iget-object v9, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 921
    .local v9, "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v10, v9

    if-ge v10, v6, :cond_39

    .line 922
    const-string v3, "CallForwardInfo[] has no elements!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 925
    return-void

    .line 928
    :cond_39
    const/4 v10, 0x0

    .line 931
    .local v10, "badCfResponse":Z
    array-length v11, v9

    new-array v11, v11, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 934
    .local v11, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    move v12, v10

    move v10, v8

    .local v10, "i":I
    .local v12, "badCfResponse":Z
    :goto_c
    array-length v13, v9

    if-ge v10, v13, :cond_43

    .line 935
    aget-object v13, v9, v10

    .line 936
    .local v13, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v14, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v14}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 938
    .local v14, "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v15, v6, :cond_3a

    .line 939
    iput v6, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_d

    .line 941
    :cond_3a
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v15, :cond_3b

    .line 942
    iput v8, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_d

    .line 945
    :cond_3b
    const/4 v12, 0x1

    .line 946
    const-string v15, "Bad status in Query CF response."

    invoke-static {v0, v15}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    :goto_d
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v15, :cond_3c

    .line 950
    iput v8, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_e

    .line 952
    :cond_3c
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v15, v6, :cond_3d

    .line 953
    iput v6, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_e

    .line 955
    :cond_3d
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v15, v4, :cond_3e

    .line 956
    iput v4, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 958
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v15, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    goto :goto_e

    .line 960
    :cond_3e
    iget v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v4, 0x3

    if-ne v15, v4, :cond_3f

    .line 961
    iput v4, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_e

    .line 963
    :cond_3f
    iget v4, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v4, v3, :cond_40

    .line 964
    iput v3, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_e

    .line 966
    :cond_40
    iget v4, v13, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v4, v5, :cond_41

    .line 967
    iput v5, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_e

    .line 970
    :cond_41
    const/4 v4, 0x1

    .line 971
    .end local v12    # "badCfResponse":Z
    .local v4, "badCfResponse":Z
    const-string v12, "Bad reason in Query CF response."

    invoke-static {v0, v12}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    move v12, v4

    .end local v4    # "badCfResponse":Z
    .restart local v12    # "badCfResponse":Z
    :goto_e
    if-eqz v12, :cond_42

    .line 986
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 989
    return-void

    .line 992
    :cond_42
    iget v4, v13, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v4, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 993
    new-instance v4, Ljava/lang/String;

    iget-object v15, v13, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 994
    iget v4, v13, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v4, v14, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 996
    aput-object v14, v11, v10

    .line 934
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x2

    goto :goto_c

    .line 999
    .end local v10    # "i":I
    .end local v13    # "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v14    # "callForwardInfo":Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_43
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v11}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1002
    .end local v9    # "cfInfoList":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v11    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    .end local v12    # "badCfResponse":Z
    goto :goto_f

    .line 1004
    :cond_44
    const-string v3, "Null response received for Query CF!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1319
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :cond_45
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
