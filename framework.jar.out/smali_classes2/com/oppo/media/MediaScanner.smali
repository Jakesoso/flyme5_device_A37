.class public Lcom/oppo/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/media/MediaScanner$WplHandler;,
        Lcom/oppo/media/MediaScanner$MediaBulkDeleter;,
        Lcom/oppo/media/MediaScanner$MyMediaScannerClient;,
        Lcom/oppo/media/MediaScanner$PlaylistEntry;,
        Lcom/oppo/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final ENABLE_FILES_CACHE:Z = true

.field private static final ENABLE_FILES_CACHE_FIRST_SCAN:Z = true

.field private static final ENABLE_FILES_CACHE_SECOND_SCAN:Z = true

.field private static final ENABLE_IGNORE_NOMEDIA:Z = false

.field private static final ENABLE_IGNORE_TOO_LONG_FILE_PATH:Z = true

.field private static final ENABLE_MULTI_THREAD:Z = false

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_BLACKLIST_XML:Ljava/lang/String; = "mediascanner-blacklist-xml"

.field private static final LOG:Z

.field private static MAX_FILE_DIR_DEPTH_TO_IGNORE:I = 0x0

.field private static MAX_FILE_PATH_LENGTH_TO_IGNORE:I = 0x0

.field private static final MULTI_THREAD_FOR_AUDIO:Z = true

.field private static final MULTI_THREAD_FOR_IMAGE:Z = false

.field private static final MULTI_THREAD_FOR_VIDEO:Z = true

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final MYLOG:Z = false

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final THREAD_POOL_ALIVE_TIME:I = 0x1e

.field private static final THREAD_POOL_CORE_SIZE:I = 0x0

.field private static final THREAD_POOL_MAX_SIZE:I = 0x2

.field private static final sKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPrimarySdPath:Ljava/lang/String;

.field private static sSecondarySdPath:Ljava/lang/String;


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mBlacklistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCaseInsensitivePaths:Z

.field private final mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilenameCalendar:Ljava/lang/String;

.field private mDefaultNotificationFilenameSIM2:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultNotificationSetCalendar:Z

.field private mDefaultNotificationSetSIM2:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultRingtoneSetSIM2:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oppo/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mIsBreaking:Z

.field private mIsScanSingleDir:Z

.field private mIsScanSingleFile:Z

.field private mLocale:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;

.field private mMp3Retriver:Landroid/media/MediaMetadataRetriever;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mRecursionDepth:I

.field mSBuffer:Ljava/lang/StringBuffer;

.field private mScanFlag:I

.field private mScanningDirectory:Ljava/lang/String;

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 141
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v3

    const-string v1, "Classic Rock"

    aput-object v1, v0, v4

    const-string v1, "Country"

    aput-object v1, v0, v5

    const-string v1, "Dance"

    aput-object v1, v0, v2

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 368
    const-string/jumbo v0, "persist.sys.assert.panic"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    .line 2370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    .line 2374
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "artist"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "albumartist"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "composer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "compilation"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "year"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "genre"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tracknumber"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "width"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2384
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "height"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    sget-object v0, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string/jumbo v1, "isdrm"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    const/16 v0, 0x3e8

    sput v0, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    .line 2410
    const/16 v0, 0x14

    sput v0, Lcom/oppo/media/MediaScanner;->MAX_FILE_DIR_DEPTH_TO_IGNORE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 367
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 403
    iput-object v4, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 461
    new-instance v2, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v2, p0, v4}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;-><init>(Lcom/oppo/media/MediaScanner;Lcom/oppo/media/MediaScanner$1;)V

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    .line 2394
    iput v3, p0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2395
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    .line 2396
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    .line 2397
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetCalendar:Z

    .line 2422
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    .line 2423
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    .line 2424
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleDir:Z

    .line 2425
    iput v3, p0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2426
    iput-object v4, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 2427
    iput-object v4, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 2439
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mSBuffer:Ljava/lang/StringBuffer;

    .line 2804
    iput-object v4, p0, Lcom/oppo/media/MediaScanner;->mBlacklistCache:Ljava/util/HashMap;

    .line 2891
    iput-object v4, p0, Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;

    .line 413
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 416
    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 420
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 421
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z

    .line 426
    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    .line 428
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 429
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "maxFilePathLengthToIgnore"

    const-string v3, "1000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    .line 430
    const-string/jumbo v2, "maxFileDirDepthToIgnore"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/oppo/media/MediaScanner;->MAX_FILE_DIR_DEPTH_TO_IGNORE:I

    .line 431
    const-string/jumbo v2, "mediascanner-blacklist-xml"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "blacklist":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/media/MediaScanner;->setBlacklistStr(Ljava/lang/String;)V

    .line 433
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mPrimarySdPath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSecondarySdPath ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MAX_FILE_PATH_LENGTH_TO_IGNORE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/media/MediaScanner;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget v0, p0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oppo/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oppo/media/MediaScanner;)Lcom/oppo/media/MediaScannerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/oppo/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/oppo/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oppo/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetSIM2:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    return v0
.end method

