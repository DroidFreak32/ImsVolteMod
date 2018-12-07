.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
.super Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 769
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioResponse$Stub;-><init>()V

    return-void
.end method

.method private sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 853
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 854
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 855
    return-void

    .line 858
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .line 859
    .local v1, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response - sip error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sip error string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 862
    return-void
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1167
    return-void
.end method

.method public answerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 882
    const-string v0, "Got answer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 884
    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1113
    const-string v0, "Got cancel modify call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1115
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 937
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 938
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1171
    const-string v0, "Got deflect call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1173
    return-void
.end method

.method public dialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 783
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 784
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got exitEmergencyCallbackModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1079
    return-void
.end method

.method public explicitCallTransferResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1125
    const-string v0, "Got explicit call transfer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1127
    return-void
.end method

.method public getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "inServiceStatus"    # I
    .param p4, "serviceClass"    # I
    .param p5, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 1009
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1010
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1011
    return-void

    .line 1013
    :cond_0
    const/4 v1, 0x0

    .line 1015
    .local v1, "response":[I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    .line 1016
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v3

    .line 1017
    .local v3, "outServiceStatus":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 1018
    new-array v1, v5, [I

    .line 1019
    aput v4, v1, v4

    goto :goto_0

    .line 1021
    :cond_1
    new-array v1, v2, [I

    .line 1022
    aput v5, v1, v4

    .line 1023
    aput p4, v1, v5

    .line 1027
    .end local v3    # "outServiceStatus":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    .line 943
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 944
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 945
    return-void

    .line 948
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 950
    .local v1, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    .line 951
    .local v2, "clipStatus":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 952
    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->clipStatusFromHal(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClipResponse from ImsRadio. Clipstatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    :cond_1
    iget-boolean v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->hasErrorDetails:Z

    if-eqz v3, :cond_2

    .line 958
    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClipResponse from ImsRadio. Errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 966
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 971
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 972
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 973
    return-void

    .line 976
    :cond_0
    const/4 v1, 0x0

    .line 978
    .local v1, "response":[I
    if-eqz p4, :cond_3

    .line 979
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 980
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 981
    const/4 v2, 0x0

    iget v4, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    aput v4, v1, v2

    .line 983
    :cond_1
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    if-eq v2, v3, :cond_2

    .line 984
    const/4 v2, 0x1

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    aput v3, v1, v2

    .line 986
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClirResponse from ImsRadio. param_m - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "param_n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 991
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    .line 1070
    nop

    .line 1071
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateColrInfoFromV10(Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    move-result-object v0

    .line 1072
    .local v0, "ci":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 1073
    return-void
.end method

.method public getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    .line 1039
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1040
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1041
    return-void

    .line 1044
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 1046
    .local v1, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    .line 1047
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v2

    .line 1046
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 1049
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->provisionStatus:I

    .line 1050
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v2

    .line 1049
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 1052
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->presentation:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationFromHal(I)I

    move-result v2

    .line 1053
    .local v2, "presentation":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1054
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. presentation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    :cond_1
    iget-boolean v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->hasErrorDetails:Z

    if-eqz v3, :cond_2

    .line 1059
    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v3, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1066
    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 820
    const-string v0, "Get config response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 822
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 823
    return-void

    .line 826
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$500(Lorg/codeaurora/ims/ImsSenderRxr;Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 827
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 1184
    const-string v0, "Received Subconfig response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1186
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1187
    return-void

    .line 1189
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v1

    .line 1190
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1191
    return-void
.end method

.method public getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 895
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 896
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 897
    return-void

    .line 900
    :cond_0
    const/4 v1, 0x0

    .line 901
    .local v1, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p3, :cond_1

    .line 902
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v1

    .line 904
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 905
    return-void
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpErrorStatisticsResponse from ImsRadio packetErrorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1154
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1155
    return-void

    .line 1157
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1158
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpStatisticsResponse from ImsRadio packetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1142
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1143
    return-void

    .line 1145
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1146
    return-void
.end method

.method public hangupResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 876
    const-string v0, "Got hangup response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 878
    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 871
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 872
    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1119
    const-string v0, "Got modify call confirm response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1121
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1107
    const-string v0, "Got modify call initiate response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1109
    return-void
.end method

.method public queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;",
            "Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;",
            ")V"
        }
    .end annotation

    .line 997
    .local p3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 998
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 999
    return-void

    .line 1002
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCFStatusResponseFromHal(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    .line 1003
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1004
    return-void
.end method

.method public queryServiceStatusResponse(IILjava/util/ArrayList;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p3, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const-string v0, "queryServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 835
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 836
    return-void

    .line 839
    :cond_0
    const/4 v1, 0x0

    .line 840
    .local v1, "ret":Ljava/lang/Object;
    if-eqz p3, :cond_1

    .line 841
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v1

    .line 843
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 844
    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1205
    .local p3, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 1206
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 1207
    return-void

    .line 1209
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/VirtualLineInfo;

    invoke-direct {v1, p2, p3}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1210
    .local v1, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryVirtualLineInfoResponse :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1212
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1201
    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 888
    const-string v0, "Got registration change response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 890
    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 866
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendSipErrorInfo(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 867
    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got sendDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1085
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1177
    const-string v0, "Received GeoLocationInfo response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1179
    return-void
.end method

.method public sendImsSmsResponse(IIII)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "smsStatusResult"    # I
    .param p4, "reason"    # I

    .line 795
    const-string v0, "Ims sms response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 797
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 798
    return-void

    .line 801
    :cond_0
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsResponsefromHidl(III)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v1

    .line 803
    .local v1, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 804
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1196
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setClirResponse from ImsRadio. error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1034
    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 808
    const-string v0, "Set config response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 810
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 811
    return-void

    .line 814
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$500(Lorg/codeaurora/ims/ImsSenderRxr;Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 815
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 816
    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 848
    const-string v0, "SetServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 850
    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 1132
    const-string v0, "Got set supp service notification response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1134
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setUiTTYModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1103
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got startDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1091
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got stopDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$200(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 1097
    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 930
    nop

    .line 931
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateSuppServiceStatusFromV10(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    move-result-object v0

    .line 932
    .local v0, "status":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 933
    return-void
.end method

.method public suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 910
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$300(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 911
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 912
    return-void

    .line 915
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provisionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " facilityType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failureCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    nop

    .line 923
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v1

    .line 924
    .local v1, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$400(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 925
    return-void
.end method
