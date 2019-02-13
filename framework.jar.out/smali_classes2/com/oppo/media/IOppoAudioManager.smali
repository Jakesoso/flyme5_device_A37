.class public interface abstract Lcom/oppo/media/IOppoAudioManager;
.super Ljava/lang/Object;
.source "IOppoAudioManager.java"


# static fields
.field public static final GET_OPPO_STREAM_VOLUME:I = 0x186a2

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x186a0

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x186a1

.field public static final descriptor:Ljava/lang/String; = "com.oppo.media.OppoAudioManager"


# virtual methods
.method public abstract getOppoStreamVolume(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
