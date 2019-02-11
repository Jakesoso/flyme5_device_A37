.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "gaoliang@Plf.Keyguard, 2012.08.27:add for oppo-wallpaper"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperHelper"
.end annotation


# static fields
.field private static final CURRENT_LAUNCHER_WALLPAPER_PATH:Ljava/lang/String; = "oppo.launcher.wallpaperpath"


# instance fields
.field private final DEFAULT_WALLPAPER_RES_ID:I

.field private final MTK_PLATFORM_PROP:Ljava/lang/String;

.field public final WALLPAPER_SCREENS_SPAN:F

.field private mWidthOfDefaultWallpaper:I

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 130
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->WALLPAPER_SCREENS_SPAN:F

    .line 131
    const-string v0, "ro.mediatek.platform"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->MTK_PLATFORM_PROP:Ljava/lang/String;

    .line 132
    const v0, 0xc08003e

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->DEFAULT_WALLPAPER_RES_ID:I

    .line 150
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->getDefaultWallpaperWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 151
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->clearWallpaperTagString()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;

    .prologue
    .line 128
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->checkSingleWallpaper()V

    return-void
.end method

.method private checkSingleWallpaper()V
    .locals 15

    .prologue
    .line 299
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v11

    .line 301
    .local v11, "wpi":Landroid/app/WallpaperInfo;
    const-string v12, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wpi = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :try_start_0
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWidthHint()I

    move-result v3

    .line 308
    .local v3, "desiredMinimumWidth":I
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 311
    .local v10, "wm":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 312
    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 314
    .local v7, "maxDim":I
    iget v12, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 318
    .local v8, "minDim":I
    const-string v12, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "desiredMinimumWidth = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", displayMetrics.widthPixels = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", displayMetrics.heightPixels = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move v5, v8

    .line 324
    .local v5, "dimWidth":I
    move v4, v7

    .line 326
    .local v4, "dimHeight":I
    new-instance v0, Landroid/graphics/Point;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v0, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 327
    .local v0, "bitmapSize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->getCurrentImageWallpaperInfo(Landroid/graphics/Point;)V

    .line 328
    const-string v12, "wallpaperDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new bitmap width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v12, "wallpaperDebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new bitmap height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v12, v0, Landroid/graphics/Point;->x:I

    if-lez v12, :cond_4

    .line 331
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 332
    .local v2, "bmWidth":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 335
    .local v1, "bmHeight":I
    const-string v12, "WallpaperManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bmWidth = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bmHeight = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v9, 0x1

    .line 340
    .local v9, "ratio":I
    if-ge v1, v7, :cond_0

    .line 341
    div-int v9, v7, v1

    .line 344
    :cond_0
    mul-int v12, v9, v2

    if-gt v12, v8, :cond_2

    if-eq v3, v8, :cond_2

    .line 346
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V

    .line 369
    .end local v0    # "bitmapSize":Landroid/graphics/Point;
    .end local v1    # "bmHeight":I
    .end local v2    # "bmWidth":I
    .end local v3    # "desiredMinimumWidth":I
    .end local v4    # "dimHeight":I
    .end local v5    # "dimWidth":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "maxDim":I
    .end local v8    # "minDim":I
    .end local v9    # "ratio":I
    .end local v10    # "wm":Landroid/view/WindowManager;
    :cond_1
    :goto_0
    return-void

    .line 347
    .restart local v0    # "bitmapSize":Landroid/graphics/Point;
    .restart local v1    # "bmHeight":I
    .restart local v2    # "bmWidth":I
    .restart local v3    # "desiredMinimumWidth":I
    .restart local v4    # "dimHeight":I
    .restart local v5    # "dimWidth":I
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "maxDim":I
    .restart local v8    # "minDim":I
    .restart local v9    # "ratio":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :cond_2
    mul-int v12, v9, v2

    if-le v12, v8, :cond_1

    if-gt v3, v8, :cond_1

    .line 349
    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->isScreenLarge(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 350
    int-to-float v12, v7

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v13

    mul-float/2addr v12, v13

    float-to-int v5, v12

    .line 355
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V

    goto :goto_0

    .line 365
    .end local v0    # "bitmapSize":Landroid/graphics/Point;
    .end local v1    # "bmHeight":I
    .end local v2    # "bmWidth":I
    .end local v3    # "desiredMinimumWidth":I
    .end local v4    # "dimHeight":I
    .end local v5    # "dimWidth":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "maxDim":I
    .end local v8    # "minDim":I
    .end local v9    # "ratio":I
    .end local v10    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 352
    .restart local v0    # "bitmapSize":Landroid/graphics/Point;
    .restart local v1    # "bmHeight":I
    .restart local v2    # "bmWidth":I
    .restart local v3    # "desiredMinimumWidth":I
    .restart local v4    # "dimHeight":I
    .restart local v5    # "dimWidth":I
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "maxDim":I
    .restart local v8    # "minDim":I
    .restart local v9    # "ratio":I
    .restart local v10    # "wm":Landroid/view/WindowManager;
    :cond_3
    int-to-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 358
    .end local v1    # "bmHeight":I
    .end local v2    # "bmWidth":I
    .end local v9    # "ratio":I
    :cond_4
    const/4 v12, -0x1

    iget v13, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    if-eq v12, v13, :cond_1

    iget v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    if-eq v3, v12, :cond_1

    .line 360
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->mWidthOfDefaultWallpaper:I

    .line 361
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->setDimensionHints_extra(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private clearWallpaperTagString()V
    .locals 5

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 142
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oppo.launcher.wallpaperpath"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return-void

    .line 144
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getCurrentImageWallpaperInfo(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "bmpInfo"    # Landroid/graphics/Point;

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v4, "params":Landroid/os/Bundle;
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper$1;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;)V

    .line 272
    .local v5, "wpmcb":Landroid/app/IWallpaperManagerCallback;
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 274
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentImageWallpaperInfo(): fd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    if-eqz v2, :cond_0

    .line 278
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 280
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 282
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 283
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 294
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v6, "WallpaperManagerService"

    const-string v7, "getCurrentImageWallpaperInfo(): Can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 289
    :catch_1
    move-exception v6

    goto :goto_0

    .line 287
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 288
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 291
    :goto_1
    throw v6

    .line 289
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v7

    goto :goto_1
.end method

.method private getDefaultWallpaperWidth(Landroid/content/Context;)I
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 154
    const/4 v7, -0x1

    .line 157
    .local v7, "width":I
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 160
    const-string v8, "non-mtk"

    const-string v9, "ro.mediatek.platform"

    const-string v10, "non-mtk"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 163
    .local v2, "isMtkPlatform":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 173
    .local v4, "r":Landroid/content/res/Resources;
    const-string v8, "persist.sys.oppo.region"

    const-string v9, "CN"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "default_region":Ljava/lang/String;
    const-string v5, "oppo_default_wallpaper"

    .line 175
    .local v5, "wallpapaerName":Ljava/lang/String;
    const-string v8, "MX"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 176
    const-string v5, "oppo_default_wallpaper_mexico_exp"

    .line 182
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oppo:drawable/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 183
    .local v6, "wallpaperID":I
    if-gtz v6, :cond_1

    .line 184
    const v6, 0xc08003e

    .line 187
    :cond_1
    invoke-static {v4, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 190
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 191
    const-string v8, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultWallpaperWidth(): width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "default_region":Ljava/lang/String;
    .end local v2    # "isMtkPlatform":Z
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "wallpapaerName":Ljava/lang/String;
    .end local v6    # "wallpaperID":I
    :goto_2
    return v7

    .line 160
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    .restart local v0    # "default_region":Ljava/lang/String;
    .restart local v2    # "isMtkPlatform":Z
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v5    # "wallpapaerName":Ljava/lang/String;
    :cond_3
    const-string v8, "CN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 178
    const-string v5, "oppo_default_wallpaper"

    goto :goto_1

    .line 180
    :cond_4
    const-string v5, "oppo_default_wallpaper_exp"
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    .end local v0    # "default_region":Ljava/lang/String;
    .end local v2    # "isMtkPlatform":Z
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "wallpapaerName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v8, "WallpaperManagerService"

    const-string v9, "getDefaultWallpaperWidth(): Can\'t decode res:"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public isScreenLarge(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 202
    .local v1, "screenSize":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 206
    .local v0, "isScreenLarge":Z
    :goto_0
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenLarge(): isScreenLarge = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v0

    .line 202
    .end local v0    # "isScreenLarge":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDimensionHints_extra(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 245
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 246
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_0

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 249
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 250
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_2
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v2, :cond_3

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v2, :cond_4

    .line 254
    :cond_3
    iput p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 255
    iput p2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 256
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperHelper;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 259
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    return-void
.end method

.method public wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 215
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 222
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 223
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 224
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 225
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 232
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 235
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 236
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method
