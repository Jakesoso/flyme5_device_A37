.class public abstract Lcom/mediatek/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/Effect$EffectUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Effect"

.field private static mIsEmulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    const-string v2, "ro.mtk_emulator_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/mediatek/effect/Effect;->mIsEmulator:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/media/Image;Landroid/media/Image;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected native native_setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/effect/Effect$EffectUpdateListener;

    .prologue
    .line 59
    sget-boolean v0, Lcom/mediatek/effect/Effect;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/mediatek/effect/Effect;->native_setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V

    .line 62
    :cond_0
    return-void
.end method