.method static synthetic access$3000(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetCalendar:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationSetCalendar:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameCalendar:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneSetSIM2:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/oppo/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oppo/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oppo/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/oppo/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/media/MediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleFile:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/media/MediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/media/MediaScanner;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2094
    new-instance v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/oppo/media/MediaScanner$PlaylistEntry;-><init>(Lcom/oppo/media/MediaScanner$1;)V

    .line 2096
    .local v1, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2097
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2100
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2115
    :goto_1
    return-void

    .line 2101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2105
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2106
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2109
    .local v3, "fullPath":Z
    :cond_4
    if-nez v3, :cond_5

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2111
    :cond_5
    iput-object p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2114
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkOppoDefaultValue(Ljava/lang/String;)V
    .locals 14
    .param p1, "strTag"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2721
    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2722
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2723
    .local v7, "defaultFileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2724
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2725
    .local v8, "id":I
    const/4 v10, 0x0

    .line 2726
    .local v10, "uriDatabases":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2728
    .local v11, "uriSettings":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 2729
    const-string/jumbo v1, "oppo_default_notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2730
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 2744
    :cond_0
    :goto_0
    if-nez v7, :cond_7

    .line 2745
    const-string v1, "MediaScanner"

    const-string v2, "checkOppoDefaultValue() strTag=%s is invalid."

    new-array v3, v13, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_1
    :goto_1
    return-void

    .line 2731
    :cond_2
    const-string/jumbo v1, "oppo_default_notification_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2732
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2733
    :cond_3
    const-string v1, "calendar_default_sound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2734
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameCalendar:Ljava/lang/String;

    goto :goto_0

    .line 2735
    :cond_4
    const-string/jumbo v1, "oppo_default_ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2736
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    goto :goto_0

    .line 2737
    :cond_5
    const-string/jumbo v1, "oppo_default_ringtone_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2738
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2739
    :cond_6
    const-string/jumbo v1, "oppo_default_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2740
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    goto :goto_0

    .line 2748
    :cond_7
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_8

    .line 2753
    :cond_8
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "_display_name=?"

    new-array v4, v13, [Ljava/lang/String;

    aput-object v7, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2758
    if-eqz v6, :cond_a

    .line 2759
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 2760
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2761
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2762
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v8

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2764
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2768
    :cond_a
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2769
    .local v9, "strTemp":Ljava/lang/String;
    if-eqz v9, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2770
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2772
    :cond_b
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_c

    .line 2773
    const-string v1, "MediaScanner"

    const-string v2, "checkOppoDefaultValue() uriDatabases=%s, uriSettings=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v12

    aput-object v11, v3, v13

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_c
    if-nez v10, :cond_d

    .line 2777
    if-eqz v11, :cond_1

    .line 2778
    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 2781
    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2782
    :cond_e
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private checkOppoDefaultValues()V
    .locals 6

    .prologue
    .line 2706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2707
    .local v0, "beginTime":J
    const-string/jumbo v4, "oppo_default_notification"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2708
    const-string/jumbo v4, "oppo_default_notification_sim2"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2709
    const-string v4, "calendar_default_sound"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2710
    const-string/jumbo v4, "oppo_default_ringtone"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2711
    const-string/jumbo v4, "oppo_default_ringtone_sim2"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2712
    const-string/jumbo v4, "oppo_default_alarm"

    invoke-direct {p0, v4}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 2714
    .local v2, "timeCost":J
    sget-boolean v4, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v4, :cond_0

    .line 2717
    :cond_0
    return-void
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1594
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1595
    aget-object v0, p2, v1

    .line 1596
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    const/4 v2, 0x1

    .line 1600
    .end local v0    # "directory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1594
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1600
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1728
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1730
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1731
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1732
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1733
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1734
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1735
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1737
    const-string/jumbo v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    .line 1740
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mProcessGenres:Z

    .line 1741
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1743
    iput-boolean v3, p0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1745
    :cond_0
    return-void
.end method

.method private isDirInBlacklist(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2806
    iget-object v6, p0, Lcom/oppo/media/MediaScanner;->mBlacklistCache:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    .line 2807
    iget-object v6, p0, Lcom/oppo/media/MediaScanner;->mBlacklistCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2819
    :goto_0
    return v5

    .line 2810
    :cond_0
    iget-object v6, p0, Lcom/oppo/media/MediaScanner;->mBlacklistCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2811
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2812
    .local v0, "be":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 2813
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 2814
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 2819
    .end local v0    # "be":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 464
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1871
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1872
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1901
    :cond_0
    :goto_0
    return v1

    .line 1877
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1878
    .local v7, "lastSlash":I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1880
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1888
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1892
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1893
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8    # "length":I
    :cond_3
    move v1, v4

    .line 1901
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1905
    if-nez p0, :cond_0

    .line 1944
    :goto_0
    return v5

    .line 1906
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "curDir":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 1909
    goto :goto_0

    .line 1913
    .end local v0    # "curDir":Ljava/lang/String;
    :cond_1
    const-string v7, "/."

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 1917
    :cond_2
    const/4 v3, 0x1

    .line 1918
    .local v3, "offset":I
    :goto_1
    if-ltz v3, :cond_6

    .line 1919
    const/16 v7, 0x2f

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1920
    .local v4, "slashIndex":I
    if-le v4, v3, :cond_4

    .line 1921
    add-int/lit8 v4, v4, 0x1

    .line 1922
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1923
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1931
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1933
    .local v1, "dirPath":Ljava/lang/String;
    sget-object v7, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    sget-object v7, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    if-eqz v7, :cond_5

    sget-object v7, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1942
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    move v3, v4

    .line 1943
    goto :goto_1

    .restart local v1    # "dirPath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_5
    move v5, v6

    .line 1937
    goto/16 :goto_0

    .line 1944
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "slashIndex":I
    :cond_6
    invoke-static {p0}, Lcom/oppo/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private isOtherFiles(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2788
    if-nez p1, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return v1

    .line 2791
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2792
    .local v0, "upFileName":Ljava/lang/String;
    const-string v2, ".APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".CSV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".ICS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2797
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2070
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2071
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2072
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2073
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    .line 2074
    .local v1, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2072
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2077
    :cond_1
    const/4 v0, 0x0

    .line 2078
    iget-object v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2079
    iput-wide p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2080
    iput v6, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2084
    :cond_2
    iget-object v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lcom/oppo/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2085
    .local v4, "matchLength":I
    iget v5, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2086
    iput-wide p1, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2087
    iput v4, v1, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2090
    .end local v1    # "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2043
    const/4 v10, 0x0

    .line 2044
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2045
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2047
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2048
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2049
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2050
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2051
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2052
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2053
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2054
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2055
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2056
    :goto_4
    sub-int v5, v8, v2

    .line 2057
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2065
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .line 2052
    goto :goto_1

    .restart local v2    # "start1":I
    :cond_2
    move v4, v7

    .line 2053
    goto :goto_2

    .line 2054
    .restart local v4    # "start2":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2055
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2058
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    add-int/lit8 v10, v10, 0x1

    .line 2060
    add-int/lit8 v8, v2, -0x1

    .line 2061
    add-int/lit8 v9, v4, -0x1

    .line 2063
    goto :goto_0
.end method

.method private static parseBlackList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2849
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2850
    .local v3, "fullList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2852
    .local v9, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2853
    :try_start_0
    invoke-static {p1}, Lcom/oppo/media/MediaScanner;->parseFilterBlock(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2858
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    :cond_1
    move-object v3, v10

    .line 2888
    .end local v3    # "fullList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-object v3

    .line 2855
    .restart local v3    # "fullList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2856
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2861
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2862
    .local v7, "length":I
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2863
    .local v6, "internalSdPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2864
    .local v2, "externalSdPath":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/oppo/os/OppoUsbEnvironment;->isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 2865
    .local v5, "inSdMounted":Z
    invoke-static {p0, v2}, Lcom/oppo/os/OppoUsbEnvironment;->isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2866
    .local v1, "exSdMounted":Z
    if-nez v6, :cond_4

    if-nez v2, :cond_4

    move-object v3, v10

    .line 2867
    goto :goto_1

    .line 2869
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 2870
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_5

    .line 2871
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2872
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2873
    const-string v10, "%"

    const-string v11, ".+"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2874
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "regular path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    invoke-virtual {v3, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2879
    .end local v4    # "i":I
    .end local v8    # "path":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 2880
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v7, :cond_2

    .line 2881
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2882
    .restart local v8    # "path":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2883
    const-string v10, "%"

    const-string v11, ".+"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2884
    const-string v10, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "regular path ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    invoke-virtual {v3, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private static parseFilterBlock(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2827
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 2828
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2829
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 2830
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2831
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 2832
    .local v0, "evenType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    .line 2833
    const/4 v5, 0x2

    if-ne v5, v0, :cond_0

    .line 2834
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2835
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2836
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 2837
    .local v4, "values":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v4    # "values":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 2842
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2845
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1701
    iget-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1702
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->processPlayLists()V

    .line 1705
    :cond_0
    iget v0, p0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1706
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1709
    :cond_1
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1713
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1714
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1715
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1718
    :cond_2
    iput-object v2, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1719
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 40
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1372
    const/16 v26, 0x0

    .line 1373
    .local v26, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1374
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1378
    .local v8, "selectionArgs":[Ljava/lang/String;
    sget-boolean v3, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v3, :cond_0

    .line 1382
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-nez v3, :cond_b

    .line 1383
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1390
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 1391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1396
    :goto_1
    if-eqz p1, :cond_d

    .line 1398
    const-string v7, "_id>? AND _data=?"

    .line 1400
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v8, v3

    const/4 v3, 0x1

    aput-object p1, v8, v3

    .line 1455
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v25

    .line 1456
    .local v25, "builder":Landroid/net/Uri$Builder;
    const-string v3, "deletedata"

    const-string v4, "false"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1457
    new-instance v27, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4, v6}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1458
    .local v27, "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    const/16 v39, -0x1

    .line 1459
    .local v39, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    .line 1460
    .local v32, "internalSd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 1461
    .local v30, "externalSd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1462
    sget-boolean v3, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v3, :cond_2

    .line 1463
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " prescan internalsd ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " externalsd ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " scanning "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1467
    const/16 v39, 0x0

    .line 1470
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1471
    const/16 v39, 0x1

    .line 1476
    :cond_4
    if-eqz p2, :cond_8

    .line 1481
    const-wide/high16 v35, -0x8000000000000000L

    .line 1482
    .local v35, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "check_hidden"

    const-string v6, "false"

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "limit"

    const-string v6, "1000"

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1484
    .local v5, "limitUri":Landroid/net/Uri;
    if-ltz v39, :cond_5

    .line 1485
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "position"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1489
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1491
    :cond_6
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 1492
    if-eqz v26, :cond_7

    .line 1493
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1494
    const/16 v26, 0x0

    .line 1496
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v6, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v9, "_id"

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 1498
    if-nez v26, :cond_16

    .line 1578
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v35    # "lastId":J
    :cond_8
    if-eqz v26, :cond_9

    .line 1579
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1581
    :cond_9
    invoke-virtual/range {v27 .. v27}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1585
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    sget-object v19, Lcom/oppo/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v16 .. v23}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v26

    .line 1587
    if-eqz v26, :cond_a

    .line 1588
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/media/MediaScanner;->mOriginalCount:I

    .line 1589
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1591
    :cond_a
    return-void

    .line 1385
    .end local v25    # "builder":Landroid/net/Uri$Builder;
    .end local v27    # "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    .end local v30    # "externalSd":Ljava/lang/String;
    .end local v32    # "internalSd":Ljava/lang/String;
    .end local v39    # "position":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1393
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 1401
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/media/MediaScanner;->mIsScanSingleDir:Z

    if-eqz v3, :cond_e

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>? AND _data LIKE \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1406
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v8, v3

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_2

    .line 1408
    :cond_e
    const-string v7, "_id>?"

    .line 1409
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v8, v3

    .line 1412
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 1413
    .local v24, "bAppended":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-eqz v3, :cond_1

    .line 1414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 1416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "media_type=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1418
    const/16 v24, 0x1

    .line 1420
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    .line 1421
    if-eqz v24, :cond_10

    .line 1422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1424
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "media_type=3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1426
    const/16 v24, 0x1

    .line 1428
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    .line 1429
    if-eqz v24, :cond_12

    .line 1430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1432
    :cond_12
    const/16 v24, 0x1

    .line 1433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "media_type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1436
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_15

    .line 1437
    if-eqz v24, :cond_14

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1440
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data LIKE \'%.apk\' OR _data LIKE \'%.csv\' OR _data LIKE \'%.vcf\' OR _data LIKE \'%.ics\' OR _data LIKE \'%.vcs\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1446
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1502
    .end local v24    # "bAppended":Z
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v25    # "builder":Landroid/net/Uri$Builder;
    .restart local v27    # "deleter":Lcom/oppo/media/MediaScanner$MediaBulkDeleter;
    .restart local v30    # "externalSd":Ljava/lang/String;
    .restart local v32    # "internalSd":Ljava/lang/String;
    .restart local v35    # "lastId":J
    .restart local v39    # "position":I
    :cond_16
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v37

    .line 1503
    .local v37, "num":I
    if-eqz v37, :cond_8

    .line 1506
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/oppo/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1507
    :cond_17
    :goto_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1508
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1509
    .local v10, "rowId":J
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1510
    .local v12, "path":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1511
    .local v15, "format":I
    const/4 v3, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1512
    .local v13, "lastModified":J
    move-wide/from16 v35, v10

    .line 1513
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-nez v3, :cond_6

    .line 1519
    if-eqz v12, :cond_17

    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_17

    .line 1520
    const/16 v29, 0x0

    .line 1523
    .local v29, "exists":Z
    :try_start_2
    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v12, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v29

    .line 1528
    :goto_4
    if-nez v29, :cond_18

    :try_start_3
    invoke-static {v15}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1533
    invoke-static {v12}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v34

    .line 1534
    .local v34, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v34, :cond_1a

    const/16 v31, 0x0

    .line 1536
    .local v31, "fileType":I
    :goto_5
    invoke-static/range {v31 .. v31}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1537
    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1538
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1539
    invoke-virtual/range {v27 .. v27}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1540
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v38

    .line 1541
    .local v38, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "unhide"

    const/16 v16, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-interface {v3, v4, v6, v0, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1549
    .end local v31    # "fileType":I
    .end local v34    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .end local v38    # "parent":Ljava/lang/String;
    :cond_18
    if-eqz v29, :cond_17

    .line 1550
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    if-le v3, v4, :cond_1b

    .line 1552
    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->delete(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1578
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v10    # "rowId":J
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "lastModified":J
    .end local v15    # "format":I
    .end local v29    # "exists":Z
    .end local v37    # "num":I
    :catchall_0
    move-exception v3

    if-eqz v26, :cond_19

    .line 1579
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1581
    :cond_19
    invoke-virtual/range {v27 .. v27}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v3

    .line 1524
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v10    # "rowId":J
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v13    # "lastModified":J
    .restart local v15    # "format":I
    .restart local v29    # "exists":Z
    .restart local v37    # "num":I
    :catch_0
    move-exception v28

    .line 1525
    .local v28, "e1":Landroid/system/ErrnoException;
    :try_start_4
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " prescan Libcore.os.access failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " path ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1534
    .end local v28    # "e1":Landroid/system/ErrnoException;
    .restart local v34    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_1a
    move-object/from16 v0, v34

    iget v0, v0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v31, v0

    goto/16 :goto_5

    .line 1554
    .end local v34    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_1b
    move-object/from16 v33, v12

    .line 1555
    .local v33, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v3, :cond_1c

    .line 1556
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    .line 1558
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1559
    new-instance v9, Lcom/oppo/media/MediaScanner$FileEntry;

    invoke-direct/range {v9 .. v15}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 1560
    .local v9, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mFilesCache:Ljava/util/HashMap;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1566
    .end local v9    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_1d
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " duplicate entries!!!!! put into deleter! path="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Lcom/oppo/media/MediaScanner$MediaBulkDeleter;->delete(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2118
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2119
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2120
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2121
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Lcom/oppo/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2127
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2128
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2129
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2130
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;

    .line 2131
    .local v2, "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2133
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2134
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2135
    const-string v8, "audio_id"

    iget-wide v10, v2, Lcom/oppo/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2136
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2137
    add-int/lit8 v4, v4, 0x1

    .line 2129
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2138
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Lcom/oppo/media/MediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2144
    :cond_3
    iget-object v8, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 2441
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_0

    .line 2444
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-eqz v2, :cond_2

    .line 2445
    const-string v2, "MediaScanner"

    const-string v4, " processDirectory is broken!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_1
    :goto_0
    return-void

    .line 2449
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    .line 2450
    .local v9, "noMedia":Z
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-eqz v2, :cond_3

    .line 2451
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2457
    :cond_3
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2458
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v20

    .line 2459
    .local v20, "subFiles":[Ljava/lang/String;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2460
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 2461
    .local v18, "len":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 2462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mSBuffer:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mSBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v4, v20, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2464
    .local v3, "newPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2465
    .local v19, "newFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2466
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sget v4, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    if-le v2, v4, :cond_5

    .line 2461
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2471
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2472
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/media/MediaScanner;->isDirInBlacklist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2473
    const-string v2, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " dir in blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2477
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    sget-object v4, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/oppo/media/MediaScanner;->sPrimarySdPath:Ljava/lang/String;

    sget-object v4, Lcom/oppo/media/MediaScanner;->sSecondarySdPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2481
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_4

    goto :goto_2

    .line 2486
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    if-nez v2, :cond_8

    .line 2487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 2489
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    sget v4, Lcom/oppo/media/MediaScanner;->MAX_FILE_DIR_DEPTH_TO_IGNORE:I

    if-lt v2, v4, :cond_9

    .line 2492
    const-string v2, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " processDirectory stack overflow, MAX_FILE_DIR_DEPTH_TO_IGNORE= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oppo/media/MediaScanner;->MAX_FILE_DIR_DEPTH_TO_IGNORE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2495
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/oppo/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    .line 2497
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    if-gez v2, :cond_4

    .line 2498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/oppo/media/MediaScanner;->mRecursionDepth:I

    goto/16 :goto_2

    .line 2501
    :cond_a
    const/4 v15, 0x0

    .line 2502
    .local v15, "isAudio":Z
    const/16 v17, 0x0

    .line 2503
    .local v17, "isVideo":Z
    const/16 v16, 0x0

    .line 2505
    .local v16, "isImage":Z
    invoke-static {v3}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 2506
    .local v12, "fileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_b

    .line 2507
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 2508
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 2509
    iget v2, v12, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v16

    .line 2519
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2520
    .local v13, "flag":I
    const/4 v10, 0x0

    .line 2521
    .local v10, "bCareAbout":Z
    if-nez v13, :cond_c

    .line 2522
    const/4 v10, 0x1

    .line 2524
    :cond_c
    if-nez v10, :cond_d

    and-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    if-eqz v15, :cond_d

    .line 2526
    const/4 v10, 0x1

    .line 2528
    :cond_d
    if-nez v10, :cond_e

    and-int/lit8 v2, v13, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_e

    if-eqz v17, :cond_e

    .line 2530
    const/4 v10, 0x1

    .line 2532
    :cond_e
    if-nez v10, :cond_f

    and-int/lit8 v2, v13, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    if-eqz v16, :cond_f

    .line 2534
    const/4 v10, 0x1

    .line 2536
    :cond_f
    if-nez v10, :cond_10

    and-int/lit8 v2, v13, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/media/MediaScanner;->isOtherFiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2538
    const/4 v10, 0x1

    .line 2540
    :cond_10
    if-eqz v10, :cond_4

    .line 2541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    goto/16 :goto_2
.end method

.method private processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 2554
    iget-object v7, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 2555
    .local v7, "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 2556
    .local v5, "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 2557
    .local v2, "isMp3":Z
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2558
    const/4 v2, 0x1

    .line 2560
    :cond_0
    sget-boolean v10, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v10, :cond_1

    .line 2564
    :cond_1
    if-eqz v2, :cond_6

    .line 2565
    if-nez v5, :cond_2

    .line 2566
    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .end local v5    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    .local v6, "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    move-object v5, v6

    .line 2568
    .end local v6    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "mp3Retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2579
    :goto_0
    sget-object v10, Lcom/oppo/media/MediaScanner;->sKeyMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2580
    .local v3, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 2581
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 2582
    .local v9, "tag":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2583
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 2584
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_b

    .line 2585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 2590
    :goto_2
    if-eqz v9, :cond_3

    .line 2591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p3, v10, v9}, Landroid/media/MediaScannerClient;->handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2604
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v9    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2605
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v10, "MediaScanner"

    const-string/jumbo v11, "processFile process failed!"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    if-eqz v7, :cond_4

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v10, :cond_4

    .line 2608
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2609
    const/4 v7, 0x0

    .line 2611
    :cond_4
    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v10, :cond_5

    .line 2612
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2613
    const/4 v5, 0x0

    .line 2616
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void

    .line 2570
    :cond_6
    if-nez v7, :cond_7

    .line 2571
    :try_start_2
    new-instance v8, Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-direct {v8}, Lcom/oppo/media/OppoMediaMetadataRetriever;-><init>()V

    .end local v7    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    .local v8, "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    move-object v7, v8

    .line 2573
    .end local v8    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v7    # "retriever":Lcom/oppo/media/OppoMediaMetadataRetriever;
    :cond_7
    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 2574
    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setLocale(Ljava/lang/String;)V

    .line 2576
    :cond_8
    invoke-virtual {v7, p1}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2607
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_9

    iget-object v11, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v11, :cond_9

    .line 2608
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2609
    const/4 v7, 0x0

    .line 2611
    :cond_9
    if-eqz v5, :cond_a

    iget-object v11, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v11, :cond_a

    .line 2612
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2613
    const/4 v5, 0x0

    :cond_a
    throw v10

    .line 2587
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;
    .restart local v9    # "tag":Ljava/lang/String;
    :cond_b
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 2594
    :cond_c
    const/4 v4, 0x0

    .line 2595
    .local v4, "mimeTp":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 2596
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 2601
    :goto_4
    if-eqz v4, :cond_d

    .line 2602
    invoke-interface {p3, v4}, Landroid/media/MediaScannerClient;->setMimeType(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2607
    :cond_d
    if-eqz v7, :cond_e

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eq v7, v10, :cond_e

    .line 2608
    invoke-virtual {v7}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2609
    const/4 v7, 0x0

    .line 2611
    :cond_e
    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eq v5, v10, :cond_5

    .line 2612
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2613
    const/4 v5, 0x0

    goto :goto_3

    .line 2598
    :cond_f
    const/16 v10, 0xc

    :try_start_4
    invoke-virtual {v7, v10}, Lcom/oppo/media/OppoMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_4
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2149
    const/4 v3, 0x0

    .line 2151
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2152
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2153
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2155
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2156
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2157
    :goto_0
    if-eqz v2, :cond_1

    .line 2159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2160
    invoke-direct {p0, v2, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2165
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2171
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2172
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2177
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2173
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2174
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2167
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2168
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2171
    if-eqz v3, :cond_3

    .line 2172
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2173
    :catch_2
    move-exception v0

    .line 2174
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2171
    :goto_3
    if-eqz v3, :cond_4

    .line 2172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2175
    :cond_4
    :goto_4
    throw v5

    .line 2173
    :catch_3
    move-exception v0

    .line 2174
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2167
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Lcom/oppo/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2277
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2278
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2279
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2280
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2282
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2285
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2286
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2287
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2288
    if-nez v16, :cond_1

    .line 2290
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2291
    .local v13, "lastDot":I
    if-gez v13, :cond_4

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2296
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2299
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_5

    .line 2300
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2302
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2303
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2313
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2314
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2315
    .local v15, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v15, :cond_6

    const/4 v12, 0x0

    .line 2316
    .local v12, "fileType":I
    :goto_2
    sget-boolean v2, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v2, :cond_2

    .line 2317
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " processPlayList step2 filetype="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " constant MediaFile.FILE_TYPE_M3U="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_2
    const/16 v2, 0x29

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2321
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2327
    :cond_3
    :goto_3
    return-void

    .line 2291
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_4
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 2305
    .end local v13    # "lastDot":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2306
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2309
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2310
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2315
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    :cond_6
    iget v12, v15, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2322
    .restart local v12    # "fileType":I
    :cond_7
    const/16 v2, 0x2a

    if-ne v12, v2, :cond_8

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2323
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2324
    :cond_8
    const/16 v2, 0x2b

    if-ne v12, v2, :cond_3

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2325
    invoke-direct/range {v6 .. v11}, Lcom/oppo/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2331
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oppo/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 2335
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2337
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2338
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/media/MediaScanner$FileEntry;

    .line 2340
    .local v8, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Lcom/oppo/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2341
    invoke-direct {p0, v8, v9}, Lcom/oppo/media/MediaScanner;->processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2344
    .end local v8    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2346
    if-eqz v9, :cond_1

    .line 2347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2350
    :cond_1
    :goto_1
    return-void

    .line 2346
    :cond_2
    if-eqz v9, :cond_1

    .line 2347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2346
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 2347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2181
    const/4 v4, 0x0

    .line 2183
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2184
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2185
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2187
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2188
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2189
    :goto_0
    if-eqz v3, :cond_1

    .line 2191
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2192
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2193
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2194
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/oppo/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2200
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2206
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2207
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2212
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2208
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2209
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2202
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2203
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2206
    if-eqz v4, :cond_3

    .line 2207
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2208
    :catch_2
    move-exception v0

    .line 2209
    const-string v6, "MediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2205
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2206
    :goto_3
    if-eqz v4, :cond_4

    .line 2207
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2210
    :cond_4
    :goto_4
    throw v6

    .line 2208
    :catch_3
    move-exception v0

    .line 2209
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2205
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2202
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2250
    const/4 v2, 0x0

    .line 2252
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2254
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2256
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2257
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Lcom/oppo/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Lcom/oppo/media/MediaScanner$WplHandler;-><init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Lcom/oppo/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2260
    invoke-direct {p0, p5, p4, p3}, Lcom/oppo/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 2268
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2269
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2274
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2270
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2271
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2262
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2263
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2268
    if-eqz v2, :cond_1

    .line 2269
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2270
    :catch_2
    move-exception v0

    .line 2271
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2264
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2265
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2268
    if-eqz v2, :cond_1

    .line 2269
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2270
    :catch_4
    move-exception v0

    .line 2271
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2267
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2268
    :goto_3
    if-eqz v2, :cond_2

    .line 2269
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2272
    :cond_2
    :goto_4
    throw v4

    .line 2270
    :catch_5
    move-exception v0

    .line 2271
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2267
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2264
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2262
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 17

    .prologue
    .line 1604
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1611
    .local v11, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1613
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 1614
    .local v13, "files":[Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1615
    const/4 v1, 0x0

    new-array v13, v1, [Ljava/lang/String;

    .line 1617
    :cond_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v1, v13

    if-ge v15, v1, :cond_1

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1619
    .local v14, "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1617
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1623
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1630
    .local v9, "c":Landroid/database/Cursor;
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_2

    .line 1631
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_2
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1635
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1636
    .restart local v14    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1637
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1640
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1644
    .local v12, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1645
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1649
    .end local v12    # "fileToDelete":Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_6

    .line 1650
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    :cond_6
    if-eqz v9, :cond_7

    .line 1653
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1658
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    return-void

    .line 1655
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1726
    :cond_0
    return-void
.end method

.method private scanFileInNewThread(Ljava/lang/String;JJZZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 2668
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 2672
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2676
    :cond_1
    new-instance v1, Lcom/oppo/media/MediaScanner$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/oppo/media/MediaScanner$1;-><init>(Lcom/oppo/media/MediaScanner;Ljava/lang/String;JJZZ)V

    .line 2683
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2684
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 3

    .prologue
    .line 439
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 441
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 443
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 447
    const-string/jumbo v0, "ro.config.ringtone_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    .line 449
    const-string/jumbo v0, "ro.config.notification_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    .line 451
    const-string/jumbo v0, "ro.config.calendar_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilenameCalendar:Ljava/lang/String;

    .line 453
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultRingtoneFileNames ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDefaultAlarmAlertFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mDefaultNotificationFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    return-void
.end method

.method private shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "pool"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 2687
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2689
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2691
    :try_start_0
    sget-boolean v1, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v1, :cond_0

    .line 2692
    const-string v1, "MediaScanner"

    const-string/jumbo v2, "thread pool isn\'t terminated, waitting..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_0
    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2695
    :catch_0
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaScanner"

    const-string/jumbo v2, "some exception happened in awaitTermination!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2698
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2702
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method public extractAlbumArt(Ljava/io/FileDescriptor;)[B
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 2623
    const/4 v1, 0x0

    .line 2647
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 2649
    .local v2, "scanner":Landroid/media/MediaScanner;
    :try_start_0
    new-instance v3, Landroid/media/MediaScanner;

    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2650
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .local v3, "scanner":Landroid/media/MediaScanner;
    :try_start_1
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2651
    iget-object v4, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 2653
    :cond_0
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 2657
    if-eqz v3, :cond_3

    .line 2658
    const/4 v2, 0x0

    .line 2659
    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2663
    :cond_1
    :goto_0
    return-object v1

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "MediaScanner"

    const-string v5, "extractAlbumArt failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2657
    if-eqz v2, :cond_1

    .line 2658
    const/4 v2, 0x0

    .line 2659
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2657
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 2658
    const/4 v2, 0x0

    .line 2659
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    throw v4

    .line 2657
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_2

    .line 2654
    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_1

    .end local v2    # "scanner":Landroid/media/MediaScanner;
    .restart local v3    # "scanner":Landroid/media/MediaScanner;
    :cond_3
    move-object v2, v3

    .end local v3    # "scanner":Landroid/media/MediaScanner;
    .restart local v2    # "scanner":Landroid/media/MediaScanner;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2365
    invoke-direct {p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 2366
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2008
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/oppo/media/MediaScanner;->MAX_FILE_PATH_LENGTH_TO_IGNORE:I

    if-le v0, v1, :cond_1

    .line 2009
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeEntryFor, return null. path.length()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/4 v6, 0x0

    .line 2038
    :cond_0
    :goto_0
    return-object v6

    .line 2013
    :cond_1
    const/4 v13, 0x0

    .line 2015
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_data=?"

    .line 2016
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2017
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v3, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 2019
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2020
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2021
    .local v7, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2022
    .local v12, "format":I
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2025
    .local v10, "lastModified":J
    if-eqz v13, :cond_2

    .line 2026
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2027
    const/4 v13, 0x0

    .line 2030
    :cond_2
    new-instance v6, Lcom/oppo/media/MediaScanner$FileEntry;

    move-object v9, p1

    invoke-direct/range {v6 .. v12}, Lcom/oppo/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    if-eqz v13, :cond_0

    .line 2035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2034
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_3
    if-eqz v13, :cond_4

    .line 2035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2038
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2032
    :catch_0
    move-exception v0

    .line 2034
    if-eqz v13, :cond_4

    .line 2035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2034
    :catchall_0
    move-exception v0

    if-eqz v13, :cond_5

    .line 2035
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1754
    :try_start_0
    new-instance v12, Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-direct {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1755
    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1756
    sget-boolean v12, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v12, :cond_0

    .line 1757
    const-string v12, "MediaScanner"

    const-string/jumbo v13, "scanDirectories, directories=%s, volumeName=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    const-string v12, "external"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1761
    const/4 v12, 0x0

    aget-object v12, p1, v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mScanningDirectory:Ljava/lang/String;

    .line 1766
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1767
    .local v10, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1768
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1773
    .local v6, "prescan":J
    new-instance v12, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v15, 0x1f4

    invoke-direct {v12, v13, v14, v15}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1778
    const-string/jumbo v12, "internal"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1779
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->checkOppoDefaultValues()V

    .line 1783
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_3

    .line 1784
    aget-object v12, p1, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/oppo/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1783
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1786
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    if-eqz v12, :cond_6

    const-string v12, "external"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1787
    const-string v12, "MediaScanner"

    const-string/jumbo v13, "scanDirectory is broken!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_4

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_5

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 1841
    .end local v3    # "i":I
    .end local v6    # "prescan":J
    .end local v10    # "start":J
    :goto_1
    return-void

    .line 1800
    .restart local v3    # "i":I
    .restart local v6    # "prescan":J
    .restart local v10    # "start":J
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v12}, Landroid/media/MediaInserter;->flushAll()V

    .line 1801
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1805
    .local v8, "scan":J
    invoke-direct/range {p0 .. p1}, Lcom/oppo/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1816
    .local v4, "end":J
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " prescan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v6, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    scan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v8, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "postscan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   total time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_7

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_8

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    .line 1840
    .end local v3    # "i":I
    .end local v4    # "end":J
    .end local v6    # "prescan":J
    .end local v8    # "scan":J
    .end local v10    # "start":J
    :goto_2
    const-string v12, "MediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "scanDirectories ended "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1821
    :catch_0
    move-exception v2

    .line 1823
    .local v2, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v12, "MediaScanner"

    const-string v13, "SQLException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_9

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_a

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto :goto_2

    .line 1824
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 1826
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v12, "MediaScanner"

    const-string v13, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_b

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_c

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto :goto_2

    .line 1827
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1828
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v12, "MediaScanner"

    const-string v13, "RemoteException in MediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v12, :cond_d

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v12, :cond_e

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v12}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1830
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    if-eqz v13, :cond_f

    .line 1831
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1832
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/media/MediaScanner;->mMp3Retriver:Landroid/media/MediaMetadataRetriever;

    .line 1834
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    if-eqz v13, :cond_10

    .line 1835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-virtual {v13}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 1836
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/media/MediaScanner;->mOppoRetriver:Lcom/oppo/media/OppoMediaMetadataRetriever;

    .line 1838
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/oppo/media/MediaScanner;->releaseResources()V

    throw v12
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 1949
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1950
    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1951
    .local v26, "mediaFileType":Lcom/oppo/media/MediaFile$MediaFileType;
    if-nez v26, :cond_1

    const/16 v25, 0x0

    .line 1952
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 1955
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1960
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1961
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1962
    const-string v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1964
    const/4 v4, 0x1

    :try_start_0
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 1965
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_id=?"

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "lastModifiedSeconds":J
    :cond_0
    :goto_1
    return-void

    .line 1951
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_1
    move-object/from16 v0, v26

    iget v0, v0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    goto :goto_0

    .line 1967
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    .restart local v25    # "fileType":I
    :catch_0
    move-exception v21

    .line 1968
    .local v21, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1973
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1974
    const/16 v24, 0x0

    .line 1976
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v25 .. v25}, Lcom/oppo/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1978
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1980
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Lcom/oppo/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 1981
    .local v22, "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_3

    .line 1982
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oppo/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v13, Lcom/oppo/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/oppo/media/MediaScanner;->processPlayList(Lcom/oppo/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    .end local v22    # "entry":Lcom/oppo/media/MediaScanner$FileEntry;
    :cond_3
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1998
    if-eqz v24, :cond_0

    .line 1999
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1988
    .restart local v14    # "lastModifiedSeconds":J
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/oppo/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    const/16 v18, 0x1

    :goto_3
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v20}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1994
    .end local v14    # "lastModifiedSeconds":J
    :catch_1
    move-exception v21

    .line 1995
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MediaScanner"

    const-string v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1997
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1998
    if-eqz v24, :cond_0

    .line 1999
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1991
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 1997
    .end local v14    # "lastModifiedSeconds":J
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/oppo/media/MediaScanner;->mMtpObjectHandle:I

    .line 1998
    if-eqz v24, :cond_6

    .line 1999
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method public scanSingleDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1747
    iput-boolean v0, p0, Lcom/oppo/media/MediaScanner;->mIsScanSingleDir:Z

    .line 1748
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "external"

    invoke-virtual {p0, v0, v1}, Lcom/oppo/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1846
    :try_start_0
    invoke-direct {p0, p2}, Lcom/oppo/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1847
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/oppo/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1849
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1853
    .local v11, "file":Ljava/io/File;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 1854
    const/4 v1, 0x0

    .line 1866
    .end local v11    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1859
    .restart local v11    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1862
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Lcom/oppo/media/MediaScanner;->mClient:Lcom/oppo/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v8

    const/4 v9, 0x1

    invoke-static {p1}, Lcom/oppo/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v10}, Lcom/oppo/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1864
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBlacklistStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/oppo/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oppo/media/MediaScanner;->parseBlackList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/MediaScanner;->mBlacklistCache:Ljava/util/HashMap;

    .line 2823
    return-void
.end method

.method public setIsBreaking(Z)V
    .locals 3
    .param p1, "breaking"    # Z

    .prologue
    .line 2433
    sget-boolean v0, Lcom/oppo/media/MediaScanner;->LOG:Z

    if-eqz v0, :cond_0

    .line 2434
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsBreaking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_0
    iput-boolean p1, p0, Lcom/oppo/media/MediaScanner;->mIsBreaking:Z

    .line 2437
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mLocale:Ljava/lang/String;

    .line 2620
    return-void
.end method

.method public setMediaScannerCallback(Lcom/oppo/media/MediaScannerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oppo/media/MediaScannerCallback;

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/oppo/media/MediaScanner;->mMediaScannerCallback:Lcom/oppo/media/MediaScannerCallback;

    .line 2895
    return-void
.end method

.method public setScanFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 2429
    iput p1, p0, Lcom/oppo/media/MediaScanner;->mScanFlag:I

    .line 2430
    return-void
.end method
