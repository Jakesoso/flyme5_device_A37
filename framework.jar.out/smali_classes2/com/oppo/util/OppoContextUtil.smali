.class public Lcom/oppo/util/OppoContextUtil;
.super Lcom/color/util/ColorContextUtil;
.source "OppoContextUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/color/util/ColorContextUtil;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method
