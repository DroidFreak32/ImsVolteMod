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

    .line 1004
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1005
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1006
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1015
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1167
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1168
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_1

    .line 1169
    const-string v1, "Voice info: Result is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    goto/16 :goto_2

    .line 1173
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice info: Message exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1176
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$900(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .end local v0    # "ar":Landroid/os/AsyncResult;
    goto/16 :goto_2

    .line 1039
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1040
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$100(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1109
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1110
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 1111
    const-string v1, "Deflect error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1113
    :cond_3
    const-string v1, "Deflect success"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1115
    goto/16 :goto_2

    .line 1159
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1160
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 1161
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

    .line 1163
    :cond_4
    const-string v1, "RTT: EVENT_RTT_UPGRADE_CONFIRM_DONE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    goto/16 :goto_2

    .line 1155
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1156
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyResponse(Landroid/os/AsyncResult;)V

    .line 1157
    goto/16 :goto_2

    .line 1147
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1148
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 1149
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

    .line 1151
    :cond_5
    const-string v1, "RTT: EVENT_SEND_RTT_MESSAGE received"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    goto/16 :goto_2

    .line 1139
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1140
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1141
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

    .line 1143
    :cond_6
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyReceivedRttMessage(Ljava/lang/Object;)V

    .line 1145
    goto/16 :goto_2

    .line 1136
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$800(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 1137
    goto/16 :goto_2

    .line 1134
    :pswitch_9
    goto/16 :goto_2

    .line 1117
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1118
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_10

    .line 1119
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$602(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)Z

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    iget-object v3, v3, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_10

    .line 1122
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1123
    .local v3, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$600(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v4

    if-ne v4, v1, :cond_7

    .line 1124
    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1127
    :cond_7
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$700(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v1, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1128
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1129
    .end local v3    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_2

    .line 1044
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1045
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_8

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 1046
    const-string v3, "Add Participant error"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 1049
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1050
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1049
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 1053
    :cond_8
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInviteParticipantsRequestDelivered()V

    .line 1055
    :cond_9
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move v1, v2

    :goto_1
    invoke-static {v3, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$200(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 1056
    goto/16 :goto_2

    .line 1101
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1102
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_b

    .line 1103
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

    .line 1105
    :cond_b
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x8f

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$302(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    .line 1107
    goto/16 :goto_2

    .line 1087
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1088
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 1089
    const-string v1, "Resume error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1091
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$400(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1090
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1094
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 1095
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1096
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1095
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1071
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1072
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 1073
    const-string v1, "Hold error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1075
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$400(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 1074
    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$500(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    .line 1080
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 1081
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1082
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Landroid/os/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .line 1081
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 1064
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1065
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hangup error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    :cond_c
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$302(Lorg/codeaurora/ims/ImsCallSessionImpl;I)I

    .line 1069
    goto :goto_2

    .line 1058
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1059
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 1060
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

    .line 1017
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1018
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 1019
    const-string v1, "Dial error"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, "errorCode":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_d

    .line 1024
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/ims/ImsException;

    invoke-virtual {v3}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    .line 1026
    :cond_d
    const/16 v3, 0x70

    if-eq v1, v3, :cond_e

    const/16 v3, 0x96

    if-ne v1, v3, :cond_f

    .line 1029
    :cond_e
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$000(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const-string v4, "CallFailExtraCode"

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1031
    const/4 v1, 0x0

    .line 1033
    :cond_f
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const-string v5, "Dial Failed"

    invoke-direct {v4, v1, v2, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1035
    .end local v1    # "errorCode":I
    nop

    .line 1180
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_10
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method
