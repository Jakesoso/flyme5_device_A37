.class public Lcom/oppo/media/OppoAudioService;
.super Landroid/media/AudioService;
.source "OppoAudioService.java"

# interfaces
.implements Lcom/oppo/media/IOppoAudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;,
        Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;
    }
.end annotation


# static fields
.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field public static final FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final OPPO_STEAM_VOLUME_OPS:[I

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = false

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OppoAudioService"

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z = true


# instance fields
.field STREAM_VOLUME_ALIAS_VOICE:Ljava/lang/reflect/Field;

.field mA2dp:Ljava/lang/reflect/Field;

.field mA2dpAvrcpLock:Ljava/lang/reflect/Field;

.field mAppOps:Ljava/lang/reflect/Field;

.field mAudioHandler:Ljava/lang/reflect/Field;

.field mAvrcpAbsVolSupported:Ljava/lang/reflect/Field;

.field mFixedVolumeDevices:Ljava/lang/reflect/Field;

.field mHasVibrator:Ljava/lang/reflect/Field;

.field mHdmiCecSink:Ljava/lang/reflect/Field;

.field mHdmiManager:Ljava/lang/reflect/Field;

.field mHdmiPlaybackClient:Ljava/lang/reflect/Field;

.field mHdmiSystemAudioSupported:Ljava/lang/reflect/Field;

.field mHdmiTvClient:Ljava/lang/reflect/Field;

.field private mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mOppoA2dpAvrcpLock:Ljava/lang/Object;

.field private mOppoAppOps:Landroid/app/AppOpsManager;

.field private mOppoAudioHandler:Landroid/os/Handler;

.field private mOppoAvrcpAbsVolSupported:Z

.field private mOppoContentResolver:Landroid/content/ContentResolver;

.field mOppoFixedVolumeDevices:I

.field private mOppoHasVibrator:Z

.field private mOppoHdmiCecSink:Z

.field private mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mOppoHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mOppoHdmiSystemAudioSupported:Z

.field private mOppoHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mOppoPendingVolumeCommand:Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

.field private mOppoPrevVolDirection:I

.field private mOppoRingerMode:I

.field private mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private final mOppoSafeMediaVolumeDevices:I

.field private mOppoSafeMediaVolumeIndex:I

.field private mOppoSafeMediaVolumeState:Ljava/lang/Integer;

.field private mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mOppoStreamVolumeAlias:[I

.field private mOppoUseFixedVolume:Z

.field private mOppoVolumeControlStream:I

.field private mOppoVolumeController:Landroid/media/AudioService$VolumeController;

.field mPendingVolumeCommand:Ljava/lang/reflect/Field;

.field mPrevVolDirection:Ljava/lang/reflect/Field;

.field mRingerMode:Ljava/lang/reflect/Field;

.field mRingerModeDelegate:Ljava/lang/reflect/Field;

.field mSafeMediaVolumeIndex:Ljava/lang/reflect/Field;

.field mSafeMediaVolumeState:Ljava/lang/reflect/Field;

.field mUseFixedVolume:Ljava/lang/reflect/Field;

.field mVolumeControlStream:Ljava/lang/reflect/Field;

.field mVolumeController:Ljava/lang/reflect/Field;

.field method_getActiveStreamType:Ljava/lang/reflect/Method;

.field method_getDeviceForStream:Ljava/lang/reflect/Method;

.field method_sendMsg:Ljava/lang/reflect/Method;

.field method_sendVolumeUpdate:Ljava/lang/reflect/Method;

.field method_setMasterMuteInternal:Ljava/lang/reflect/Method;

.field method_setStreamVolumeInt:Ljava/lang/reflect/Method;

.field method_setSystemAudioVolume:Ljava/lang/reflect/Method;

.field sLocalServiceObjects:Ljava/lang/reflect/Field;

.field private sOppoLocalServiceObjects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field streamStates:Ljava/lang/reflect/Field;

.field streamVolumeAlias:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/media/OppoAudioService;->OPPO_STEAM_VOLUME_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    .line 78
    const/16 v3, 0xc

    iput v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeDevices:I

    .line 91
    iput-boolean v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoAvrcpAbsVolSupported:Z

    .line 99
    iput-boolean v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiSystemAudioSupported:Z

    .line 114
    iput v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoFixedVolumeDevices:I

    .line 130
    iput v5, p0, Lcom/oppo/media/OppoAudioService;->mOppoPrevVolDirection:I

    .line 132
    const/4 v3, -0x1

    iput v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeControlStream:I

    .line 135
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_getActiveStreamType:Ljava/lang/reflect/Method;

    .line 136
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    .line 137
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    .line 138
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_sendMsg:Ljava/lang/reflect/Method;

    .line 139
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_setSystemAudioVolume:Ljava/lang/reflect/Method;

    .line 140
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_setStreamVolumeInt:Ljava/lang/reflect/Method;

    .line 141
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->method_setMasterMuteInternal:Ljava/lang/reflect/Method;

    .line 143
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->streamVolumeAlias:Ljava/lang/reflect/Field;

    .line 144
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->streamStates:Ljava/lang/reflect/Field;

    .line 145
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHasVibrator:Ljava/lang/reflect/Field;

    .line 146
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mPrevVolDirection:Ljava/lang/reflect/Field;

    .line 147
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mVolumeControlStream:Ljava/lang/reflect/Field;

    .line 148
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mVolumeController:Ljava/lang/reflect/Field;

    .line 149
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mUseFixedVolume:Ljava/lang/reflect/Field;

    .line 150
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mAppOps:Ljava/lang/reflect/Field;

    .line 151
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeState:Ljava/lang/reflect/Field;

    .line 152
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mPendingVolumeCommand:Ljava/lang/reflect/Field;

    .line 153
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeIndex:Ljava/lang/reflect/Field;

    .line 154
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mAvrcpAbsVolSupported:Ljava/lang/reflect/Field;

    .line 155
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mA2dp:Ljava/lang/reflect/Field;

    .line 156
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHdmiManager:Ljava/lang/reflect/Field;

    .line 157
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHdmiCecSink:Ljava/lang/reflect/Field;

    .line 158
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHdmiPlaybackClient:Ljava/lang/reflect/Field;

    .line 159
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mA2dpAvrcpLock:Ljava/lang/reflect/Field;

    .line 160
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mAudioHandler:Ljava/lang/reflect/Field;

    .line 161
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mFixedVolumeDevices:Ljava/lang/reflect/Field;

    .line 162
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mRingerMode:Ljava/lang/reflect/Field;

    .line 163
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->STREAM_VOLUME_ALIAS_VOICE:Ljava/lang/reflect/Field;

    .line 164
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHdmiTvClient:Ljava/lang/reflect/Field;

    .line 165
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mHdmiSystemAudioSupported:Ljava/lang/reflect/Field;

    .line 166
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->mRingerModeDelegate:Ljava/lang/reflect/Field;

    .line 167
    iput-object v4, p0, Lcom/oppo/media/OppoAudioService;->sLocalServiceObjects:Ljava/lang/reflect/Field;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    .line 196
    :try_start_0
    const-string v3, "android.media.AudioService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v3, "mStreamVolumeAlias"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->streamVolumeAlias:Ljava/lang/reflect/Field;

    .line 199
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->streamVolumeAlias:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 201
    const-string/jumbo v3, "mStreamStates"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->streamStates:Ljava/lang/reflect/Field;

    .line 202
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->streamStates:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    const-string/jumbo v3, "mHasVibrator"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHasVibrator:Ljava/lang/reflect/Field;

    .line 205
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHasVibrator:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 207
    const-string/jumbo v3, "mPrevVolDirection"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mPrevVolDirection:Ljava/lang/reflect/Field;

    .line 208
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mPrevVolDirection:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 210
    const-string/jumbo v3, "mVolumeControlStream"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mVolumeControlStream:Ljava/lang/reflect/Field;

    .line 211
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mVolumeControlStream:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    const-string/jumbo v3, "mVolumeController"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mVolumeController:Ljava/lang/reflect/Field;

    .line 214
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mVolumeController:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 216
    const-string/jumbo v3, "mUseFixedVolume"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mUseFixedVolume:Ljava/lang/reflect/Field;

    .line 217
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mUseFixedVolume:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 219
    const-string/jumbo v3, "mAppOps"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAppOps:Ljava/lang/reflect/Field;

    .line 220
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAppOps:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 222
    const-string/jumbo v3, "mSafeMediaVolumeState"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeState:Ljava/lang/reflect/Field;

    .line 223
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeState:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    const-string/jumbo v3, "mPendingVolumeCommand"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mPendingVolumeCommand:Ljava/lang/reflect/Field;

    .line 226
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mPendingVolumeCommand:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    const-string/jumbo v3, "mSafeMediaVolumeIndex"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeIndex:Ljava/lang/reflect/Field;

    .line 229
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeIndex:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 231
    const-string/jumbo v3, "mA2dp"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mA2dp:Ljava/lang/reflect/Field;

    .line 232
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mA2dp:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 234
    const-string/jumbo v3, "mAvrcpAbsVolSupported"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAvrcpAbsVolSupported:Ljava/lang/reflect/Field;

    .line 235
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAvrcpAbsVolSupported:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    const-string/jumbo v3, "mHdmiManager"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiManager:Ljava/lang/reflect/Field;

    .line 238
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiManager:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    const-string/jumbo v3, "mHdmiCecSink"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiCecSink:Ljava/lang/reflect/Field;

    .line 241
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiCecSink:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 243
    const-string/jumbo v3, "mHdmiTvClient"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiTvClient:Ljava/lang/reflect/Field;

    .line 244
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiTvClient:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    const-string/jumbo v3, "mHdmiSystemAudioSupported"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiSystemAudioSupported:Ljava/lang/reflect/Field;

    .line 247
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiSystemAudioSupported:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    const-string/jumbo v3, "mHdmiPlaybackClient"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiPlaybackClient:Ljava/lang/reflect/Field;

    .line 250
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mHdmiPlaybackClient:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 252
    const-string/jumbo v3, "mA2dpAvrcpLock"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mA2dpAvrcpLock:Ljava/lang/reflect/Field;

    .line 253
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mA2dpAvrcpLock:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 255
    const-string/jumbo v3, "mAudioHandler"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAudioHandler:Ljava/lang/reflect/Field;

    .line 256
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mAudioHandler:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    const-string/jumbo v3, "mFixedVolumeDevices"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mFixedVolumeDevices:Ljava/lang/reflect/Field;

    .line 259
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mFixedVolumeDevices:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 261
    const-string/jumbo v3, "mRingerMode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mRingerMode:Ljava/lang/reflect/Field;

    .line 262
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mRingerMode:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    const-string/jumbo v3, "mRingerModeDelegate"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mRingerModeDelegate:Ljava/lang/reflect/Field;

    .line 265
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mRingerModeDelegate:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    const-string v3, "getActiveStreamType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_getActiveStreamType:Ljava/lang/reflect/Method;

    .line 269
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_getActiveStreamType:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 271
    const-string v3, "getDeviceForStream"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    .line 272
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 274
    const-string/jumbo v3, "sendVolumeUpdate"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    .line 275
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 277
    const-string/jumbo v3, "sendMsg"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_sendMsg:Ljava/lang/reflect/Method;

    .line 278
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_sendMsg:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 280
    const-string/jumbo v3, "setStreamVolumeInt"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_setStreamVolumeInt:Ljava/lang/reflect/Method;

    .line 281
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_setStreamVolumeInt:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 283
    const-string/jumbo v3, "setMasterMuteInternal"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_setMasterMuteInternal:Ljava/lang/reflect/Method;

    .line 284
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_setMasterMuteInternal:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 299
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 301
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aput v7, v3, v8

    .line 303
    :try_start_1
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->streamVolumeAlias:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 310
    :goto_1
    :try_start_2
    const-string v3, "com.android.server.LocalServices"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 312
    .restart local v0    # "cls":Ljava/lang/Class;
    const-string/jumbo v3, "sLocalServiceObjects"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->sLocalServiceObjects:Ljava/lang/reflect/Field;

    .line 313
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->sLocalServiceObjects:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 314
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->sLocalServiceObjects:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    iput-object v3, p0, Lcom/oppo/media/OppoAudioService;->sOppoLocalServiceObjects:Landroid/util/ArrayMap;

    .line 315
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->sOppoLocalServiceObjects:Landroid/util/ArrayMap;

    const-class v4, Landroid/media/AudioManagerInternal;

    new-instance v5, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;

    invoke-direct {v5, p0}, Lcom/oppo/media/OppoAudioService$OppoAudioServiceInternal;-><init>(Lcom/oppo/media/OppoAudioService;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8

    .line 332
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_2
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 319
    .restart local v2    # "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 320
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 323
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 326
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_8
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/oppo/media/OppoAudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oppo/media/OppoAudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/oppo/media/OppoAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/oppo/media/OppoAudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/media/OppoAudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/oppo/media/OppoAudioService;->setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/media/OppoAudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/OppoAudioService;

    .prologue
    .line 61
    iget v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerMode:I

    return v0
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .locals 21
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 626
    const-string v17, "OppoAudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adjustStreamVolume() streamType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", direction = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", flags="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", callingPackage = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoUseFixedVolume:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    sget-boolean v17, Lcom/oppo/media/OppoAudioService;->DEBUG_VOL:Z

    if-eqz v17, :cond_2

    const-string v17, "OppoAudioService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adjustStreamVolume() stream="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", dir="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", flags="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oppo/media/OppoAudioService;->ensureOppoValidDirection(I)V

    .line 637
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/OppoAudioService;->ensureOppoValidStreamType(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    move-object/from16 v17, v0

    aget v16, v17, p1

    .line 643
    .local v16, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v17, v0

    aget-object v15, v17, v16

    .line 645
    .local v15, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v6, 0x0

    .line 647
    .local v6, "device":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .line 656
    :goto_1
    invoke-virtual {v15, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 657
    .local v5, "aliasIndex":I
    const/4 v4, 0x1

    .line 660
    .local v4, "adjustVolume":Z
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    if-eqz v16, :cond_3

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    const-string v17, "com.android.cts.media"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 668
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 669
    :catch_0
    move-exception v7

    .line 670
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 648
    .end local v4    # "adjustVolume":Z
    .end local v5    # "aliasIndex":I
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 649
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 650
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 651
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 652
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v7

    .line 653
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 671
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .restart local v4    # "adjustVolume":Z
    .restart local v5    # "aliasIndex":I
    :catch_4
    move-exception v7

    .line 672
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 673
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v7

    .line 674
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 681
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    and-int/lit16 v0, v6, 0x380

    move/from16 v17, v0

    if-nez v17, :cond_4

    and-int/lit8 v17, p3, 0x40

    if-nez v17, :cond_0

    .line 686
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/oppo/media/OppoAudioService;->OPPO_STEAM_VOLUME_OPS:[I

    aget v18, v18, v16

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v17

    if-nez v17, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 693
    const/16 v17, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/media/OppoAudioService;->mOppoPendingVolumeCommand:Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    .line 694
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    and-int/lit8 p3, p3, -0x21

    .line 697
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoFixedVolumeDevices:I

    move/from16 v17, v0

    and-int v17, v17, v6

    if-eqz v17, :cond_11

    .line 699
    or-int/lit8 p3, p3, 0x20

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    and-int/lit8 v17, v6, 0xc

    if-eqz v17, :cond_10

    .line 706
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeIndex:I

    .line 710
    .local v14, "step":I
    :goto_2
    if-eqz v5, :cond_5

    .line 711
    move v5, v14

    .line 721
    :cond_5
    :goto_3
    and-int/lit8 v17, p3, 0x2

    if-nez v17, :cond_6

    invoke-super/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 726
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/OppoAudioService;->mOppoRingerMode:I

    .line 728
    .local v13, "ringerMode":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7

    .line 729
    and-int/lit8 p3, p3, -0x11

    .line 733
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v14}, Lcom/oppo/media/OppoAudioService;->checkForRingerModeChange(III)I

    move-result v12

    .line 734
    .local v12, "result":I
    and-int/lit8 v17, v12, 0x1

    if-eqz v17, :cond_12

    const/4 v4, 0x1

    .line 736
    :goto_4
    and-int/lit16 v0, v12, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 737
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 745
    :cond_8
    and-int/lit16 v0, v12, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 746
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 750
    .end local v12    # "result":I
    .end local v13    # "ringerMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 753
    .local v11, "oldIndex":I
    if-eqz v4, :cond_f

    if-eqz p2, :cond_f

    .line 756
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    and-int/lit16 v0, v6, 0x380

    move/from16 v17, v0

    if-eqz v17, :cond_b

    and-int/lit8 v17, p3, 0x40

    if-nez v17, :cond_b

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoA2dpAvrcpLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 760
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoAvrcpAbsVolSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 763
    :cond_a
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 766
    :cond_b
    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    add-int v17, v5, v14

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v6}, Lcom/oppo/media/OppoAudioService;->checkSafeMediaVolume(III)Z

    move-result v17

    if-nez v17, :cond_13

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeController:Landroid/media/AudioService$VolumeController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 790
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 793
    .local v10, "newIndex":I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 794
    invoke-super/range {p0 .. p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p3

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/oppo/media/OppoAudioService;->setSystemAudioVolume(IIII)V

    .line 798
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 801
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiCecSink:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    if-eq v11, v10, :cond_e

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 805
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    const/16 v9, 0x19

    .line 807
    .local v9, "keyCode":I
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 809
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 811
    .end local v9    # "keyCode":I
    :cond_e
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 814
    .end local v10    # "newIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 816
    .local v8, "index":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_b

    goto/16 :goto_0

    .line 817
    :catch_6
    move-exception v7

    .line 818
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 694
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "index":I
    .end local v11    # "oldIndex":I
    .end local v14    # "step":I
    :catchall_0
    move-exception v17

    :try_start_8
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v17

    .line 708
    :cond_10
    invoke-virtual {v15}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v14

    .restart local v14    # "step":I
    goto/16 :goto_2

    .line 715
    .end local v14    # "step":I
    :cond_11
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/media/OppoAudioService;->rescaleIndex(III)I

    move-result v14

    .restart local v14    # "step":I
    goto/16 :goto_3

    .line 734
    .restart local v12    # "result":I
    .restart local v13    # "ringerMode":I
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 763
    .end local v12    # "result":I
    .end local v13    # "ringerMode":I
    .restart local v11    # "oldIndex":I
    :catchall_1
    move-exception v17

    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v17

    .line 769
    :cond_13
    mul-int v17, p2, v14

    move/from16 v0, v17

    invoke-virtual {v15, v0, v6}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 773
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->method_sendMsg:Ljava/lang/reflect/Method;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/OppoAudioService;->mOppoAudioHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    aput-object v15, v18, v19

    const/16 v19, 0x6

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_5

    .line 780
    :catch_7
    move-exception v7

    .line 781
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_5

    .line 782
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v7

    .line 783
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_5

    .line 784
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_9
    move-exception v7

    .line 785
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_5

    .line 805
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .restart local v10    # "newIndex":I
    :cond_14
    const/16 v9, 0x18

    goto/16 :goto_6

    .line 809
    .restart local v9    # "keyCode":I
    :catchall_2
    move-exception v17

    :try_start_b
    monitor-exit v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v17

    .line 811
    .end local v9    # "keyCode":I
    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v17

    .line 819
    .end local v10    # "newIndex":I
    .restart local v8    # "index":I
    :catch_a
    move-exception v7

    .line 820
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 821
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_b
    move-exception v7

    .line 822
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 580
    sget-boolean v0, Lcom/oppo/media/OppoAudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoAudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, "streamType":I
    iget v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 585
    iget v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeControlStream:I

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v7, v0, v1

    .line 600
    .local v7, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    .line 602
    and-int/lit8 p3, p3, -0x5

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, v7, p3}, Landroid/media/AudioService$VolumeController;->suppressAdjustment(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    const/4 p1, 0x0

    .line 608
    and-int/lit8 p3, p3, -0x5

    .line 609
    and-int/lit8 p3, p3, -0x11

    .line 610
    sget-boolean v0, Lcom/oppo/media/OppoAudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string v0, "OppoAudioService"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 613
    invoke-direct/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 614
    return-void

    .line 588
    .end local v7    # "resolvedStream":I
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->method_getActiveStreamType:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    goto :goto_0

    .line 589
    :catch_0
    move-exception v6

    .line 590
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 591
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 592
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 593
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 594
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkForRingerModeChange(III)I
    .locals 5
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 904
    const/4 v0, 0x1

    .line 908
    .local v0, "result":I
    iget v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerMode:I

    .line 910
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_0

    .line 969
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    :goto_0
    iput p2, p0, Lcom/oppo/media/OppoAudioService;->mOppoPrevVolDirection:I

    .line 978
    return v0

    .line 912
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 913
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    if-eqz v2, :cond_1

    .line 919
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 920
    const/4 v1, 0x1

    goto :goto_0

    .line 924
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 927
    const/4 v1, 0x0

    goto :goto_0

    .line 933
    :pswitch_1
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    if-nez v2, :cond_2

    .line 934
    const-string v2, "OppoAudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    :cond_2
    if-ne p2, v3, :cond_3

    .line 939
    iget v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 941
    const/4 v1, 0x0

    goto :goto_0

    .line 948
    :cond_3
    if-ne p2, v4, :cond_0

    .line 949
    const/4 v1, 0x2

    goto :goto_0

    .line 954
    :pswitch_2
    if-ne p2, v4, :cond_0

    .line 958
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    if-eqz v2, :cond_4

    .line 959
    const/4 v1, 0x1

    goto :goto_0

    .line 962
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 1010
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 1013
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/media/OppoAudioService;->getDeviceForceState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    monitor-exit v1

    .line 1023
    :goto_0
    return v0

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_1

    and-int/lit8 v2, p3, 0xc

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeIndex:I

    if-le p2, v2, :cond_1

    .line 1021
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1023
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private ensureOppoValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 982
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_1
    return-void
.end method

.method private ensureOppoValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 988
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 989
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 991
    :cond_1
    return-void
.end method

.method private getDeviceForceState()Z
    .locals 3

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "receiver_force"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    const-string v1, "OppoAudioService"

    const-string v2, "getDeviceForceState true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/4 v1, 0x1

    .line 1005
    :goto_0
    return v1

    .line 1004
    :cond_0
    const-string v1, "OppoAudioService"

    const-string v2, "getDeviceForceState false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStreamAffectedByUniform(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 410
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetStreamVolume(IIII)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 540
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_setStreamVolumeInt:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 550
    :goto_0
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v3, v3, p1

    invoke-super {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 553
    :cond_0
    if-nez p2, :cond_1

    .line 554
    iget-boolean v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    if-eqz v3, :cond_2

    .line 563
    :cond_1
    :goto_1
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    move v1, v2

    .line 554
    goto :goto_1
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 993
    iget-object v0, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .locals 13
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 421
    const-string v2, "OppoAudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume() streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 424
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoUseFixedVolume:Z

    if-eqz v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->ensureOppoValidStreamType(I)V

    .line 429
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v11, v2, p1

    .line 430
    .local v11, "streamTypeAlias":I
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v2, v11

    .line 432
    .local v10, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v7, 0x0

    .line 434
    .local v7, "device":I
    :try_start_0
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    .line 447
    :goto_1
    and-int/lit16 v2, v7, 0x380

    if-nez v2, :cond_2

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_0

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/oppo/media/OppoAudioService;->OPPO_STEAM_VOLUME_OPS:[I

    aget v3, v3, v11

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 457
    const/4 v2, 0x3

    if-eq v11, v2, :cond_3

    if-eqz v11, :cond_3

    const/4 v2, 0x6

    if-eq v11, v2, :cond_3

    const/4 v2, 0x1

    if-ge p2, v2, :cond_3

    .line 463
    :try_start_1
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 436
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 437
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 438
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 439
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v8

    .line 440
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 466
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v8

    .line 467
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 468
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v8

    .line 469
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 476
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    iget-object v12, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v12

    .line 478
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoPendingVolumeCommand:Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    .line 480
    invoke-virtual {v10, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v9

    .line 482
    .local v9, "oldIndex":I
    mul-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v2, p1, v11}, Lcom/oppo/media/OppoAudioService;->rescaleIndex(III)I

    move-result p2

    .line 484
    const/4 v2, 0x3

    if-ne v11, v2, :cond_5

    and-int/lit16 v2, v7, 0x380

    if-eqz v2, :cond_5

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_5

    .line 487
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    :try_start_3
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_4

    .line 489
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v4, p2, 0xa

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 491
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    :cond_5
    const/4 v2, 0x3

    if-ne v11, v2, :cond_6

    .line 495
    :try_start_4
    invoke-super {p0, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    move/from16 v0, p3

    invoke-direct {p0, v9, p2, v2, v0}, Lcom/oppo/media/OppoAudioService;->setSystemAudioVolume(IIII)V

    .line 498
    :cond_6
    and-int/lit8 p3, p3, -0x21

    .line 499
    const/4 v2, 0x3

    if-ne v11, v2, :cond_7

    iget v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoFixedVolumeDevices:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_7

    .line 501
    or-int/lit8 p3, p3, 0x20

    .line 504
    if-eqz p2, :cond_7

    .line 505
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    and-int/lit8 v2, v7, 0xc

    if-eqz v2, :cond_8

    .line 507
    iget p2, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeIndex:I

    .line 514
    :cond_7
    :goto_2
    invoke-direct {p0, v11, p2, v7}, Lcom/oppo/media/OppoAudioService;->checkSafeMediaVolume(III)Z

    move-result v2

    if-nez v2, :cond_9

    .line 515
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 516
    new-instance v2, Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;-><init>(Lcom/oppo/media/OppoAudioService;IIII)V

    iput-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoPendingVolumeCommand:Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    .line 522
    :goto_3
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 525
    :try_start_5
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->method_sendVolumeUpdate:Ljava/lang/reflect/Method;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_0

    .line 526
    :catch_6
    move-exception v8

    .line 527
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 491
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 522
    .end local v9    # "oldIndex":I
    :catchall_1
    move-exception v2

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 509
    .restart local v9    # "oldIndex":I
    :cond_8
    :try_start_8
    invoke-virtual {v10}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_2

    .line 519
    :cond_9
    move/from16 v0, p3

    invoke-direct {p0, p1, p2, v0, v7}, Lcom/oppo/media/OppoAudioService;->onSetStreamVolume(IIII)V

    .line 520
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result p2

    goto :goto_3

    .line 528
    :catch_7
    move-exception v8

    .line 529
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 530
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v8

    .line 531
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 7
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1036
    :try_start_0
    iget-boolean v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1037
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1040
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v5, p1, 0x5

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, p2, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v5, v6, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1043
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1046
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1043
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1045
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 620
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 576
    return-void
.end method

.method public checkForVibrateWhenSilentMode()I
    .locals 4

    .prologue
    .line 893
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "vibrate_when_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 894
    .local v0, "vibrateWhenSilent":I
    return v0
.end method

.method public getOppoStreamVolume(I)I
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/oppo/media/OppoAudioService;->getRealTimeValue()V

    .line 1054
    invoke-direct {p0, p1}, Lcom/oppo/media/OppoAudioService;->ensureOppoValidStreamType(I)V

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "device":I
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->method_getDeviceForStream:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1067
    :goto_0
    const-class v4, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 1068
    :try_start_1
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1077
    .local v2, "index":I
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 1079
    iget-object v3, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    .line 1082
    :cond_0
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 1059
    .end local v2    # "index":I
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1061
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 1063
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1083
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public getRealTimeValue()V
    .locals 2

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->streamVolumeAlias:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamVolumeAlias:[I

    .line 339
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->streamStates:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/AudioService$VolumeStreamState;

    check-cast v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 341
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHasVibrator:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHasVibrator:Z

    .line 343
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mPrevVolDirection:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoPrevVolDirection:I

    .line 345
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mVolumeControlStream:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeControlStream:I

    .line 347
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mVolumeController:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$VolumeController;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoVolumeController:Landroid/media/AudioService$VolumeController;

    .line 349
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mUseFixedVolume:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoUseFixedVolume:Z

    .line 351
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mAppOps:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoAppOps:Landroid/app/AppOpsManager;

    .line 353
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeState:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeState:Ljava/lang/Integer;

    .line 355
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mPendingVolumeCommand:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoPendingVolumeCommand:Lcom/oppo/media/OppoAudioService$StreamVolumeCommand;

    .line 357
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mSafeMediaVolumeIndex:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoSafeMediaVolumeIndex:I

    .line 359
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mA2dp:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 361
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mAvrcpAbsVolSupported:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoAvrcpAbsVolSupported:Z

    .line 363
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHdmiManager:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 365
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHdmiCecSink:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiCecSink:Z

    .line 367
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHdmiTvClient:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiTvClient;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 369
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHdmiPlaybackClient:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPlaybackClient;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 371
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mA2dpAvrcpLock:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoA2dpAvrcpLock:Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mAudioHandler:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoAudioHandler:Landroid/os/Handler;

    .line 375
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mFixedVolumeDevices:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoFixedVolumeDevices:I

    .line 377
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mRingerMode:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerMode:I

    .line 379
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mHdmiSystemAudioSupported:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoHdmiSystemAudioSupported:Z

    .line 381
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->mRingerModeDelegate:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iput-object v1, p0, Lcom/oppo/media/OppoAudioService;->mOppoRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 396
    :pswitch_0
    const-string v2, "com.oppo.media.OppoAudioManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .local v0, "streamType":I
    invoke-virtual {p0, v0}, Lcom/oppo/media/OppoAudioService;->getOppoStreamVolume(I)I

    move-result v1

    .line 399
    .local v1, "volume":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    const/4 v2, 0x1

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x186a2
        :pswitch_0
    .end packed-switch
.end method

.method public setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "uid"    # I

    .prologue
    .line 1095
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/OppoAudioService;->method_setMasterMuteInternal:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1104
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1098
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 1100
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOppoRingerModeInternal(ILjava/lang/String;)V
    .locals 0
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-super {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 1090
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/media/OppoAudioService;->setStreamVolume(IIILjava/lang/String;I)V

    .line 417
    return-void
.end method
