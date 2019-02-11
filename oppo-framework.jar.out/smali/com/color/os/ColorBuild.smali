.class public Lcom/color/os/ColorBuild;
.super Ljava/lang/Object;
.source "ColorBuild.java"


# static fields
.field public static final ColorOS_1_0:I = 0x1

.field public static final ColorOS_1_2:I = 0x2

.field public static final ColorOS_1_4:I = 0x3

.field public static final ColorOS_2_0:I = 0x4

.field public static final ColorOS_2_1:I = 0x5

.field public static final ColorOS_3_0:I = 0x6

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorOSVERSION()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x6

    return v0
.end method
