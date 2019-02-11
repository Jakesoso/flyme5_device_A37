.class Landroid/view/ColorInjector$View;
.super Ljava/lang/Object;
.source "ColorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ColorInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ColorInjector$View$Element;
    }
.end annotation


# static fields
.field private static final DBG_ONAWAKESCROLLBAR:Z = false

.field private static final DBG_ONOVERSCROLLED:Z = false

.field private static final DBG_ONSCROLLCHANGED:Z = false

.field private static final ELEMENTS_NOOVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_NOSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_OVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_SCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ColorInjector.View"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method private static clearElements()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    sget-object v0, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    return-void
.end method

.method private static isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 6
    .param p0, "stacks"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List",
            "<",
            "Landroid/view/ColorInjector$View$Element;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Landroid/view/ColorInjector$View$Element;>;"
    const/4 v3, 0x0

    .line 139
    .local v3, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ColorInjector$View$Element;

    .line 140
    .local v0, "element":Landroid/view/ColorInjector$View$Element;
    invoke-virtual {v0}, Landroid/view/ColorInjector$View$Element;->getPosition()I

    move-result v2

    .line 141
    .local v2, "pos":I
    array-length v4, p0

    if-le v4, v2, :cond_0

    .line 142
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/ColorInjector$View$Element;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 143
    if-eqz v3, :cond_0

    .line 148
    .end local v0    # "element":Landroid/view/ColorInjector$View$Element;
    .end local v2    # "pos":I
    :cond_1
    return v3
.end method

.method public static onAwakenScrollBars(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 134
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 110
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    const-string v4, "ColorInjector.View"

    const-string/jumbo v5, "onAwakenScrollBars"

    invoke-static {v6, v4, v5}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "color_screenshot"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/screenshot/ColorScreenshotManager;

    .line 113
    .local v2, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 117
    .local v3, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "onAwakenScrollBars"

    invoke-static {v3, v4, v6}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 118
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->OVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->MMAWAKEN12:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->MMAWAKEN14:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->MMAWAKEN15:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->QQSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Landroid/view/ColorInjector$View$Element;->SCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    :cond_1
    :goto_1
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    .end local v3    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_2
    move v1, v0

    .line 134
    .restart local v1    # "result":I
    goto :goto_0

    .line 126
    .end local v1    # "result":I
    .restart local v3    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_3
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_1

    .line 128
    :cond_4
    sget-object v4, Landroid/view/ColorInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {v2, v6}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_1
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v3, "ColorInjector.View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverScrolled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 53
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 55
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 57
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onOverScrolled"

    invoke-static {v2, v3, v6}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 58
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->LISTOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->WEBOVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSEROVERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    :goto_1
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    goto :goto_0

    .line 64
    :cond_2
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v1, v6}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_1
.end method

.method public static onScrollChanged(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v3, "ColorInjector.View"

    const-string/jumbo v4, "onScrollChanged"

    invoke-static {v5, v3, v4}, Lcom/color/util/ColorLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "color_screenshot"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/screenshot/ColorScreenshotManager;

    .line 82
    .local v1, "sm":Lcom/color/screenshot/ColorScreenshotManager;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 84
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 86
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    const-string/jumbo v3, "onScrollChanged"

    invoke-static {v2, v3, v5}, Lcom/color/util/ColorLog;->printStackTrace([Ljava/lang/StackTraceElement;Ljava/lang/String;Z)V

    .line 87
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE9:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE12:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE14:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->MMCHANGE15:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->CONTENTSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->BROWSERSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->QZONESCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Landroid/view/ColorInjector$View$Element;->WEBSCROLL:Landroid/view/ColorInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v3, Landroid/view/ColorInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Landroid/view/ColorInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :goto_1
    invoke-static {}, Landroid/view/ColorInjector$View;->clearElements()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v1, v5}, Lcom/color/screenshot/ColorScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_1
.end method
