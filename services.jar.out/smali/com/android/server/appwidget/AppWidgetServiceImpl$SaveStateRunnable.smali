.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SaveStateRunnable"
.end annotation


# instance fields
.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 0
    .param p2, "userId"    # I

    .prologue
    .line 3502
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3503
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    .line 3504
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3509
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3510
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;->mUserId:I

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3511
    monitor-exit v1

    .line 3512
    return-void

    .line 3511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
