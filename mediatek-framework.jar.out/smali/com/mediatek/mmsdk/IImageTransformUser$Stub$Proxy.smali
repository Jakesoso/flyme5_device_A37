.class Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImageTransformUser.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IImageTransformUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IImageTransformUser$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public applyTransform(Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;)Z
    .locals 7
    .param p1, "rSrcImage"    # Lcom/mediatek/mmsdk/ImageInfo;
    .param p2, "srcData"    # Lcom/mediatek/mmsdk/IMemory;
    .param p3, "rDestImage"    # Lcom/mediatek/mmsdk/ImageInfo;
    .param p4, "destData"    # Lcom/mediatek/mmsdk/IMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_1

    .line 127
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lcom/mediatek/mmsdk/ImageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/mediatek/mmsdk/IMemory;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 134
    if-eqz p3, :cond_3

    .line 135
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v5, 0x0

    invoke-virtual {p3, v0, v5}, Lcom/mediatek/mmsdk/ImageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_2
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/mediatek/mmsdk/IMemory;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 142
    iget-object v4, p0, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    .local v2, "_result":Z
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return v2

    .line 131
    .end local v2    # "_result":Z
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_2
    move-object v5, v4

    .line 133
    goto :goto_1

    .line 139
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    move v2, v3

    .line 144
    goto :goto_3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "com.mediatek.mmsdk.IImageTransformUser"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 114
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-object v2

    .line 114
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
