.class public final Lcom/color/sau/SAUDb$UpdateInfoColumns;
.super Ljava/lang/Object;
.source "SAUDb.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/sau/SAUDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInfoColumns"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.oppo.update_info"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.oppo.update_info"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final _ALL_SIZE:Ljava/lang/String; = "all_size"

.field public static final _DESCRIPTION:Ljava/lang/String; = "description"

.field public static final _DOWNLOADED_SIZE:Ljava/lang/String; = "downloaded_size"

.field public static final _DOWNLOAD_FINISHED:Ljava/lang/String; = "download_finished"

.field public static final _ERROR_TYPE:Ljava/lang/String; = "error_type"

.field public static final _FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final _FORCE_DOWNLOAD:Ljava/lang/String; = "force_download"

.field public static final _FORCE_INSTALL:Ljava/lang/String; = "force_install"

.field public static final _ICON_EXISTS:Ljava/lang/String; = "icon_exists"

.field public static final _INSTALL_FINISHED:Ljava/lang/String; = "install_finished"

.field public static final _MD5_ALL:Ljava/lang/String; = "md5_all"

.field public static final _MD5_PATCH:Ljava/lang/String; = "md5_patch"

.field public static final _NEW_VERSION_CODE:Ljava/lang/String; = "new_version_code"

.field public static final _NEW_VERSION_NAME:Ljava/lang/String; = "new_version_name"

.field public static final _OLD_FILE_DIR:Ljava/lang/String; = "old_file_dir"

.field public static final _PATCH_FILE_NAME:Ljava/lang/String; = "patch_file_name"

.field public static final _PATCH_FINISHED:Ljava/lang/String; = "patch_finished"

.field public static final _PKG_NAME:Ljava/lang/String; = "pkg_name"

.field public static final _SAU_TYPE:Ljava/lang/String; = "sau_type"

.field public static final _SIZE:Ljava/lang/String; = "size"

.field public static final _TYPE:Ljava/lang/String; = "type"

.field public static final _URL:Ljava/lang/String; = "url"

.field public static final _USE_OLD:Ljava/lang/String; = "can_use_old"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "content://com.coloros.sau.db/update_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/color/sau/SAUDb$UpdateInfoColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
