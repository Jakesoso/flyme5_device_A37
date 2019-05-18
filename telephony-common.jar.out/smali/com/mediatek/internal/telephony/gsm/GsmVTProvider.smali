.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
.super Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.source "GsmVTProvider.java"


# static fields
.field public static final MSG_ERROR_CAMERA:I = 0x8003

.field public static final MSG_ERROR_CODEC:I = 0x8004

.field public static final MSG_ERROR_REC:I = 0x8005

.field public static final MSG_ERROR_SERVER_DIED:I = 0x8002

.field public static final MSG_ERROR_SERVICE:I = 0x8001

.field public static final MSG_NOTIFY_CALL_ABNORMAL_END:I = 0x9

.field public static final MSG_NOTIFY_CALL_END:I = 0x8

.field public static final MSG_NOTIFY_CAM_CAP_CHANGED:I = 0x4007

.field public static final MSG_NOTIFY_DATA_USAGE_CHANGED:I = 0x4006

.field public static final MSG_NOTIFY_HANDLE_CALL_SESSION_EVT:I = 0x4003

.field public static final MSG_NOTIFY_LOCAL_SIZE_CHANGED:I = 0x4005

.field public static final MSG_NOTIFY_PEER_SIZE_CHANGED:I = 0x4004

.field public static final MSG_NOTIFY_RECEIVE_FIRSTFRAME:I = 0x1

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_COMPLETE:I = 0x7

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x6

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x4

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x5

.field public static final MSG_NOTIFY_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3

.field public static final MSG_NOTIFY_RECV_SESSION_CONFIG_REQ:I = 0x4001

.field public static final MSG_NOTIFY_RECV_SESSION_CONFIG_RSP:I = 0x4002

.field public static final MSG_NOTIFY_SNAPSHOT_DONE:I = 0x2

.field public static final MSG_PEER_CAMERA_CLOSE:I = 0xc

.field public static final MSG_PEER_CAMERA_OPEN:I = 0xb

.field public static final MSG_START_COUNTER:I = 0xa

.field static final TAG:Ljava/lang/String; = "GsmVTProvider"

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field private static mDefaultId:I


# instance fields
.field private mId:I

.field private mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "system/lib/mtk_vt_service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 94
    const-string v0, "GsmVTProvider"

    const-string v1, "New GsmVTProvider without id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 96
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 77
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New GsmVTProvider id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 80
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 83
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateEMParam()V

    .line 85
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nInitialization(I)I

    .line 87
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 88
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 90
    :cond_0
    return-void
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nGetCameraParameters(I)Ljava/lang/String;
.end method

.method public static native nGetCameraSensorCount(I)I
.end method

.method public static native nInitialization(I)I
.end method

.method public static native nRequestCallDataUsage(I)I
.end method

