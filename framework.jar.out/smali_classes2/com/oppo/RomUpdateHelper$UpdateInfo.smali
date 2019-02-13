.class public Lcom/oppo/RomUpdateHelper$UpdateInfo;
.super Ljava/lang/Object;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/RomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/RomUpdateHelper;


# direct methods
.method protected constructor <init>(Lcom/oppo/RomUpdateHelper;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/RomUpdateHelper$UpdateInfo;->this$0:Lcom/oppo/RomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 61
    return-void
.end method
