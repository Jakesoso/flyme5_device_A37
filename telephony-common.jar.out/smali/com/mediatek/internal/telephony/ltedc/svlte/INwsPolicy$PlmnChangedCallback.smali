.class public abstract Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;
.super Ljava/lang/Object;
.source "INwsPolicy.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlmnChangedCallback"
.end annotation


# instance fields
.field protected mPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;->mPlmn:Ljava/lang/String;

    .line 101
    return-void
.end method