.method public static native nRequestCameraCapabilities(I)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(ILjava/lang/String;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetEM(III)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static native nUserInput(ILjava/lang/String;)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v5

    .line 292
    .local v5, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-nez v5, :cond_1

    .line 293
    const-string v9, "GsmVTProvider"

    const-string v10, "Error: post event to Call which is already release or has happen error before!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local p5    # "obj1":Ljava/lang/Object;
    .end local p6    # "obj2":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :cond_1
    const-string v9, "GsmVTProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "postEventFromNative ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sparse-switch p0, :sswitch_data_0

    .line 455
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :sswitch_0
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECEIVE_FIRSTFRAME"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 305
    :sswitch_1
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_SNAPSHOT_DONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 310
    :sswitch_2
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 315
    :sswitch_3
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 320
    :sswitch_4
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 325
    :sswitch_5
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 330
    :sswitch_6
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 336
    :sswitch_7
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_CALL_END / MSG_NOTIFY_CALL_ABNORMAL_END"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 338
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 340
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 344
    :sswitch_8
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 349
    :sswitch_9
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 354
    :sswitch_a
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v5, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 359
    :sswitch_b
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECV_SESSION_CONFIG_REQ"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 366
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_c
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_RECV_SESSION_CONFIG_RSP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v9

    check-cast p6, Ljava/lang/String;

    .end local p6    # "obj2":Ljava/lang/Object;
    invoke-static/range {p6 .. p6}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v10

    invoke-virtual {v5, p2, v9, v10}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 375
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :sswitch_d
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_HANDLE_CALL_SESSION_EVT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v5, p2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 381
    :sswitch_e
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_PEER_SIZE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move/from16 v0, p4

    invoke-virtual {v5, p2, p3, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changePeerDimensions(III)V

    goto/16 :goto_0

    .line 387
    :sswitch_f
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_LOCAL_SIZE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    :sswitch_10
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_DATA_USAGE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v5, p2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changeCallDataUsage(I)V

    goto/16 :goto_0

    .line 397
    :sswitch_11
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_NOTIFY_CAM_CAP_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v10, "GsmVTProvider"

    move-object/from16 v9, p5

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v9

    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->unflatten(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v3

    .line 404
    .local v3, "set":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;
    const-string v9, "max-zoom"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 405
    .local v7, "zoom_max":I
    const-string v9, "true"

    const-string v10, "zoom-supported"

    invoke-virtual {v3, v10}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 406
    .local v8, "zoom_support":Z
    const-string v9, "preview-size"

    invoke-virtual {v3, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->getSizeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 408
    .local v4, "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;>;"
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    iget v6, v9, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    .line 409
    .local v6, "width":I
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    iget v2, v9, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    .line 411
    .local v2, "height":I
    new-instance v1, Landroid/telecom/CameraCapabilities;

    int-to-float v9, v7

    invoke-direct {v1, v8, v9, v6, v2}, Landroid/telecom/CameraCapabilities;-><init>(ZFII)V

    .line 413
    .local v1, "camCap":Landroid/telecom/CameraCapabilities;
    invoke-virtual {v5, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V

    goto/16 :goto_0

    .line 417
    .end local v1    # "camCap":Landroid/telecom/CameraCapabilities;
    .end local v2    # "height":I
    .end local v3    # "set":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;
    .end local v4    # "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;>;"
    .end local v6    # "width":I
    .end local v7    # "zoom_max":I
    .end local v8    # "zoom_support":Z
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_12
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 419
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 421
    const v9, 0x8001

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 425
    :sswitch_13
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 427
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 431
    if-eqz v5, :cond_0

    .line 432
    const v9, 0x8002

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 437
    :sswitch_14
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_ERROR_CAMERA"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const v9, 0x8003

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 443
    :sswitch_15
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const v9, 0x8004

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 449
    :sswitch_16
    const-string v9, "GsmVTProvider"

    const-string v10, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const v9, 0x8005

    invoke-virtual {v5, v9}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0x4001 -> :sswitch_b
        0x4002 -> :sswitch_c
        0x4003 -> :sswitch_d
        0x4004 -> :sswitch_e
        0x4005 -> :sswitch_f
        0x4006 -> :sswitch_10
        0x4007 -> :sswitch_11
        0x8001 -> :sswitch_12
        0x8002 -> :sswitch_13
        0x8003 -> :sswitch_14
        0x8004 -> :sswitch_15
        0x8005 -> :sswitch_16
    .end sparse-switch
.end method

.method private static updateDefaultId()V
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    goto :goto_0
.end method

.method private updateEMParam()V
    .locals 6

    .prologue
    const/16 v5, 0x1c

    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-static {v1, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 154
    invoke-static {v2, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 155
    invoke-static {v2, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 156
    const/4 v0, 0x2

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 157
    invoke-static {v2, v3, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 158
    const/4 v0, 0x4

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 159
    const/4 v0, 0x5

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 160
    const/4 v0, 0x6

    invoke-static {v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 161
    invoke-static {v3, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 162
    invoke-static {v3, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 163
    const/4 v0, 0x4

    invoke-static {v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 164
    const/4 v0, 0x4

    invoke-static {v0, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 165
    const/4 v0, 0x5

    invoke-static {v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 166
    const/4 v0, 0x6

    invoke-static {v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 167
    const/4 v0, 0x7

    invoke-static {v0, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 168
    invoke-static {v4, v1, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 169
    invoke-static {v4, v2, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 170
    const/4 v0, 0x2

    invoke-static {v4, v0, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 171
    invoke-static {v4, v3, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 172
    const/16 v0, 0x9

    invoke-static {v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(III)I

    .line 173
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    return v0
.end method

.method public onOnUserInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 277
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nUserInput(ILjava/lang/String;)I

    .line 278
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestCallDataUsage(I)I

    .line 266
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestCameraCapabilities(I)I

    .line 262
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 241
    .local v1, "state":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v0

    .line 243
    .local v0, "qty":I
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 244
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    .line 255
    .local v1, "state":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v0

    .line 257
    .local v0, "qty":I
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 258
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 178
    const-string v0, "255"

    if-ne p1, v0, :cond_0

    .line 179
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nFinalization(I)I

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCamera(II)I

    goto :goto_0

    .line 184
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCamera(II)I

    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 223
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetDeviceOrientation(II)I

    .line 224
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 206
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 208
    if-nez p1, :cond_1

    .line 209
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    .line 214
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v0

    .line 216
    .local v0, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-eqz v0, :cond_0

    .line 217
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 220
    .end local v0    # "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    :cond_0
    return-void

    .line 211
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_0
.end method

.method public onSetPauseImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x1

    .line 189
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 191
    if-nez p1, :cond_1

    .line 192
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    .line 197
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v0

    .line 199
    .local v0, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-eqz v0, :cond_0

    .line 200
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 203
    .end local v0    # "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    :cond_0
    return-void

    .line 194
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_0
.end method

.method public onSetUIMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 272
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetUIMode(II)I

    .line 273
    return-void
.end method

.method public onSetZoom(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 227
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v1

    const-string v2, "zoom"

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->set(Ljava/lang/String;I)V

    .line 228
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "currentSeeting":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCameraParameters(ILjava/lang/String;)I

    .line 230
    return-void
.end method

.method public setId(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/16 v3, -0x2710

    .line 99
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, "GsmVTProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setId mId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    if-ne v0, v3, :cond_0

    .line 103
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 104
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 105
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 106
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nInitialization(I)I

    .line 108
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateEMParam()V

    .line 110
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    if-ne v0, v3, :cond_0

    .line 111
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 114
    :cond_0
    return-void
.end method
