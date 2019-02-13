.class public Lcom/oppo/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaPlayer$OnInfoListener;,
        Lcom/oppo/media/MediaPlayer$OnErrorListener;,
        Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/oppo/media/MediaPlayer$OnCompletionListener;,
        Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;,
        Lcom/oppo/media/MediaPlayer$OnPreparedListener;,
        Lcom/oppo/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CANNOT_CONNECT_TO_SERVER:I = 0x105

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_HAS_UNSUPPORT_VIDEO:I = 0x35c

.field public static final MEDIA_PLAYER_IDLE:I = 0x1

.field public static final MEDIA_PLAYER_INITIALIZED:I = 0x2

.field public static final MEDIA_PLAYER_PAUSED:I = 0x20

.field public static final MEDIA_PLAYER_PLAYBACK_COMPLETE:I = 0x80

.field public static final MEDIA_PLAYER_PREPARED:I = 0x8

.field public static final MEDIA_PLAYER_PREPARING:I = 0x4

.field public static final MEDIA_PLAYER_STARTED:I = 0x10

.field public static final MEDIA_PLAYER_STOPPED:I = 0x40

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isOppoCreat:Z

.field private mAudioSessionId:I

.field private mAudioStreamType:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedSeeking:Z

.field private mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

.field private mPath:Ljava/lang/String;

.field private mPrepareAsync:Z

.field private mScreenOn:Z

