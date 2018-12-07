.class public Lorg/codeaurora/ims/ImsServiceSub;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "ImsServiceSub.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;,
        Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;,
        Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;
    }
.end annotation


# static fields
.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_GET_PACKET_COUNT:I = 0x12

.field private static final EVENT_GET_PACKET_ERROR_COUNT:I = 0x13

.field private static final IKEv2_AUTH_FAILURE:I = 0x5

.field private static final INVALID_FEATURE_VALUE:I = -0x2

.field private static final INVALID_RAT_VALUE:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSub"

.field private static final SERVICE_TYPE_MAX:I = 0x5

.field private static sTaskExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final EVENT_CALL_MODIFY:I

.field private final EVENT_CALL_STATE_CHANGE:I

.field private final EVENT_CALL_TRANSFER:I

.field private final EVENT_CANCEL_MODIFY_CALL:I

.field private final EVENT_CONFERENCE:I

.field private final EVENT_GEOLOCATION_INFO_REQUEST:I

.field private final EVENT_GEOLOCATION_RESPONSE:I

.field private final EVENT_GET_CALL_FORWARD_TIMER:I

.field private final EVENT_GET_CURRENT_CALLS:I

.field private final EVENT_GET_HANDOVER_CONFIG:I

.field private final EVENT_GET_SRV_STATUS:I

.field private final EVENT_GET_VOLTE_PREF:I

.field private final EVENT_HANDOVER_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_MWI:I

.field private final EVENT_PARTICIPANT_STATUS_INFO:I

.field private final EVENT_REFRESH_CONF_INFO:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SET_CALL_FORWARD_TIMER:I

.field private final EVENT_SET_HANDOVER_CONFIG:I

.field private final EVENT_SET_IMS_STATE:I

.field private final EVENT_SET_SRV_STATUS:I

.field private final EVENT_SET_VOLTE_PREF:I

.field private final EVENT_SRVCC_STATE_CHANGED:I

.field private final EVENT_SRV_STATUS_UPDATE:I

.field private final EVENT_SSAC_CHANGED:I

.field private final EVENT_SSAC_RESPONSE:I

.field private final EVENT_SUPP_SRV_UPDATE:I

.field private final EVENT_TTY_STATE_CHANGED:I

.field private final EVENT_VOPS_CHANGED:I

.field private final EVENT_VOPS_RESPONSE:I

.field private final EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

.field private final MAX_FEATURES_SUPPORTED:I

.field private final SSAC_VOICE_BARRING_ZERO:I

.field private mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

.field private mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mContext:Landroid/content/Context;

