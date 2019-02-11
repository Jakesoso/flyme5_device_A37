.class public Lcom/color/feature/ColorDisableFeatures$SystemCenter;
.super Ljava/lang/Object;
.source "ColorDisableFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/feature/ColorDisableFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemCenter"
.end annotation


# static fields
.field public static final LONGSHOT:Ljava/lang/String;

.field public static final TRANSLATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "translate"

    invoke-static {v0}, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->TRANSLATE:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "longshot"

    invoke-static {v0}, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/color/feature/ColorDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, "system_center"

    # invokes: Lcom/color/feature/ColorDisableFeatures;->getDeptFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/color/feature/ColorDisableFeatures;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
