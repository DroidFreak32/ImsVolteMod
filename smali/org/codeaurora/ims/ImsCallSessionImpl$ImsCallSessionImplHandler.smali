.class Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 941
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 942
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 975
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 976
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1045
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1046
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1047
    const-string v1, "Deflect error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1049
    :cond_1
    const-string v1, "Deflect success"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    goto/16 :goto_2

    .line 1095
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1096
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT:  upgarde response exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1099
    :cond_2
    const-string v1, "RTT: EVENT_RTT_UPGRADE_CONFIRM_DONE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_2

    .line 1091
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1092
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyResponse(Landroid/os/AsyncResult;)V

    .line 1093
    goto/16 :goto_2

    .line 1083
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1084
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: Send message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1087
    :cond_3
    const-string v1, "RTT: EVENT_SEND_RTT_MESSAGE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    goto/16 :goto_2

    .line 1075
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1076
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: Message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1079
    :cond_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyReceivedRttMessage(Ljava/lang/Object;)V

    .line 1081
    goto/16 :goto_2

    .line 1072
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$900(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 1073
    goto/16 :goto_2

    .line 1070
    :pswitch_8
    goto/16 :goto_2

    .line 1053
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1054
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    .line 1055
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$702(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_e

    .line 1058
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1059
    .local v3, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    if-ne v4, v1, :cond_5

    .line 1060
    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1063
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v1, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1064
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1065
    .end local v3    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_2

    .line 980
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 981
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 982
    const-string v3, "Add Participant error"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 985
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 986
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 985
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 989
    :cond_6
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestDelivered()V

    .line 991
    :cond_7
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_1
    invoke-static {v3, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$300(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 992
    goto/16 :goto_2

    .line 1037
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1038
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1041
    :cond_9
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x8f

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$402(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    .line 1043
    goto/16 :goto_2

    .line 1023
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1024
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 1025
    const-string v1, "Resume error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1027
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1026
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1030
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 1031
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1032
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1031
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1007
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1008
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 1009
    const-string v1, "Hold error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1011
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1010
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1016
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 1017
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1018
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1017
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1000
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1001
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_a

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hangup error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    :cond_a
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$402(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    .line 1005
    goto :goto_2

    .line 994
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 995
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 953
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 954
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 955
    const-string v1, "Dial error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_e

    .line 958
    const/4 v1, 0x0

    .line 959
    .local v1, "errorCode":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_b

    .line 960
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/ims/ImsException;

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    .line 962
    :cond_b
    const/16 v3, 0x70

    if-eq v1, v3, :cond_c

    const/16 v3, 0x96

    if-ne v1, v3, :cond_d

    .line 965
    :cond_c
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const-string v4, "CallFailExtraCode"

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 967
    const/4 v1, 0x0

    .line 969
    :cond_d
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const-string v5, "Dial Failed"

    invoke-direct {v4, v1, v2, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 971
    .end local v1    # "errorCode":I
    nop

    .line 1103
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method
