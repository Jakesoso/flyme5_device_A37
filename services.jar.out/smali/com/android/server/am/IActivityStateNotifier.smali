.class public interface abstract Lcom/android/server/am/IActivityStateNotifier;
.super Ljava/lang/Object;
.source "IActivityStateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/IActivityStateNotifier$ActivityState;
    }
.end annotation


# virtual methods
.method public abstract notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V
.end method

.method public abstract notifyAppDied(ILjava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
