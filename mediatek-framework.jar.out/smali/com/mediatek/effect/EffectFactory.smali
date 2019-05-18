.class public Lcom/mediatek/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final EFFECTS_FACEBEAUTIFIER:Ljava/lang/String; = "FaceBeautyEffect"

.field private static final TAG:Ljava/lang/String; = "EffectFactory"

.field private static mIsEmulator:Z

.field private static sEffectFactory:Lcom/mediatek/effect/EffectFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const-string v2, "ro.mtk_emulator_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/mediatek/effect/EffectFactory;->mIsEmulator:Z

    .line 121
    sget-boolean v0, Lcom/mediatek/effect/EffectFactory;->mIsEmulator:Z

    if-nez v0, :cond_0

    .line 122
    const-string v0, "jni_effects"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static createEffectFactory()Lcom/mediatek/effect/EffectFactory;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/mediatek/effect/EffectFactory;

    invoke-direct {v0}, Lcom/mediatek/effect/EffectFactory;-><init>()V

    sput-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    .line 96
    :cond_0
    sget-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    return-object v0
.end method

.method private native native_isEffectSupporteds(Ljava/lang/String;)Z
.end method


# virtual methods
.method public createEffect(Ljava/lang/String;)Lcom/mediatek/effect/Effect;
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "EffectFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEffect(), effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "FaceBeautyEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/mediatek/effect/FaceBeautyEffect;->createEffect()Lcom/mediatek/effect/Effect;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEffectSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "EffectFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEffectSupporteds(), effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-boolean v0, Lcom/mediatek/effect/EffectFactory;->mIsEmulator:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/effect/EffectFactory;->native_isEffectSupporteds(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
