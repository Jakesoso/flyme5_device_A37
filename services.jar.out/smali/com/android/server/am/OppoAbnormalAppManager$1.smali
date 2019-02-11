.class Lcom/android/server/am/OppoAbnormalAppManager$1;
.super Ljava/lang/Object;
.source "OppoAbnormalAppManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OppoAbnormalAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/OppoAnrAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OppoAbnormalAppManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OppoAbnormalAppManager;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/server/am/OppoAbnormalAppManager$1;->this$0:Lcom/android/server/am/OppoAbnormalAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/OppoAnrAppInfo;Lcom/android/server/am/OppoAnrAppInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/server/am/OppoAnrAppInfo;
    .param p2, "rhs"    # Lcom/android/server/am/OppoAnrAppInfo;

    .prologue
    .line 819
    invoke-virtual {p1}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 820
    invoke-virtual {p1}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/am/OppoAnrAppInfo;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    .line 822
    :goto_0
    return v0

    .line 820
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 822
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 816
    check-cast p1, Lcom/android/server/am/OppoAnrAppInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/OppoAnrAppInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OppoAbnormalAppManager$1;->compare(Lcom/android/server/am/OppoAnrAppInfo;Lcom/android/server/am/OppoAnrAppInfo;)I

    move-result v0

    return v0
.end method
