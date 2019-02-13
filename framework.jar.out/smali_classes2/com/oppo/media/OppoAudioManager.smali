.class public Lcom/oppo/media/OppoAudioManager;
.super Ljava/lang/Object;
.source "OppoAudioManager.java"

# interfaces
.implements Lcom/oppo/media/IOppoAudioManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoAudioManager"


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/media/OppoAudioManager;->mRemote:Landroid/os/IBinder;

    .line 48
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/media/OppoAudioManager;->mRemote:Landroid/os/IBinder;

    .line 49
    return-void
.end method


# virtual methods
.method public getOppoStreamVolume(I)I
    .locals 6
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 55
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "com.oppo.media.OppoAudioManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v3, p0, Lcom/oppo/media/OppoAudioManager;->mRemote:Landroid/os/IBinder;

    const v4, 0x186a2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "volume":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 62
    return v2
.end method
