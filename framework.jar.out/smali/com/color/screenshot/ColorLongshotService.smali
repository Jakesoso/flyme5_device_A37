.class public abstract Lcom/color/screenshot/ColorLongshotService;
.super Lcom/color/screenshot/IColorLongshot$Stub;
.source "ColorLongshotService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorLongshotService"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsSupported:Z

.field protected mNavBarVisible:Z

.field protected mStatusBarVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/screenshot/ColorLongshotService;-><init>(Landroid/content/Context;ZZZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "isSupported"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/color/screenshot/IColorLongshot$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/screenshot/ColorLongshotService;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean v1, p0, Lcom/color/screenshot/ColorLongshotService;->mStatusBarVisible:Z

    .line 47
    iput-boolean v1, p0, Lcom/color/screenshot/ColorLongshotService;->mNavBarVisible:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/screenshot/ColorLongshotService;->mIsSupported:Z

    .line 77
    iput-object p1, p0, Lcom/color/screenshot/ColorLongshotService;->mContext:Landroid/content/Context;

    .line 78
    iput-boolean p2, p0, Lcom/color/screenshot/ColorLongshotService;->mStatusBarVisible:Z

    .line 79
    iput-boolean p3, p0, Lcom/color/screenshot/ColorLongshotService;->mNavBarVisible:Z

    .line 80
    iput-boolean p4, p0, Lcom/color/screenshot/ColorLongshotService;->mIsSupported:Z

    .line 81
    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public notifyScroll(Z)V
    .locals 0
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public setSupport(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/color/screenshot/ColorLongshotService;->mIsSupported:Z

    .line 105
    return-void
.end method

.method public start(Lcom/color/screenshot/IColorScreenshotCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/color/screenshot/IColorScreenshotCallback;

    .prologue
    .line 87
    return-void
.end method
