.class Lcom/android/server/pps/PPSConfig$AppsConfig;
.super Ljava/lang/Object;
.source "PPSConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pps/PPSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsConfig"
.end annotation


# instance fields
.field AppPackageName:Ljava/lang/String;

.field max_core:I

.field max_freq:I

.field min_core:I

.field min_freq:I

.field final synthetic this$0:Lcom/android/server/pps/PPSConfig;


# direct methods
.method constructor <init>(Lcom/android/server/pps/PPSConfig;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->this$0:Lcom/android/server/pps/PPSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AppsConfig(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "AppPackageName"    # Ljava/lang/String;
    .param p2, "min_core"    # I
    .param p3, "max_core"    # I
    .param p4, "min_freq"    # I
    .param p5, "max_freq"    # I

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->AppPackageName:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->min_core:I

    .line 57
    iput p3, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->max_core:I

    .line 58
    iput p4, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->min_freq:I

    .line 59
    iput p5, p0, Lcom/android/server/pps/PPSConfig$AppsConfig;->max_freq:I

    .line 60
    return-void
.end method