.field mDisabledFeatures:[I

.field mEnabledFeatures:[I

.field private mFeatureCallbackHandler:Landroid/os/Handler;

.field private mFeatureHandlerThread:Landroid/os/HandlerThread;

.field private mFeatureIsOpen:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

.field private mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

.field private mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

.field private mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

.field private mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

.field private mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private mMwiResponse:Lorg/codeaurora/ims/Mwi;

.field protected mPhoneId:I

.field private mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/codeaurora/ims/internal/IQtiImsExtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;

.field private mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "subController"    # Lorg/codeaurora/ims/ImsSubController;
    .param p5, "csCommandsInterface"    # Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    .line 203
    invoke-direct/range {p0 .. p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 79
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 91
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 92
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 94
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 95
    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 98
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 100
    iput-boolean v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 101
    iput-boolean v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 102
    iput v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->SSAC_VOICE_BARRING_ZERO:I

    .line 120
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsInterfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 129
    const/4 v3, 0x3

    iput v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->MAX_FEATURES_SUPPORTED:I

    .line 131
    const/4 v4, 0x1

    iput v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_STATE_CHANGE:I

    .line 132
    const/4 v5, 0x2

    iput v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_CHANGED:I

    .line 133
    iput v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_IMS_STATE_DONE:I

    .line 134
    const/4 v3, 0x4

    iput v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRV_STATUS_UPDATE:I

    .line 135
    const/4 v6, 0x5

    iput v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_SRV_STATUS:I

    .line 136
    const/4 v7, 0x6

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_SRV_STATUS:I

    .line 137
    const/4 v8, 0x7

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CURRENT_CALLS:I

    .line 138
    const/16 v8, 0x8

    iput v8, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SUPP_SRV_UPDATE:I

    .line 139
    const/16 v9, 0x9

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_IMS_STATE:I

    .line 140
    const/16 v9, 0xa

    iput v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_TTY_STATE_CHANGED:I

    .line 141
    const/16 v10, 0xb

    iput v10, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REFRESH_CONF_INFO:I

    .line 143
    const/16 v11, 0xc

    iput v11, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_HANDOVER_STATE_CHANGED:I

    .line 144
    const/16 v12, 0xd

    iput v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_MODIFY:I

    .line 145
    const/16 v13, 0xe

    iput v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_MWI:I

    .line 146
    const/16 v14, 0xf

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CONFERENCE:I

    .line 147
    const/16 v14, 0x10

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_CALL_FORWARD_TIMER:I

    .line 148
    const/16 v14, 0x11

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_CALL_FORWARD_TIMER:I

    .line 151
    const/16 v14, 0x14

    iput v14, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SRVCC_STATE_CHANGED:I

    .line 152
    const/16 v15, 0x15

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_INFO_REQUEST:I

    .line 153
    const/16 v15, 0x16

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GEOLOCATION_RESPONSE:I

    .line 154
    const/16 v15, 0x17

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOWIFI_CALL_QUALITY_UPDATE:I

    .line 155
    const/16 v15, 0x18

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CALL_TRANSFER:I

    .line 156
    const/16 v15, 0x19

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_CHANGED:I

    .line 157
    const/16 v15, 0x1a

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_CHANGED:I

    .line 158
    const/16 v15, 0x1b

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_VOPS_RESPONSE:I

    .line 159
    const/16 v15, 0x1c

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SSAC_RESPONSE:I

    .line 160
    const/16 v15, 0x1d

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_PARTICIPANT_STATUS_INFO:I

    .line 161
    const/16 v15, 0x1e

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_VOLTE_PREF:I

    .line 162
    const/16 v15, 0x1f

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_VOLTE_PREF:I

    .line 163
    const/16 v15, 0x20

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_GET_HANDOVER_CONFIG:I

    .line 164
    const/16 v15, 0x21

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_SET_HANDOVER_CONFIG:I

    .line 165
    const/16 v15, 0x22

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 166
    const/16 v15, 0x23

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->EVENT_CANCEL_MODIFY_CALL:I

    .line 178
    const/4 v15, -0x1

    iput v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 179
    new-array v15, v7, [I

    fill-array-data v15, :array_0

    iput-object v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    .line 187
    new-array v7, v7, [I

    fill-array-data v7, :array_1

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    .line 195
    new-instance v7, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v7}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 199
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    .line 204
    invoke-virtual {v0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 205
    move/from16 v7, p2

    iput v7, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 206
    move-object/from16 v15, p1

    iput-object v15, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    .line 207
    move-object/from16 v6, p3

    iput-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 208
    move-object/from16 v2, p4

    iput-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 209
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v12, v0}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)V

    .line 210
    const-string v12, "ImsServiceSub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[phoneId="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] Constructor :: Registering with Sub Controller."

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v9, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    invoke-direct {v9, v0}, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v9, Lorg/codeaurora/ims/ImsRegistrationImpl;

    invoke-direct {v9}, Lorg/codeaurora/ims/ImsRegistrationImpl;-><init>()V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    .line 215
    new-instance v9, Landroid/os/HandlerThread;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "FeatureHandlerThread"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 216
    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v9, Landroid/os/Handler;

    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 218
    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v12, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v10, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v11, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x15

    invoke-virtual {v3, v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1a

    invoke-virtual {v3, v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1d

    invoke-virtual {v3, v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v3, v4, v5, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    move-object/from16 v3, p5

    iput-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 233
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mRilCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-interface {v4, v5, v14, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x17

    invoke-virtual {v4, v5, v9, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    new-instance v4, Lorg/codeaurora/ims/ImsEcbmImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, v0, v5}, Lorg/codeaurora/ims/ImsEcbmImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 242
    new-instance v4, Lorg/codeaurora/ims/ImsUtImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, v9}, Lorg/codeaurora/ims/ImsUtImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    .line 245
    new-instance v4, Lorg/codeaurora/ims/ImsConfigImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0, v5, v9}, Lorg/codeaurora/ims/ImsConfigImpl;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 248
    new-instance v4, Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v9, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 251
    new-instance v4, Lorg/codeaurora/ims/ImsSmsImpl;

    iget v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-object v9, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v4, v5, v9}, Lorg/codeaurora/ims/ImsSmsImpl;-><init>(ILorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 254
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 257
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    invoke-virtual {v4, v5, v8, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    new-instance v4, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v4}, Lorg/codeaurora/ims/Mwi;-><init>()V

    iput-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 261
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v8, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-virtual {v4, v5, v8, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    .line 267
    new-instance v1, Lorg/codeaurora/ims/ImsServiceStateReceiver;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-direct {v1, v0, v4, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 268
    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 273
    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->queryServiceStatus(Landroid/os/Message;)V

    .line 275
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->initServiceStatus()V

    return-void
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCalls(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSuppSvc(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleTtyModeChange(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleHandover(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleConferenceResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvccResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/CallModify;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/Message;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleMwiNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCancelModifyCallResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationRequest(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleGeolocationResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 76
    invoke-static {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleCallTransferResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleVops(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsac(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3300(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$3900(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsServiceSub;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;I)V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsServiceSub;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$802(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/HashSet;

    .line 76
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mSelfIndentityUris:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsServiceSub;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->handleSrvStatusUpdate(Ljava/util/ArrayList;)V

    return-void
.end method

.method private broadcastVopsSsacIntent()V
    .locals 3

    .line 2052
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2054
    const-string v1, "Vops"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2055
    const-string v1, "Ssac"

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVopsSsacIntent Vops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , Ssac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2058
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2059
    return-void
.end method

.method private canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1127
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convertQtiImsTransferTypeToImsQmiType(I)I
    .locals 1
    .param p1, "type"    # I

    .line 992
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1000
    return p1

    .line 996
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 994
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 998
    :cond_0
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallsListToClear()Ljava/lang/Object;
    .locals 2

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "mmTelCallsList":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallsListToClear()Ljava/lang/Object;

    move-result-object v0

    .line 366
    :cond_0
    return-object v0
.end method

.method private static getFeature(II)I
    .locals 2
    .param p0, "capability"    # I
    .param p1, "radioTech"    # I

    .line 665
    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    const/4 v1, -0x2

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    .line 685
    return v1

    .line 671
    :pswitch_0
    if-nez p1, :cond_0

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    const/4 v0, 0x3

    .line 671
    :goto_0
    return v0

    .line 667
    :pswitch_1
    if-nez p1, :cond_1

    .line 668
    const/4 v0, 0x0

    goto :goto_1

    .line 669
    :cond_1
    const/4 v0, 0x2

    .line 667
    :goto_1
    return v0

    .line 683
    :cond_2
    return v1

    .line 675
    :cond_3
    if-nez p1, :cond_4

    .line 676
    goto :goto_2

    .line 677
    :cond_4
    const/4 v0, 0x5

    .line 675
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1957
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    .line 1960
    :cond_0
    const-string v0, "getImsConfigListener returns null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNetworkTypeFromRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 701
    const/4 v0, -0x2

    .line 702
    .local v0, "network":I
    packed-switch p0, :pswitch_data_0

    .line 710
    const/4 v0, -0x2

    goto :goto_0

    .line 707
    :pswitch_0
    const/16 v0, 0x12

    .line 708
    goto :goto_0

    .line 704
    :pswitch_1
    const/16 v0, 0xd

    .line 705
    nop

    .line 712
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 1733
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1734
    :cond_0
    const/4 v0, 0x1

    .line 1733
    :goto_0
    return v0
.end method

.method private getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2190
    const/4 v0, 0x0

    .line 2191
    .local v0, "status":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2193
    const/4 v0, 0x1

    .line 2195
    :cond_0
    return v0
.end method

.method private static getSetCapabilityFailError(Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)I
    .locals 3
    .param p0, "reason"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 740
    const/4 v0, -0x1

    .line 741
    .local v0, "error":I
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub$3;->$SwitchMap$org$codeaurora$ims$ImsConfigImpl$SetCapabilityFailCause:[I

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 746
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :pswitch_1
    const/4 v0, -0x1

    .line 744
    nop

    .line 748
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallTransferResponse(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1934
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1937
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1938
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1940
    const/4 v1, 0x1

    .line 1942
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCallTransferResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1945
    if-eqz v0, :cond_1

    .line 1947
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1948
    :catch_0
    move-exception v2

    .line 1949
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCallTransferResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1950
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1952
    :cond_1
    const-string v2, "handleCallTransferResponse: no listener is available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1954
    :goto_1
    return-void
.end method

.method private handleCalls(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1187
    const-string v0, ">handleCalls"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v0, "dcList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1191
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .local v1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_0
    goto :goto_1

    .line 1192
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1199
    .restart local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :goto_1
    nop

    .line 1202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v2, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    if-eqz v1, :cond_1

    .line 1205
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/DriverCallIms;

    .line 1206
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCalls: dc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    .end local v4    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_2

    .line 1211
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v3, :cond_2

    .line 1212
    const-string v3, "handleCalls :: Null mTracker!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1215
    :cond_2
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->updateCallTransferInfo(Ljava/util/ArrayList;)V

    .line 1217
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 1219
    :goto_3
    return-void

    .line 1199
    .end local v1    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .end local v2    # "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_3
    return-void
.end method

.method private handleCancelModifyCallResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1837
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 1840
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    const/4 v1, 0x0

    .line 1841
    .local v1, "nStatus":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1843
    const/4 v1, 0x1

    .line 1844
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    const-string v3, "Cancel upgrade failed"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1846
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCancelModifyCallResponse: Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    if-eqz v0, :cond_1

    .line 1851
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v2

    .line 1853
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleCancelModifyCallResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1854
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1856
    :cond_1
    const-string v2, "handleCancelModifyCallResponse: no listener is available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1858
    :goto_1
    return-void
.end method

.method private handleConferenceResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 345
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleConferenceResult(Landroid/os/AsyncResult;)V

    .line 346
    return-void
.end method

.method private handleGeolocationRequest(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1870
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/GeoLocationInfo;

    .line 1871
    .local v0, "geoInfo":Lorg/codeaurora/ims/GeoLocationInfo;
    if-nez v0, :cond_0

    .line 1872
    const-string v1, "handleGeolocationRequest :: Null AsyncResult!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    return-void

    .line 1876
    :cond_0
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsServiceSub;->sTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;

    .line 1877
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v6

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/codeaurora/ims/ImsServiceSub$GeocoderTask;-><init>(Lorg/codeaurora/ims/ImsServiceSub;DD)V

    .line 1876
    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    goto :goto_0

    .line 1878
    :catch_0
    move-exception v1

    .line 1879
    .local v1, "rex":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGeolocationRequest :: Failure to start GeocoderTask thread for [lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLat()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " | long="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {v0}, Lorg/codeaurora/ims/GeoLocationInfo;->getLon()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "]!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 1884
    .end local v1    # "rex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private handleGeolocationResponse(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1861
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1862
    const-string v0, "handleGeolocationResponse :: Error response!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1867
    :cond_0
    return-void
.end method

.method private handleHandover(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1226
    const-string v0, "handleHandover"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1228
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/HoInfo;

    .line 1229
    .local v0, "handover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 1232
    .end local v0    # "handover":Lorg/codeaurora/ims/HoInfo;
    :cond_0
    goto :goto_0

    .line 1234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult exception in handleHandover- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    :goto_0
    return-void
.end method

.method private handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallModifyRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V

    .line 1352
    :cond_0
    return-void
.end method

.method private handleMwiNotification(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1965
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1966
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1967
    .local v0, "arMwiUpdate":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 1968
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1969
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/Mwi;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    .line 1970
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoiceMail()V

    goto :goto_0

    .line 1972
    :cond_0
    const-string v1, "handleMwiNotification arMwiUpdate.result null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    :cond_1
    const-string v1, "handleMwiNotification arMwiUpdate exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1977
    .end local v0    # "arMwiUpdate":Landroid/os/AsyncResult;
    :goto_0
    goto :goto_1

    .line 1978
    :cond_2
    const-string v0, "handleMwiNotification msg null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1980
    :goto_1
    return-void
.end method

.method private handleQueryVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2216
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2217
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v1

    .line 2218
    .local v1, "result":I
    const/4 v2, 0x2

    .line 2219
    .local v2, "preference":I
    if-nez v1, :cond_0

    .line 2221
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 2222
    .local v3, "pref":[I
    const/4 v4, 0x0

    aget v2, v3, v4

    .line 2224
    .end local v3    # "pref":[I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryVoltePrefResponse: result-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2227
    if-eqz v0, :cond_1

    .line 2229
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceQueried(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2230
    :catch_0
    move-exception v3

    .line 2231
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "handleQueryVoltePrefResponse exception!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2232
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2234
    :cond_1
    const-string v3, "handleQueryVoltePrefResponse: no listener is available"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2236
    :goto_1
    return-void
.end method

.method private handleSrvStatusUpdate(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .local p1, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    move-object/from16 v0, p0

    .line 776
    const/4 v1, 0x0

    .line 777
    .local v1, "isVideoEnabled":Z
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->resetFeatures()V

    .line 778
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ServiceStatus;

    .line 779
    .local v3, "update":Lorg/codeaurora/ims/ServiceStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    if-eqz v3, :cond_15

    iget-boolean v4, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    if-eqz v4, :cond_15

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-direct {v0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->isSrvTypeValid(I)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 782
    const/4 v4, 0x0

    .line 783
    .local v4, "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/4 v6, 0x4

    const/16 v7, 0x19

    if-ne v5, v7, :cond_0

    .line 784
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v4, v5, v6

    goto :goto_1

    .line 786
    :cond_0
    iget-object v5, v0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    iget v8, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    aget-object v4, v5, v8

    .line 788
    :goto_1
    iget-boolean v5, v3, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    iput-boolean v5, v4, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 789
    iget v5, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iput v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 790
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    if-eqz v5, :cond_1

    .line 791
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 792
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    iget-object v8, v3, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    array-length v8, v8

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->userdata:[B

    .line 794
    :cond_1
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_15

    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_15

    .line 795
    iget-object v5, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    new-array v5, v5, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 797
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call Type "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "has num updates = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 801
    .local v5, "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    move v9, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v9, "isVideoEnabled":Z
    :goto_2
    iget-object v10, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v10, v10

    if-ge v1, v10, :cond_14

    .line 802
    iget-object v10, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v10, v10, v1

    .line 804
    .local v10, "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StatusForAccessTech networkMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " registered = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " restrictCause = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    new-instance v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v11}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v11, v5, v1

    .line 810
    aget-object v11, v5, v1

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 811
    aget-object v11, v5, v1

    iget v12, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    iput v12, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 812
    iget v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v11, v12, :cond_2

    iget v11, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    if-eqz v11, :cond_2

    .line 814
    aget-object v11, v5, v1

    iput v13, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    goto :goto_3

    .line 816
    :cond_2
    aget-object v11, v5, v1

    iget v14, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v14, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 818
    :goto_3
    aget-object v11, v5, v1

    iget v11, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    iput v11, v4, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 819
    aget-object v11, v5, v1

    iget v14, v10, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    iput v14, v11, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 820
    const/4 v11, -0x1

    .line 821
    .local v11, "feature":I
    aget-object v14, v5, v1

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x12

    if-eq v14, v15, :cond_4

    aget-object v14, v5, v1

    iget v14, v14, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v15, 0x13

    if-ne v14, v15, :cond_3

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move v14, v13

    .line 823
    .local v14, "modeWifi":Z
    :goto_5
    aget-object v15, v5, v1

    iget v15, v15, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/4 v6, -0x1

    if-eq v15, v6, :cond_6

    aget-object v15, v5, v1

    iget v15, v15, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    const/16 v8, 0xe

    if-ne v15, v8, :cond_5

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    goto :goto_7

    :cond_6
    :goto_6
    move v8, v13

    .line 825
    .local v8, "modeLte":Z
    :goto_7
    if-nez v14, :cond_7

    if-eqz v8, :cond_13

    .line 826
    :cond_7
    iget v15, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    const/4 v6, 0x3

    if-nez v15, :cond_9

    .line 827
    if-eqz v8, :cond_8

    .line 828
    nop

    .line 829
    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move v15, v12

    :goto_8
    move v11, v15

    goto :goto_b

    .line 830
    :cond_9
    iget v15, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v15, v7, :cond_b

    .line 831
    if-eqz v8, :cond_a

    .line 832
    nop

    .line 833
    const/4 v15, 0x4

    goto :goto_9

    :cond_a
    const/4 v15, 0x5

    :goto_9
    move v11, v15

    goto :goto_b

    .line 835
    :cond_b
    if-eqz v8, :cond_c

    .line 836
    nop

    .line 837
    move v15, v13

    goto :goto_a

    :cond_c
    move v15, v6

    :goto_a
    move v11, v15

    .line 839
    :goto_b
    aget-object v15, v5, v1

    iget v15, v15, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eq v15, v12, :cond_10

    aget-object v12, v5, v1

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v12, v13, :cond_d

    goto :goto_c

    .line 851
    :cond_d
    aget-object v12, v5, v1

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-eqz v12, :cond_e

    aget-object v12, v5, v1

    iget v12, v12, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    if-ne v12, v6, :cond_13

    .line 854
    :cond_e
    if-ne v9, v13, :cond_f

    if-eq v11, v13, :cond_13

    if-eq v11, v6, :cond_13

    .line 858
    :cond_f
    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v11, v6, v11

    .line 859
    iget-object v6, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v12, -0x1

    aput v12, v6, v11

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "disabledFeature = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v8    # "modeLte":Z
    .end local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v11    # "feature":I
    .end local v14    # "modeWifi":Z
    goto :goto_d

    .line 841
    .restart local v8    # "modeLte":Z
    .restart local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .restart local v11    # "feature":I
    .restart local v14    # "modeWifi":Z
    :cond_10
    :goto_c
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    aput v11, v12, v11

    .line 842
    iget-object v12, v0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    const/4 v15, -0x1

    aput v15, v12, v11

    .line 844
    if-eq v11, v13, :cond_11

    if-ne v11, v6, :cond_12

    .line 848
    :cond_11
    const/4 v9, 0x1

    .line 850
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "enabledFeature = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    .end local v8    # "modeLte":Z
    .end local v10    # "actUpdate":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .end local v11    # "feature":I
    .end local v14    # "modeWifi":Z
    :cond_13
    :goto_d
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x4

    goto/16 :goto_2

    .line 868
    .end local v1    # "i":I
    .end local v3    # "update":Lorg/codeaurora/ims/ServiceStatus;
    .end local v4    # "srvSt":Lorg/codeaurora/ims/ServiceStatus;
    .end local v5    # "actSt":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_14
    move v1, v9

    .end local v9    # "isVideoEnabled":Z
    .local v1, "isVideoEnabled":Z
    :cond_15
    goto/16 :goto_0

    .line 871
    :cond_16
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->updateMmTelCapabilities()V

    .line 872
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 874
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_17

    .line 875
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    goto :goto_e

    .line 877
    :cond_17
    const-string v2, "handleSrvStatusUpdate :: tracker null; not updating global VT capability"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    :goto_e
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 884
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_18

    .line 885
    new-instance v2, Landroid/util/Pair;

    .line 886
    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 887
    .local v2, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v3, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 888
    .end local v2    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    goto :goto_f

    .line 889
    :cond_18
    const-string v2, "handleSrvStatusUpdate :: mCapabilitiesChangedRegistrants null"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    :goto_f
    return-void
.end method

.method private handleSrvccResponse(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->calculateOverallSrvccState([I)V

    goto :goto_0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_SRVCC_STATE_CHANGED tracker is null or srvcc exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void
.end method

.method private handleSsac(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2040
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2043
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsac voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2045
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2046
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    goto :goto_1

    .line 2047
    :cond_1
    const-string v0, "handleSsac exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    :goto_1
    return-void
.end method

.method private handleSsacResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2091
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2092
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SsacInfo;

    .line 2094
    .local v0, "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSsacResponse voice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2095
    invoke-virtual {v0}, Lorg/codeaurora/ims/SsacInfo;->getBarringFactorVoice()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    .line 2097
    if-eqz p1, :cond_1

    .line 2099
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsSsacVoiceBarred:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifySsacStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    goto :goto_1

    .line 2100
    :catch_0
    move-exception v1

    .line 2101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2104
    .end local v0    # "ssacInd":Lorg/codeaurora/ims/SsacInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 2105
    :cond_2
    const-string v0, "handleSsacResponse exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2107
    :goto_2
    return-void
.end method

.method private handleSuppSvc(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1244
    const-string v0, "handleSuppSvc"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1246
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 1247
    .local v0, "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1248
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 1250
    .end local v0    # "supp_svc_unsol":Lorg/codeaurora/ims/SuppNotifyInfo;
    :cond_0
    goto :goto_0

    .line 1252
    :cond_1
    const-string v0, "AsyncResult exception in handleSuppSvc."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    :goto_0
    return-void
.end method

.method private handleTtyModeChange(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1261
    const-string v0, "handleTtyModeChange"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 1263
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1264
    .local v0, "mode":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_TTY_STATE_CHANGED mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleTtyModeChangeUnsol(I)V

    .line 1268
    .end local v0    # "mode":[I
    :cond_0
    goto :goto_0

    .line 1269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_TTY_STATE_CHANGED AsyncResult ar= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    :goto_0
    return-void
.end method

.method private handleUpdateVoltePrefResponse(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2199
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsInterfaceListener(Landroid/os/AsyncResult;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v0

    .line 2200
    .local v0, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtOperationStatus(Landroid/os/AsyncResult;)I

    move-result v1

    .line 2201
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateVoltePrefResponse: result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2204
    if-eqz v0, :cond_0

    .line 2206
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v0, v2, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onVoltePreferenceUpdated(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2207
    :catch_0
    move-exception v2

    .line 2208
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "handleUpdateVoltePrefResponse exception!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2209
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 2211
    :cond_0
    const-string v2, "handleUpdateVoltePrefResponse: no listener is available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2213
    :goto_1
    return-void
.end method

.method private handleVoWiFiCallQuality(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2003
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2004
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 2005
    .local v0, "voWifiCallQuality":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 2006
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_0

    .line 2007
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateVoWiFiCallQuality(I)V

    goto :goto_0

    .line 2009
    :cond_0
    const-string v1, "Wifi Quality Error -- tracker is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2012
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoWiFiCallQuality received VoWiFIQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    .end local v0    # "voWifiCallQuality":[I
    :goto_0
    goto :goto_1

    .line 2016
    :cond_2
    const-string v0, "handleVoWiFiCallQuality response is not valid"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    :goto_1
    return-void
.end method

.method private handleVops(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2029
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2032
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2033
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->broadcastVopsSsacIntent()V

    .line 2034
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    goto :goto_0

    .line 2035
    :cond_0
    const-string v0, "handleVops exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2037
    :goto_0
    return-void
.end method

.method private handleVopsResponse(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2072
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2073
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VopsInfo;

    .line 2075
    .local v0, "vops":Lorg/codeaurora/ims/VopsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/VopsInfo;->isVopsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    .line 2076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vops Response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2078
    if-eqz p1, :cond_0

    .line 2080
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mIsVopsEnabled:Z

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyVopsStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    goto :goto_0

    .line 2081
    :catch_0
    move-exception v1

    .line 2082
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2085
    .end local v0    # "vops":Lorg/codeaurora/ims/VopsInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 2086
    :cond_1
    const-string v0, "handleVopsResponse exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    :goto_1
    return-void
.end method

.method private initServiceStatus()V
    .locals 6

    .line 321
    const/4 v0, 0x5

    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    .line 322
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 323
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    aput-object v4, v3, v2

    .line 328
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v4, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 329
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v4, v3, v1

    .line 330
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/16 v4, 0xe

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 331
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 332
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v3, v3, v1

    const/4 v5, 0x2

    iput v5, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 333
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mServiceStatus:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v3, v3, v2

    iput v4, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 4
    .param p0, "blockStatus"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 2270
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2271
    nop

    .line 2272
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    .line 2275
    .local v0, "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2277
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 2281
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 2283
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 2275
    :cond_0
    return v1

    .line 2285
    .end local v0    # "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    :cond_1
    return v1
.end method

.method private isImsExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1110
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 1112
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1110
    :goto_0
    return v0
.end method

.method private isSrvTypeValid(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 758
    const/4 v0, 0x1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 759
    return v0

    .line 761
    :cond_0
    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    goto :goto_1

    .line 762
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 761
    :goto_1
    return v0
.end method

.method private notifyFeatureCapabilityChange()V
    .locals 2

    .line 574
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsServiceSub$1;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 582
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    :cond_0
    return-void
.end method

.method private onGetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 22
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 1774
    move-object/from16 v13, p2

    const/4 v2, 0x0

    .line 1775
    .local v2, "startHour":I
    const/4 v3, 0x0

    .line 1776
    .local v3, "endHour":I
    const/4 v4, 0x0

    .line 1777
    .local v4, "startMinute":I
    const/4 v5, 0x0

    .line 1778
    .local v5, "endMinute":I
    const/4 v6, 0x0

    .line 1779
    .local v6, "reason":I
    const/4 v7, 0x0

    .line 1780
    .local v7, "status":I
    const/4 v8, 0x0

    .line 1781
    .local v8, "number":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1783
    .local v9, "serviceClass":I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 1784
    const-string v0, "get CF Timer error!"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    :try_start_0
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {v12, v0, v11, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    goto :goto_0

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUTReqFailed exception!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1790
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1792
    :cond_0
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1793
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    if-eqz v0, :cond_2

    .line 1794
    const-string v0, "onGetCallForwardTimerDone ImsCallForwardTimerInfo instance! "

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1795
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1796
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    nop

    .local v11, "i":I
    :goto_1
    array-length v14, v0

    if-ge v11, v14, :cond_1

    .line 1797
    aget-object v14, v0, v11

    iget v2, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 1798
    aget-object v14, v0, v11

    iget v3, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 1799
    aget-object v14, v0, v11

    iget v4, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 1800
    aget-object v14, v0, v11

    iget v5, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 1801
    aget-object v14, v0, v11

    iget v6, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 1802
    aget-object v14, v0, v11

    iget v7, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 1803
    aget-object v14, v0, v11

    iget-object v8, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 1804
    aget-object v14, v0, v11

    iget v9, v14, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 1796
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1806
    .end local v0    # "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v11    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_3

    .line 1807
    const-string v0, "onGetCallForwardTimerDone CallForwardInfo instance! "

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1808
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1809
    .local v0, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    nop

    .restart local v11    # "i":I
    :goto_2
    array-length v14, v0

    if-ge v11, v14, :cond_3

    .line 1810
    aget-object v14, v0, v11

    iget v6, v14, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1811
    aget-object v14, v0, v11

    iget v7, v14, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1812
    aget-object v14, v0, v11

    iget-object v8, v14, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1813
    aget-object v14, v0, v11

    iget v9, v14, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1809
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1818
    .end local v0    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "startHour":I
    .end local v3    # "endHour":I
    .end local v4    # "startMinute":I
    .end local v5    # "endMinute":I
    .end local v6    # "reason":I
    .end local v7    # "status":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "serviceClass":I
    .end local v11    # "i":I
    .local v14, "reason":I
    .local v15, "startHour":I
    .local v16, "endHour":I
    .local v17, "startMinute":I
    .local v18, "endMinute":I
    .local v19, "status":I
    .local v20, "number":Ljava/lang/String;
    .local v21, "serviceClass":I
    :cond_3
    :goto_3
    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v14, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    if-eqz v12, :cond_5

    .line 1819
    if-nez v14, :cond_4

    .line 1821
    :try_start_1
    iget v3, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    move-object v2, v12

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v14

    move/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    invoke-interface/range {v2 .. v11}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetCallForwardUncondTimer(IIIIIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1823
    :catch_1
    move-exception v0

    .line 1824
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "onGetCallForwardTimerDone exception!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1825
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 1828
    :cond_4
    :try_start_2
    iget v0, v1, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 v2, 0x324

    invoke-interface {v12, v0, v2, v10}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1831
    goto :goto_5

    .line 1829
    :catch_2
    move-exception v0

    .line 1830
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUTReqFailed exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1834
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_5
    return-void
.end method

.method private onGetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2239
    if-eqz p1, :cond_2

    .line 2241
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 2242
    .local v0, "status":I
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2243
    goto :goto_1

    .line 2244
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2245
    .local v1, "result":I
    :goto_1
    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v2, v0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetHandoverConfig(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":I
    goto :goto_2

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2248
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 2250
    :cond_2
    const-string v0, "onGetHandoverConfigDone listener is not valid !!!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2252
    :goto_3
    return-void
.end method

.method private onGetPacketCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1705
    if-eqz p1, :cond_2

    .line 1707
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 1708
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1709
    .local v1, "result":J
    :goto_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v3, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":J
    goto :goto_2

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPacketCountDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1712
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1714
    :cond_2
    const-string v0, "onGetPacketCountDone listener is not valid !!!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    :goto_3
    return-void
.end method

.method private onGetPacketErrorCountDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1719
    if-eqz p1, :cond_2

    .line 1721
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 1722
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1723
    .local v1, "result":J
    :goto_1
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v3, v0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onGetPacketErrorCount(IIJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":J
    goto :goto_2

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetPacketErrorCountDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 1728
    :cond_2
    const-string v0, "onGetPacketErrorCountDone listener is not valid !!!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1730
    :goto_3
    return-void
.end method

.method private onSetCallForwardTimerDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 1738
    const/4 v0, 0x0

    .line 1739
    .local v0, "status":I
    if-eqz p1, :cond_2

    .line 1740
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1741
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1742
    .local v1, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v1}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v2

    .line 1743
    .local v2, "failCause":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetCallForwardTimerDone Failure cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1747
    :try_start_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/16 v4, 0x324

    .line 1748
    invoke-virtual {v1}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    .line 1747
    invoke-interface {p1, v3, v4, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    goto :goto_0

    .line 1749
    :catch_0
    move-exception v3

    .line 1750
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUTReqFailed exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1752
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1755
    .end local v1    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v2    # "failCause":Ljava/lang/String;
    :cond_0
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1756
    const-string v1, "set CF Timer error!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1758
    :try_start_1
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onUTReqFailed(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1759
    :catch_1
    move-exception v1

    .line 1760
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUTReqFailed exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 1763
    :cond_1
    const-string v1, "set CF Timer success!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1765
    :try_start_2
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetCallForwardUncondTimer(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1768
    goto :goto_2

    .line 1766
    :catch_2
    move-exception v1

    .line 1767
    .restart local v1    # "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCallForwardTimerDone exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    return-void
.end method

.method private onSetHandoverConfigDone(Lorg/codeaurora/ims/internal/IQtiImsExtListener;Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2255
    if-eqz p1, :cond_1

    .line 2257
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getOperationStatus(Z)I

    move-result v0

    .line 2258
    .local v0, "status":I
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->onSetHandoverConfig(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    goto :goto_1

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetHandoverConfigDone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2261
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 2263
    :cond_1
    const-string v0, "onSetHandoverConfigDone listener is not valid !!!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2265
    :goto_2
    return-void
.end method

.method private resetFeatures()V
    .locals 3

    .line 768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 769
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 770
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    aput v2, v1, v0

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 773
    return-void
.end method

.method private sendBroadcastForDisconnected(Landroid/telephony/ims/ImsReasonInfo;I)V
    .locals 3
    .param p1, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "regState"    # I

    .line 1355
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1357
    const-string v1, "stateChanged"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1358
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1359
    const-string v1, "sendBroadcastForDisconnected"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method private sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V
    .locals 6
    .param p1, "cp"    # Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .param p2, "enable"    # Z

    .line 635
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getFeature(II)I

    move-result v0

    .line 636
    .local v0, "feature":I
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getNetworkTypeFromRadioTech(I)I

    move-result v1

    .line 637
    .local v1, "rat":I
    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 643
    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/codeaurora/ims/ImsServiceSub$SetCapabilityListener;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsServiceSub$1;)V

    .line 642
    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->setCapabilityValue(IIILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V

    .line 644
    return-void

    .line 638
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities :: Invalid CapabilityPair feature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method private updateCallTransferInfo(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 1134
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallTransferEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    return-void

    .line 1138
    :cond_0
    const/4 v0, 0x0

    .line 1140
    .local v0, "nTransferableCalls":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1141
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1142
    add-int/lit8 v0, v0, 0x1

    .line 1144
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_1
    goto :goto_0

    .line 1145
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer is possible for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " calls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1165
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1166
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1167
    const/4 v3, 0x7

    iput v3, v2, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    .line 1171
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_3
    goto :goto_1

    .line 1172
    :cond_4
    goto :goto_3

    .line 1156
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 1157
    .restart local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceSub;->canTransfer(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1158
    const/4 v3, 0x3

    iput v3, v2, Lorg/codeaurora/ims/DriverCallIms;->mEctMask:I

    .line 1161
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_5
    goto :goto_2

    .line 1162
    :cond_6
    nop

    .line 1178
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMmTelCapabilities()V
    .locals 8

    .line 535
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ge v3, v1, :cond_0

    aget v7, v0, v3

    .line 536
    .local v7, "enabledFeature":I
    packed-switch v7, :pswitch_data_0

    .end local v7    # "enabledFeature":I
    goto :goto_1

    .line 547
    .restart local v7    # "enabledFeature":I
    :pswitch_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .end local v7    # "enabledFeature":I
    goto :goto_1

    .line 543
    .restart local v7    # "enabledFeature":I
    :pswitch_1
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v5, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 544
    goto :goto_1

    .line 539
    :pswitch_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v4, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 540
    nop

    .line 535
    .end local v7    # "enabledFeature":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mDisabledFeatures:[I

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 551
    .local v3, "disabledFeature":I
    packed-switch v3, :pswitch_data_1

    .end local v3    # "disabledFeature":I
    goto :goto_3

    .line 562
    .restart local v3    # "disabledFeature":I
    :pswitch_3
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .end local v3    # "disabledFeature":I
    goto :goto_3

    .line 558
    .restart local v3    # "disabledFeature":I
    :pswitch_4
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 559
    goto :goto_3

    .line 554
    :pswitch_5
    iget-object v7, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v7, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 555
    nop

    .line 550
    .end local v3    # "disabledFeature":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMmTelCapabilities :: mMmtelCapabilities updated to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMmtelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateVoiceMail()V
    .locals 4

    .line 1983
    const/4 v0, 0x0

    .line 1984
    .local v0, "count":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mMwiResponse:Lorg/codeaurora/ims/Mwi;

    iget-object v1, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    .line 1985
    .local v2, "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    if-nez v3, :cond_0

    .line 1986
    iget v1, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    add-int/2addr v1, v0

    iget v3, v2, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    add-int v0, v1, v3

    .line 1988
    goto :goto_1

    .line 1990
    .end local v2    # "msgSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    :cond_0
    goto :goto_0

    .line 1993
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceMail count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyVoiceMessageCountUpdate(I)V

    .line 1996
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 1308
    :cond_0
    const-string v0, "ImsServiceClassTracker not found."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    :goto_0
    return-void
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 612
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 617
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    .line 619
    .local v1, "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    const-string v2, "changeEnabledCapabilities :: No CapabilityPair objects to process!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    return-void

    .line 624
    :cond_1
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilityCallback:Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 627
    .local v3, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V

    .line 628
    .end local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 629
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 630
    .restart local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->sendChangeCapabilityRequest(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;Z)V

    .line 631
    .end local v3    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 632
    :cond_3
    return-void

    .line 613
    .end local v0    # "capsToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    .end local v1    # "capsToDisable":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    :cond_4
    :goto_2
    const-string v0, "changeEnabledCapabilities :: Invalid argument(s)."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 417
    const-string v0, "createCallProfile :: Null ImsServiceClassTracker!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_0
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 423
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "session":Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v1, :cond_0

    .line 435
    const-string v1, "createCallSession :: Null ImsServiceClassTracker!"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0
.end method

.method public dispose()V
    .locals 3

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V

    .line 296
    const-string v0, "ImsServiceSub"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 299
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureHandlerThread:Landroid/os/HandlerThread;

    .line 300
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    .line 302
    :cond_0
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    .line 303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsServiceStateReceiver:Lorg/codeaurora/ims/ImsServiceStateReceiver;

    .line 305
    return-void
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 1288
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallForwardUncondTimer reason is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 937
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 936
    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 938
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsEcbmImpl:Lorg/codeaurora/ims/ImsEcbmImpl;

    return-object v0
.end method

.method public getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1095
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getHandoverConfig(Landroid/os/Message;)V

    .line 1097
    return-void
.end method

.method public getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsReg:Lorg/codeaurora/ims/ImsRegistrationImpl;

    return-object v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 2294
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsMultiEndpointImpl:Lorg/codeaurora/ims/ImsMultiEndpointImpl;

    return-object v0
.end method

.method public getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 941
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketCount(Landroid/os/Message;)V

    .line 943
    return-void
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 946
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getPacketErrorCount(Landroid/os/Message;)V

    .line 948
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    .line 1295
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    return v0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 1

    .line 470
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsSms:Lorg/codeaurora/ims/ImsSmsImpl;

    return-object v0
.end method

.method public bridge synthetic getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->getUt()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Lorg/codeaurora/ims/ImsUtImpl;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mImsUtImpl:Lorg/codeaurora/ims/ImsUtImpl;

    return-object v0
.end method

.method public handleParticipantStatusInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2115
    if-eqz p1, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 2116
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 2118
    .local v0, "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 2119
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleParticipantStatusInfo operation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2124
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2127
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2129
    .local v3, "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :try_start_0
    iget v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    .line 2130
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getOperation()I

    move-result v5

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getSipStatus()I

    move-result v6

    .line 2131
    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getParticipantUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;->getIsEct()Z

    move-result v8

    .line 2129
    invoke-interface/range {v3 .. v8}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->notifyParticipantStatusInfo(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    goto :goto_1

    .line 2132
    :catch_0
    move-exception v2

    .line 2133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2135
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :goto_1
    goto :goto_0

    .line 2136
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_1
    goto :goto_4

    .line 2120
    .restart local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "participant listeners size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isTrackerPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2122
    return-void

    .line 2137
    .end local v0    # "participantInfo":Lorg/codeaurora/ims/ParticipantStatusDetails;
    :cond_4
    const-string v0, "ParticipantStatusInfo exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    :goto_4
    return-void
.end method

.method public handleRefreshConfInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1331
    const-string v0, "handleRefreshConfInfo"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ConfInfo;

    .line 1334
    .local v0, "confInfo":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleRefreshConfInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 1337
    .end local v0    # "confInfo":Lorg/codeaurora/ims/ConfInfo;
    :cond_0
    goto :goto_0

    .line 1338
    :cond_1
    if-eqz p1, :cond_2

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed @handleRefreshConfInfo --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1342
    :cond_2
    const-string v0, "Failed @handleRefreshConfInfo --> AsyncResult is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    :goto_0
    return-void
.end method

.method public handleRegistrationBlockStatus(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 2147
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2148
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 2152
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2153
    nop

    .line 2154
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    .line 2157
    .local v1, "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2158
    new-instance v2, Lorg/codeaurora/ims/ImsServiceSub$2;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsServiceSub$2;-><init>(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 2170
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2171
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2175
    .end local v0    # "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .end local v1    # "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 2176
    :cond_1
    const-string v0, "Async result is null or exception is not null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2178
    :goto_0
    return-void
.end method

.method public isVideoSupported()Z
    .locals 3

    .line 894
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    .line 908
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoiceSupported()Z
    .locals 3

    .line 901
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 2

    .line 913
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFeatureReady()V
    .locals 3

    .line 376
    const-string v0, "onFeatureReady"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 378
    const-string v0, "onFeatureReady :: creating ImsServiceClassTracker"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 380
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateFeatureCapabilities(ZZ)V

    .line 383
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 388
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 1

    .line 392
    const-string v0, "onFeatureRemoved"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mFeatureIsOpen:Z

    .line 394
    return-void
.end method

.method onIccLoaded()V
    .locals 1

    .line 752
    const-string v0, "onIccLoaded..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceSub;->notifyFeatureCapabilityChange()V

    .line 754
    return-void
.end method

.method public onNewCall()V
    .locals 1

    .line 2301
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setServiceSubWithActiveCall(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 2302
    return-void
.end method

.method public onStackConfigChanged([Z)V
    .locals 3
    .param p1, "activeStacks"    # [Z

    .line 310
    :try_start_0
    const-string v0, "ImsServiceSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStackConfigChanged :: activeStacks["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    aget-boolean v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->setFeatureState(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ImsServiceSub"

    const-string v2, "onStackConfigChanged :: Invalid activeStacks length!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration :: capability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " radioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 518
    return v0

    .line 520
    :cond_0
    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getFeature(II)I

    move-result v1

    .line 521
    .local v1, "feature":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 522
    return v0

    .line 524
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mEnabledFeatures:[I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    .line 525
    .local v5, "enabledFeature":I
    if-ne v1, v5, :cond_2

    .line 526
    const/4 v0, 0x1

    return v0

    .line 524
    .end local v5    # "enabledFeature":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    :cond_3
    return v0
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2067
    const-string v0, "querySsacStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->querySsacStatus(Landroid/os/Message;)V

    .line 2069
    return-void
.end method

.method public queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVoltePref(Landroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2062
    const-string v0, "queryVopsStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2063
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVopsStatus(Landroid/os/Message;)V

    .line 2064
    return-void
.end method

.method public registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2021
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2022
    return-void
.end method

.method public registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1999
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mQtiImsParticipantStatusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    return-void
.end method

.method public removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 1319
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    goto :goto_0

    .line 1322
    :cond_0
    const-string v0, "ImsServiceClassTracker not found."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1324
    :goto_0
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 981
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 982
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 984
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    const-string v1, "resumePendingCall: no call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    return-void

    .line 988
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->resumePendingCall(I)V

    .line 989
    return-void
.end method

.method public sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1005
    const/4 v0, 0x1

    .line 1007
    .local v0, "returnError":Z
    const/4 v1, 0x4

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1011
    :pswitch_0
    if-nez p2, :cond_0

    .line 1013
    const-string v1, "sendCallTransferRequest: no target number"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1016
    :cond_0
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1018
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1020
    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1023
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1025
    const-string v2, "sendCallTransferRequest: no call available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToNumber()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1028
    const/4 v0, 0x0

    .line 1029
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1030
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1031
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v6

    const/4 v8, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1032
    invoke-virtual {v3, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1029
    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 1035
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCallTransferRequest: transfer not allowed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    .end local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_0
    goto/16 :goto_3

    .line 1043
    :cond_4
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1044
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1045
    .restart local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1047
    const-string v2, "sendCallTransferRequest: no active call available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1048
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1050
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1051
    .local v4, "nCallId":I
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v1

    .line 1052
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1054
    const-string v2, "sendCallTransferRequest: no held call available"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1055
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canTransferToId()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1057
    const/4 v0, 0x0

    .line 1058
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1059
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1060
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->convertQtiImsTransferTypeToImsQmiType(I)I

    move-result v7

    const/4 v8, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1061
    invoke-virtual {v3, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1058
    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 1063
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCallTransferRequest: held call transfer isnot allowed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1063
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    .end local v4    # "nCallId":I
    :goto_1
    goto :goto_2

    .line 1068
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCallTransferRequest: active call transfer isnot allowed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1068
    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    .end local v1    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_2
    nop

    .line 1078
    :goto_3
    if-eqz v0, :cond_a

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallTransferRequest: Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    if-eqz p3, :cond_9

    .line 1083
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p3, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCallTransferResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1085
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCallTransferRequest: exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_4
    goto :goto_5

    .line 1089
    :cond_9
    const-string v1, "sendCallTransferRequest: no listener is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    :cond_a
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 952
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 953
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 955
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    const-string v1, "sendCancelModifyCall: no call is available to cancel modify call"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 958
    if-eqz p1, :cond_0

    .line 960
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener;->receiveCancelModifyCallResponse(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "sendCancelModifyCall exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 966
    :cond_0
    const-string v1, "sendCancelModifyCall: no listener is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 970
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 971
    .local v1, "nCallId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCancelModifyCall: call ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x23

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelModifyCall(Landroid/os/Message;I)V

    .line 977
    .end local v1    # "nCallId":I
    :goto_1
    return-void
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 3
    .param p1, "sct"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 338
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mConferenceRequestedbyTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 342
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-object v0, p0

    .line 926
    const-string v1, "setCallForwardUncondTimer"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    iget-object v2, v0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 929
    const/16 v3, 0x10

    move-object/from16 v12, p9

    invoke-virtual {v1, v3, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 927
    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 930
    return-void
.end method

.method public setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "hoConfig"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 1100
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 1101
    const/16 v2, 0x21

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1100
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->setHandoverConfig(ILandroid/os/Message;)V

    .line 1102
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 461
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->setUiTTYMode(ILandroid/os/Message;)V

    .line 462
    return-void
.end method

.method public turnOffIms()V
    .locals 3

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 291
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 290
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 292
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 281
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    .line 282
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 281
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendImsRegistrationState(ILandroid/os/Message;)V

    .line 283
    return-void
.end method

.method public unregisterForCapabilitiesChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2025
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCapabilitiesChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2026
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->updateLowBatteryStatus()V

    .line 921
    :cond_0
    return-void
.end method

.method public updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "preference"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 2181
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->updateVoltePref(ILandroid/os/Message;)V

    .line 2182
    return-void
.end method
