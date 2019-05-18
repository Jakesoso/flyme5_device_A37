.class Lcom/oppo/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Lcom/oppo/media/MediaScanner;


# direct methods
.method private constructor <init>(Lcom/oppo/media/MediaScanner;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p2, "x1"    # Lcom/oppo/media/MediaScanner$1;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const/4 v1, 0x1

    .line 803
    :goto_0
    return v1

    .line 800
    :cond_0
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1330
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1331
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1332
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 28
    .param p1, "entry"    # Lcom/oppo/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 999
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1000
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1003
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 1004
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1005
    .local v25, "title":Ljava/lang/String;
    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1006
    :cond_3
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1007
    const-string/jumbo v4, "title"

    move-object/from16 v0, v25

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v22, v0

    .line 1037
    .local v22, "rowId":J
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1040
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_17

    .line 1045
    :cond_6
    const-string/jumbo v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1046
    const-string/jumbo v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1047
    const-string/jumbo v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1048
    const-string/jumbo v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1049
    const-string/jumbo v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1102
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v24

    .line 1103
    .local v24, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2100(Lcom/oppo/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v15

    .line 1104
    .local v15, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_8

    .line 1105
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v24

    .line 1113
    :cond_8
    :goto_1
    const/4 v6, 0x0

    .line 1114
    .local v6, "result":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1117
    .local v18, "needToSetSettings":Z
    const/16 v20, 0x0

    .line 1119
    .local v20, "needToSetSettingsSIM2":Z
    const/16 v19, 0x0

    .line 1120
    .local v19, "needToSetSettingsCalendar":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-nez v4, :cond_25

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 1122
    const-string/jumbo v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v24

    if-ne v0, v4, :cond_b

    .line 1125
    move-object/from16 v0, p1

    iget v14, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    .line 1126
    .local v14, "format":I
    if-nez v14, :cond_a

    .line 1127
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/oppo/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1129
    :cond_a
    const-string v4, "format"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    .end local v14    # "format":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2500(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1150
    if-eqz p3, :cond_1d

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2600(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1154
    :cond_c
    const/16 v18, 0x1

    .line 1158
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2800(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1161
    :cond_e
    const/16 v20, 0x1

    .line 1165
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetCalendar:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3000(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameCalendar:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameCalendar:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1168
    :cond_10
    const/16 v19, 0x1

    .line 1205
    :cond_11
    :goto_2
    if-eqz v15, :cond_12

    if-nez v18, :cond_12

    if-nez v20, :cond_12

    if-eqz v19, :cond_23

    .line 1207
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1300(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1232
    :goto_3
    if-eqz v6, :cond_13

    .line 1233
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 1234
    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 1289
    :cond_13
    :goto_4
    if-eqz v18, :cond_14

    .line 1290
    if-eqz p3, :cond_2f

    .line 1291
    const-string/jumbo v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1292
    const-string/jumbo v4, "oppo_default_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1293
    const-string/jumbo v4, "oppo_sms_notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2602(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1306
    :cond_14
    :goto_5
    if-eqz v20, :cond_15

    .line 1307
    if-eqz p3, :cond_31

    .line 1308
    const-string/jumbo v4, "notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1309
    const-string/jumbo v4, "oppo_default_notification_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$2802(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1318
    :cond_15
    :goto_6
    if-eqz v19, :cond_16

    .line 1319
    if-eqz p3, :cond_16

    .line 1320
    const-string v4, "calendar_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1321
    const-string v4, "calendar_default_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetCalendar:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3002(Lcom/oppo/media/MediaScanner;Z)Z

    .line 1326
    :cond_16
    return-object v6

    .line 1050
    .end local v6    # "result":Landroid/net/Uri;
    .end local v15    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v19    # "needToSetSettingsCalendar":Z
    .end local v20    # "needToSetSettingsSIM2":Z
    .end local v24    # "tableUri":Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_7

    .line 1051
    const/4 v11, 0x0

    .line 1053
    .local v11, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v12, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "exif":Landroid/media/ExifInterface;
    .local v12, "exif":Landroid/media/ExifInterface;
    move-object v11, v12

    .line 1057
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    :goto_7
    if-eqz v11, :cond_7

    .line 1058
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v16, v0

    .line 1059
    .local v16, "latlng":[F
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1060
    const-string/jumbo v4, "latitude"

    const/4 v5, 0x0

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1061
    const-string/jumbo v4, "longitude"

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1064
    :cond_18
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v26

    .line 1065
    .local v26, "time":J
    const-wide/16 v4, -0x1

    cmp-long v4, v26, v4

    if-eqz v4, :cond_1a

    .line 1066
    const-string v4, "datetaken"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1078
    :cond_19
    :goto_8
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v11, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v21

    .line 1080
    .local v21, "orientation":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_7

    .line 1083
    packed-switch v21, :pswitch_data_0

    .line 1094
    :pswitch_0
    const/4 v10, 0x0

    .line 1097
    .local v10, "degree":I
    :goto_9
    const-string/jumbo v4, "orientation"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1072
    .end local v10    # "degree":I
    .end local v21    # "orientation":I
    :cond_1a
    invoke-virtual {v11}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v26

    .line 1073
    const-wide/16 v4, -0x1

    cmp-long v4, v26, v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_19

    .line 1074
    const-string v4, "datetaken"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    .line 1085
    .restart local v21    # "orientation":I
    :pswitch_1
    const/16 v10, 0x5a

    .line 1086
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1088
    .end local v10    # "degree":I
    :pswitch_2
    const/16 v10, 0xb4

    .line 1089
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1091
    .end local v10    # "degree":I
    :pswitch_3
    const/16 v10, 0x10e

    .line 1092
    .restart local v10    # "degree":I
    goto :goto_9

    .line 1107
    .end local v10    # "degree":I
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "latlng":[F
    .end local v21    # "orientation":I
    .end local v26    # "time":J
    .restart local v15    # "inserter":Landroid/media/MediaInserter;
    .restart local v24    # "tableUri":Landroid/net/Uri;
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2300(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v24

    goto/16 :goto_1

    .line 1109
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$2400(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v24

    goto/16 :goto_1

    .line 1171
    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v18    # "needToSetSettings":Z
    .restart local v19    # "needToSetSettingsCalendar":Z
    .restart local v20    # "needToSetSettingsSIM2":Z
    :cond_1d
    if-eqz p2, :cond_21

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3200(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1175
    :cond_1e
    const/16 v18, 0x1

    .line 1179
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3400(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1182
    :cond_20
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 1186
    :cond_21
    if-eqz p4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3600(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$3700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1189
    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 1208
    :cond_23
    move-object/from16 v0, p1

    iget v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_24

    .line 1215
    monitor-enter v15

    .line 1216
    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1217
    monitor-exit v15

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1226
    :cond_24
    monitor-enter v15

    .line 1227
    :try_start_2
    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1228
    monitor-exit v15

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1238
    :cond_25
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1241
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1243
    const/16 v17, 0x0

    .line 1244
    .local v17, "mediaType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1246
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 1247
    .local v13, "fileType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v13

    .line 1252
    :cond_26
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1253
    const/16 v17, 0x2

    .line 1267
    :cond_27
    :goto_a
    const-string/jumbo v4, "media_type"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1269
    .end local v13    # "fileType":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1300(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1254
    .restart local v13    # "fileType":I
    :cond_29
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1255
    const/16 v17, 0x3

    goto :goto_a

    .line 1256
    :cond_2a
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1257
    const/16 v17, 0x1

    goto :goto_a

    .line 1258
    :cond_2b
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1259
    const/16 v17, 0x4

    goto :goto_a

    .line 1260
    :cond_2c
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isCompressFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1261
    const/16 v17, 0x2711

    goto :goto_a

    .line 1262
    :cond_2d
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isApkFileType(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1263
    const/16 v17, 0x2712

    goto :goto_a

    .line 1264
    :cond_2e
    invoke-static {v13}, Lcom/oppo/media/MediaFile;->isDocFileType(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1265
    const/16 v17, 0x2713

    goto :goto_a

    .line 1295
    .end local v13    # "fileType":I
    .end local v17    # "mediaType":I
    :cond_2f
    if-eqz p2, :cond_30

    .line 1296
    const-string/jumbo v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1297
    const-string/jumbo v4, "oppo_default_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3202(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1299
    :cond_30
    if-eqz p4, :cond_14

    .line 1300
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1301
    const-string/jumbo v4, "oppo_default_alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3602(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1311
    :cond_31
    if-eqz p2, :cond_15

    .line 1312
    const-string/jumbo v4, "ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1313
    const-string/jumbo v4, "oppo_default_ringtone_sim2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z
    invoke-static {v4, v5}, Lcom/oppo/media/MediaScanner;->access$3402(Lcom/oppo/media/MediaScanner;Z)Z

    goto/16 :goto_6

    .line 1054
    .end local v6    # "result":Landroid/net/Uri;
    .end local v15    # "inserter":Landroid/media/MediaInserter;
    .end local v18    # "needToSetSettings":Z
    .end local v19    # "needToSetSettingsCalendar":Z
    .end local v20    # "needToSetSettingsSIM2":Z
    .end local v24    # "tableUri":Landroid/net/Uri;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_7

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1349
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # invokes: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1350
    const/4 v1, 0x0

    .line 1366
    :cond_0
    :goto_0
    return v1

    .line 1353
    :cond_1
    const/4 v1, 0x0

    .line 1355
    .local v1, "resultFileType":I
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/oppo/media/MediaScanner;->access$3900(Lcom/oppo/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1356
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$3800(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Lcom/oppo/media/MediaScanner;->access$3902(Lcom/oppo/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/oppo/media/MediaScanner;->access$3900(Lcom/oppo/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/oppo/media/MediaScanner;->access$3900(Lcom/oppo/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1362
    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1363
    invoke-static {v0}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 729
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 730
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    .line 743
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 732
    .restart local p3    # "defaultValue":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 734
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    .line 736
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 737
    .local v2, "result":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 738
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 739
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 740
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    move p3, v2

    .line 743
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 880
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 881
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 882
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 883
    iget-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Lcom/oppo/media/MediaScanner;->access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :goto_0
    return-void

    .line 884
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1338
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3800(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oppo/media/MediaScanner;->access$3800(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1346
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 807
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 808
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 810
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 811
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 813
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 817
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 818
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 820
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 939
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 940
    .local v0, "map":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 943
    :cond_0
    const-string v2, "_data"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v2, "title"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v2, "date_modified"

    iget-wide v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 946
    const-string v2, "_size"

    iget-wide v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 947
    const-string/jumbo v2, "mime_type"

    iget-object v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string/jumbo v2, "is_drm"

    iget-boolean v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 950
    const/4 v1, 0x0

    .line 951
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_1

    .line 952
    const-string/jumbo v2, "width"

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    const-string/jumbo v2, "height"

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_2

    .line 958
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 959
    const-string v3, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    if-eqz v1, :cond_2

    .line 965
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_2
    :goto_2
    return-object v0

    .line 959
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_0

    .line 961
    :cond_4
    const-string v2, "<unknown>"

    goto :goto_1

    .line 967
    :cond_5
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 969
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 970
    const-string v4, "artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v4, "album_artist"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v3, "album"

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "composer"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "genre"

    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_6

    .line 979
    const-string/jumbo v2, "year"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    :cond_6
    const-string/jumbo v2, "track"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    const-string v2, "duration"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string v2, "compilation"

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 970
    :cond_7
    const-string v2, "<unknown>"

    goto :goto_3

    :cond_8
    move-object v2, v3

    .line 972
    goto :goto_4

    .line 974
    :cond_9
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 493
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 494
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 495
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 496
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 498
    if-nez p7, :cond_3

    .line 499
    if-nez p8, :cond_0

    # invokes: Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    const/16 p8, 0x1

    .line 502
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 505
    if-eqz p2, :cond_1

    .line 506
    invoke-static/range {p2 .. p2}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 510
    :cond_1
    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 511
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 512
    .local v12, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 513
    iget v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 514
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 515
    iget-object v3, v12, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 520
    .end local v12    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # invokes: Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$200(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 531
    :cond_3
    const/4 v2, 0x0

    .line 533
    .local v2, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    # getter for: Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$300()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 534
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginFile, return null. ENABLE_IGNORE_TOO_LONG_FILE_PATH, path.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v3, 0x0

    .line 611
    :goto_0
    return-object v3

    .line 539
    :cond_4
    move-object/from16 v9, p1

    .line 540
    .local v9, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$400(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 541
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 544
    :cond_5
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$500(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    check-cast v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .line 545
    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 551
    :cond_6
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$700(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 552
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/oppo/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 553
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$700(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 554
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    const/4 v4, 0x0

    # setter for: Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z
    invoke-static {v3, v4}, Lcom/oppo/media/MediaScanner;->access$702(Lcom/oppo/media/MediaScanner;Z)Z

    .line 560
    :cond_7
    if-eqz v2, :cond_c

    iget-wide v4, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    .line 561
    .local v10, "delta":J
    :goto_1
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_8

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_d

    :cond_8
    const/4 v13, 0x1

    .line 562
    .local v13, "wasModified":Z
    :goto_2
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 567
    :cond_9
    if-eqz v2, :cond_a

    if-eqz v13, :cond_b

    .line 568
    :cond_a
    if-eqz v13, :cond_e

    .line 569
    move-wide/from16 v0, p3

    iput-wide v0, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    .line 574
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 577
    :cond_b
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$800(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 584
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 585
    :try_start_0
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$900(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 560
    .end local v10    # "delta":J
    .end local v13    # "wasModified":Z
    :cond_c
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 561
    .restart local v10    # "delta":J
    :cond_d
    const/4 v13, 0x0

    goto :goto_2

    .line 571
    .restart local v13    # "wasModified":Z
    :cond_e
    new-instance v2, Lcom/oppo/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_f

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    goto :goto_3

    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_f
    const/4 v8, 0x0

    goto :goto_4

    .line 586
    .restart local v2    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 594
    :cond_10
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 595
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 596
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 597
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 598
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 599
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 600
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 601
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 602
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 603
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 604
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 605
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 606
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 607
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 608
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 609
    const/4 v3, 0x0

    iput v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    move-object v3, v2

    .line 611
    goto/16 :goto_0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 637
    const/16 v22, 0x0

    .line 638
    .local v22, "result":Landroid/net/Uri;
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    .line 645
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 651
    .local v5, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1000(Lcom/oppo/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    .line 654
    :cond_1
    if-eqz v5, :cond_2

    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v19

    .line 658
    .local v19, "isvideo":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    .line 659
    .local v18, "isimage":Z
    if-nez v19, :cond_3

    if-eqz v18, :cond_6

    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v4, p5, v12

    if-nez v4, :cond_6

    .line 660
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 663
    :cond_4
    if-eqz v5, :cond_5

    iget-wide v12, v5, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    const-wide/16 v24, 0x0

    cmp-long v4, v12, v24

    if-lez v4, :cond_5

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1300(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/oppo/media/MediaScanner;->access$1100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/oppo/media/MediaScanner;->access$1200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_id="

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v0, v5, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-interface {v4, v11, v12, v13, v0}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    :cond_5
    const/4 v4, 0x0

    .line 725
    .end local v5    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v18    # "isimage":Z
    .end local v19    # "isvideo":Z
    :goto_0
    return-object v4

    .line 669
    .restart local v5    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v18    # "isimage":Z
    .restart local v19    # "isvideo":Z
    :cond_6
    if-eqz v5, :cond_8

    iget-boolean v4, v5, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_7

    if-eqz p8, :cond_8

    .line 670
    :cond_7
    if-eqz p9, :cond_b

    .line 671
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v22

    .line 712
    :cond_8
    :goto_1
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$500(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 713
    move-object/from16 v20, p1

    .line 714
    .local v20, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$400(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 715
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 718
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$500(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v18    # "isimage":Z
    .end local v19    # "isvideo":Z
    .end local v20    # "key":Ljava/lang/String;
    :cond_a
    :goto_2
    move-object/from16 v4, v22

    .line 725
    goto :goto_0

    .line 673
    .restart local v5    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .restart local v18    # "isimage":Z
    .restart local v19    # "isvideo":Z
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 674
    .local v21, "lowpath":Ljava/lang/String;
    const-string v4, "/ringtones/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_15

    const/4 v6, 0x1

    .line 675
    .local v6, "ringtones":Z
    :goto_3
    const-string v4, "/notifications/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_16

    const/4 v7, 0x1

    .line 676
    .local v7, "notifications":Z
    :goto_4
    const-string v4, "/alarms/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_17

    const/4 v8, 0x1

    .line 677
    .local v8, "alarms":Z
    :goto_5
    const-string v4, "/podcasts/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    const/4 v10, 0x1

    .line 678
    .local v10, "podcasts":Z
    :goto_6
    const-string v4, "/music/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_c

    if-nez v6, :cond_19

    if-nez v7, :cond_19

    if-nez v8, :cond_19

    if-nez v10, :cond_19

    :cond_c
    const/4 v9, 0x1

    .line 681
    .local v9, "music":Z
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    .line 682
    .local v17, "isaudio":Z
    if-nez v17, :cond_d

    if-nez v19, :cond_d

    if-eqz v18, :cond_f

    .line 683
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Lcom/oppo/media/MediaScannerCallback;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 684
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Lcom/oppo/media/MediaScannerCallback;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/oppo/media/MediaScannerCallback;->processFileBegin(Ljava/lang/String;)V

    .line 686
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1500(Lcom/oppo/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1600(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/oppo/media/MediaScanner;->access$1600(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 690
    .local v14, "directPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 692
    move-object/from16 p1, v14

    .line 697
    .end local v14    # "directPath":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    :cond_f
    if-nez v17, :cond_10

    if-eqz v19, :cond_11

    .line 698
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Lcom/oppo/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v4, v0, v1, v2}, Lcom/oppo/media/MediaScanner;->access$1700(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 701
    :cond_11
    if-eqz v18, :cond_12

    .line 702
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 704
    :cond_12
    if-nez v17, :cond_13

    if-nez v19, :cond_13

    if-eqz v18, :cond_14

    .line 705
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Lcom/oppo/media/MediaScannerCallback;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;
    invoke-static {v4}, Lcom/oppo/media/MediaScanner;->access$1400(Lcom/oppo/media/MediaScanner;)Lcom/oppo/media/MediaScannerCallback;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/oppo/media/MediaScannerCallback;->processFileEnd(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v4, p0

    .line 709
    invoke-direct/range {v4 .. v10}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->endFile(Lcom/oppo/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    goto/16 :goto_1

    .line 674
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v17    # "isaudio":Z
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 675
    .restart local v6    # "ringtones":Z
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 676
    .restart local v7    # "notifications":Z
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 677
    .restart local v8    # "alarms":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 678
    .restart local v10    # "podcasts":Z
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 720
    .end local v5    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v10    # "podcasts":Z
    .end local v18    # "isimage":Z
    .end local v19    # "isvideo":Z
    .end local v21    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 721
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v4, v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 825
    if-nez p1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-object v7

    .line 828
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 830
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 831
    const/4 v6, 0x0

    .line 832
    .local v6, "parenthesized":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 833
    .local v5, "number":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 834
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 835
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 836
    .local v0, "c":C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 837
    const/4 v6, 0x1

    .line 834
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 838
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 839
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 844
    .end local v0    # "c":C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 845
    .local v1, "charAfterNumber":C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 848
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 849
    .local v2, "genreIndex":S
    if-ltz v2, :cond_9

    .line 850
    # getter for: Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1900()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 851
    # getter for: Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$1900()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 844
    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 852
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 854
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 857
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 858
    add-int/lit8 v3, v3, 0x1

    .line 860
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 861
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    .end local v3    # "i":I
    .end local v5    # "number":Ljava/lang/StringBuffer;
    .end local v6    # "parenthesized":Z
    .end local v7    # "ret":Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 874
    goto :goto_0

    .line 866
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    .restart local v3    # "i":I
    .restart local v5    # "number":Ljava/lang/StringBuffer;
    .restart local v6    # "parenthesized":Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 869
    .end local v2    # "genreIndex":S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 752
    :cond_0
    iput-object p2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 753
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 754
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 755
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 757
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 758
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 759
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 760
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 761
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 762
    :cond_a
    iget-object v3, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->this$0:Lcom/oppo/media/MediaScanner;

    # getter for: Lcom/oppo/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Lcom/oppo/media/MediaScanner;->access$1800(Lcom/oppo/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 764
    :cond_b
    invoke-virtual {p0, p2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 765
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 766
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 767
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 770
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 771
    .local v0, "num":I
    iget v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 772
    .end local v0    # "num":I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 776
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 777
    .restart local v0    # "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 778
    .end local v0    # "num":I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 779
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 780
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 781
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 782
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 783
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 784
    :cond_16
    const-string/jumbo v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 785
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 786
    :cond_18
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 787
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 788
    :cond_19
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    invoke-direct {p0, p2, v2, v2}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 621
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 626
    .local v12, "beginTime":J
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 629
    # getter for: Lcom/oppo/media/MediaScanner;->LOG:Z
    invoke-static {}, Lcom/oppo/media/MediaScanner;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    :cond_1
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 891
    const-string v0, "audio/mp4"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    const-string/jumbo v0, "video/x-flv"

    iget-object v1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    :cond_2
    iput-object p1, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 922
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 923
    const/16 v0, 0x15

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 924
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0

    .line 927
    :cond_4
    invoke-static {p1}, Lcom/oppo/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