.field private mSeekMs:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mfd:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com_oppo_media_MediaPlayer"

    sput-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 64
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 65
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 68
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 69
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 72
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 74
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 79
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 80
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 81
    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 82
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 85
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "com_oppo_media_MediaPlayer is running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 88
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$1;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 99
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$2;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 109
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$3;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$4;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 136
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$5;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 146
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$6;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 158
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$7;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$7;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/media/MediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/media/MediaPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/media/MediaPlayer;)Lcom/oppo/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private createOppoMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 261
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 263
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 352
    :goto_0
    return-void

    .line 268
    :cond_1
    new-instance v0, Lcom/oppo/media/OppoMediaPlayer;

    invoke-direct {v0}, Lcom/oppo/media/OppoMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 270
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    if-ltz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 273
    :cond_2
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    if-ltz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 277
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$8;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnPreparedListener(Lcom/oppo/media/OppoMediaPlayer$OnPreparedListener;)V

    .line 292
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$9;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnBufferingUpdateListener(Lcom/oppo/media/OppoMediaPlayer$OnBufferingUpdateListener;)V

    .line 302
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$10;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnCompletionListener(Lcom/oppo/media/OppoMediaPlayer$OnCompletionListener;)V

    .line 311
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$11;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnErrorListener(Lcom/oppo/media/OppoMediaPlayer$OnErrorListener;)V

    .line 322
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$12;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$12;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnSeekCompleteListener(Lcom/oppo/media/OppoMediaPlayer$OnSeekCompleteListener;)V

    .line 331
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$13;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$13;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnVideoSizeChangedListener(Lcom/oppo/media/OppoMediaPlayer$OnVideoSizeChangedListener;)V

    .line 342
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    new-instance v1, Lcom/oppo/media/MediaPlayer$14;

    invoke-direct {v1, p0}, Lcom/oppo/media/MediaPlayer$14;-><init>(Lcom/oppo/media/MediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/oppo/media/OppoMediaPlayer;->setOnInfoListener(Lcom/oppo/media/OppoMediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method private handleMediaPlayerError()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 175
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMediaPlayerError() mCurrentState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 178
    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 179
    .local v2, "mChangeState":I
    iput v7, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 181
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_4

    .line 184
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(FileDescriptor)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v3}, Lcom/oppo/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 215
    :cond_0
    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 216
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMediaPlayerError() mOppoMediaPlayer prepare mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-eqz v3, :cond_7

    .line 220
    :try_start_1
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :cond_1
    :goto_1
    iget v3, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    if-ltz v3, :cond_2

    .line 245
    iput-boolean v7, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 248
    :cond_2
    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    .line 249
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMediaPlayerError() mOppoMediaPlayer start mPrepareAsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-nez v3, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->start()V

    .line 255
    :cond_3
    :goto_2
    return-void

    .line 187
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 188
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(String)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOppoMediaPlayer setDataSource error mPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto :goto_2

    .line 190
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_6

    .line 191
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource(Context, Uri, Map)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 195
    :cond_6
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() mOppoMediaPlayer setDataSource null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() prepareAsync error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 224
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 225
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto/16 :goto_2

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/oppo/media/MediaPlayer;->prepare()V

    .line 232
    const/16 v3, 0x8

    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 233
    :catch_2
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleMediaPlayerError() prepare error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    if-eqz v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    invoke-interface {v3, p0, v7, v8}, Lcom/oppo/media/MediaPlayer$OnErrorListener;->onError(Lcom/oppo/media/MediaPlayer;II)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->deselectTrack(I)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 3

    .prologue
    .line 383
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 391
    :goto_0
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 893
    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 897
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v1, :cond_2

    .line 898
    iget v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 901
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 877
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 878
    const/4 v0, -0x1

    .line 886
    :goto_0
    return v0

    .line 881
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_2

    .line 882
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 883
    const/4 v0, 0x0

    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackInfo()[Lcom/oppo/media/MediaPlayer$TrackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 467
    .local v1, "mParcel":Landroid/os/Parcel;
    iget-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v4, :cond_0

    .line 468
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer;->getTrackInfo()[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;

    move-result-object v2

    .line 469
    .local v2, "mtrackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 470
    .local v3, "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 471
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 472
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 475
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    .end local v2    # "mtrackInfo":[Lcom/oppo/media/OppoMediaPlayer$TrackInfo;
    .end local v3    # "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    :cond_0
    iget-object v4, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 479
    .local v2, "mtrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v3, v4, [Lcom/oppo/media/MediaPlayer$TrackInfo;

    .line 480
    .restart local v3    # "trackInfo":[Lcom/oppo/media/MediaPlayer$TrackInfo;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 481
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 482
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 485
    new-instance v4, Lcom/oppo/media/MediaPlayer$TrackInfo;

    invoke-direct {v4, v1}, Lcom/oppo/media/MediaPlayer$TrackInfo;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v3, v0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    .end local v2    # "mtrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    return-object v3
.end method

.method public getVideoHeight()I
    .locals 3

    .prologue
    .line 815
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoHeight()I

    move-result v0

    .line 820
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    .prologue
    .line 805
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->getVideoWidth()I

    move-result v0

    .line 810
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isLooping()Z

    move-result v0

    .line 755
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->isPlaying()Z

    move-result v0

    .line 830
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 859
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/16 v0, 0x20

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 863
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->pause()V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 787
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare() isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 790
    const/4 v1, 0x4

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 792
    iget-boolean v1, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1}, Lcom/oppo/media/OppoMediaPlayer;->prepare()V

    .line 802
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 799
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->handleMediaPlayerError()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 774
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAsync() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    .line 777
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 779
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->prepareAsync()V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 593
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 597
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->release()V

    .line 599
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 603
    iput-object v5, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 605
    :cond_1
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 606
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 607
    iput v3, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 608
    iput-boolean v4, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 609
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 557
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 559
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->reset()V

    .line 563
    :cond_0
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    .line 569
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 570
    return-void

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 908
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 912
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 913
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-eqz v0, :cond_0

    .line 921
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->selectTrack(I)V

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 3
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioSessionId() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioSessionId:I

    .line 375
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioSessionId(I)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamtype"    # I

    .prologue
    .line 725
    iput p1, p0, Lcom/oppo/media/MediaPlayer;->mAudioStreamType:I

    .line 726
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setAudioStreamType(I)V

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 613
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource(Context, Uri) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 616
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 617
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 628
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 623
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 624
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 626
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource(Context, Uri, Map) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 635
    iput-object p2, p0, Lcom/oppo/media/MediaPlayer;->mUri:Landroid/net/Uri;

    .line 636
    iput-object p3, p0, Lcom/oppo/media/MediaPlayer;->mHeaders:Ljava/util/Map;

    .line 637
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 643
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    .line 644
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 646
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource(FileDescriptor) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 673
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 679
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 682
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource(FileDescriptor, long, long) isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mfd:Ljava/io/FileDescriptor;

    .line 691
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 702
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v6

    .line 696
    .local v6, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 697
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 698
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 699
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 700
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    sget-object v1, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource(String) isOppoCreat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 655
    const/4 v1, 0x2

    iput v1, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 666
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 661
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0}, Lcom/oppo/media/MediaPlayer;->createOppoMediaPlayer()V

    .line 664
    iget-object v1, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 705
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplay() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 709
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 714
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setLooping(Z)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnBufferingUpdateListener:Lcom/oppo/media/MediaPlayer$OnBufferingUpdateListener;

    .line 944
    return-void
.end method

.method public setOnCompletionListener(Lcom/oppo/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 939
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnCompletionListener:Lcom/oppo/media/MediaPlayer$OnCompletionListener;

    .line 940
    return-void
.end method

.method public setOnErrorListener(Lcom/oppo/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 955
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnErrorListener:Lcom/oppo/media/MediaPlayer$OnErrorListener;

    .line 956
    return-void
.end method

.method public setOnInfoListener(Lcom/oppo/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnInfoListener:Lcom/oppo/media/MediaPlayer$OnInfoListener;

    .line 960
    return-void
.end method

.method public setOnPreparedListener(Lcom/oppo/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnPreparedListener:Lcom/oppo/media/MediaPlayer$OnPreparedListener;

    .line 936
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnSeekCompleteListener:Lcom/oppo/media/MediaPlayer$OnSeekCompleteListener;

    .line 948
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/oppo/media/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/oppo/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 952
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    .line 760
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenOnWhilePlaying() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/oppo/media/OppoMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 768
    :goto_0
    if-eqz p1, :cond_0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 771
    :cond_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 355
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolume() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leftVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rightVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setVolume(FF)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 924
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWakeMode() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/oppo/media/OppoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 931
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start() isOppoCreat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_2

    .line 838
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mPrepareAsync:Z

    if-eqz v0, :cond_0

    .line 856
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    if-eqz v0, :cond_1

    .line 843
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOppoMediaPlayer start seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    invoke-virtual {p0, v0}, Lcom/oppo/media/MediaPlayer;->seekTo(I)V

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mNeedSeeking:Z

    .line 847
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mSeekMs:I

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->start()V

    .line 854
    :goto_1
    const/16 v0, 0x10

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    goto :goto_0

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 576
    sget-object v0, Lcom/oppo/media/MediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop() isOppoCreat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v0, 0x40

    iput v0, p0, Lcom/oppo/media/MediaPlayer;->mCurrentState:I

    .line 580
    iget-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->isOppoCreat:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mOppoMediaPlayer:Lcom/oppo/media/OppoMediaPlayer;

    invoke-virtual {v0}, Lcom/oppo/media/OppoMediaPlayer;->stop()V

    .line 589
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/media/MediaPlayer;->mScreenOn:Z

    .line 590
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/oppo/media/MediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method
