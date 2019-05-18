.class public abstract Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;
.super Landroid/os/Binder;
.source "IFingerprintDaemon.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_cancelGetImageQuality:I = 0xf

.field static final TRANSACTION_cleanUp:I = 0x10

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_continueEnroll:I = 0x16

.field static final TRANSACTION_continueIdentify:I = 0x1a

.field static final TRANSACTION_dynamicallyConfigLog:I = 0x18

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAlikeyStatus:I = 0x1b

.field static final TRANSACTION_getAuthToken:I = 0x11

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_getEnrollmentTotalTimes:I = 0x1c

.field static final TRANSACTION_getFpIDs:I = 0x13

.field static final TRANSACTION_getFpName:I = 0x12

.field static final TRANSACTION_getImageQuality:I = 0xe

.field static final TRANSACTION_identify:I = 0x14

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_pauseEnroll:I = 0x15

.field static final TRANSACTION_pauseIdentify:I = 0x19

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_selfTest:I = 0xd

.field static final TRANSACTION_setActiveGroup:I = 0x8

.field static final TRANSACTION_setTouchEventListener:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 55
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->authenticate(JI)I

    move-result v8

    .line 57
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelAuthentication()I

    move-result v8

    .line 65
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v8    # "_result":I
    :sswitch_3
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 75
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 77
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "_arg2":I
    invoke-virtual {p0, v2, v4, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->enroll([BII)I

    move-result v8

    .line 79
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v2    # "_arg0":[B
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelEnrollment()I

    move-result v8

    .line 87
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v8    # "_result":I
    :sswitch_5
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->preEnroll()J

    move-result-wide v8

    .line 95
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 101
    .end local v8    # "_result":J
    :sswitch_6
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->remove(II)I

    move-result v8

    .line 107
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_7
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v8

    .line 115
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 121
    .end local v8    # "_result":J
    :sswitch_8
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 126
    .local v4, "_arg1":[B
    invoke-virtual {p0, v2, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->setActiveGroup(I[B)I

    move-result v8

    .line 127
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":[B
    .end local v8    # "_result":I
    :sswitch_9
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->openHal()J

    move-result-wide v8

    .line 135
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 141
    .end local v8    # "_result":J
    :sswitch_a
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->closeHal()I

    move-result v8

    .line 143
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v8    # "_result":I
    :sswitch_b
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v2    # "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    :sswitch_c
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->postEnroll()I

    move-result v8

    .line 160
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v8    # "_result":I
    :sswitch_d
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->selfTest()I

    move-result v8

    .line 168
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v8    # "_result":I
    :sswitch_e
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getImageQuality()I

    move-result v8

    .line 176
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v8    # "_result":I
    :sswitch_f
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelGetImageQuality()I

    move-result v8

    .line 184
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v8    # "_result":I
    :sswitch_10
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cleanUp()I

    move-result v8

    .line 192
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 198
    .end local v8    # "_result":I
    :sswitch_11
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 202
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getAuthToken(JI)[B

    move-result-object v8

    .line 204
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 210
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v8    # "_result":[B
    :sswitch_12
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getFpName(I)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v2    # "_arg0":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getFpIDs()[I

    move-result-object v8

    .line 222
    .local v8, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 228
    .end local v8    # "_result":[I
    :sswitch_14
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 232
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 236
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .local v6, "_arg3":[I
    move-object v1, p0

    .line 237
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->identify(JII[I)I

    move-result v8

    .line 238
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":[I
    .end local v8    # "_result":I
    :sswitch_15
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->pauseEnroll()I

    move-result v8

    .line 246
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 252
    .end local v8    # "_result":I
    :sswitch_16
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->continueEnroll()I

    move-result v8

    .line 254
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 260
    .end local v8    # "_result":I
    :sswitch_17
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->setTouchEventListener()I

    move-result v8

    .line 262
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    .end local v8    # "_result":I
    :sswitch_18
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->dynamicallyConfigLog(I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":I
    :sswitch_19
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->pauseIdentify()I

    move-result v8

    .line 279
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v8    # "_result":I
    :sswitch_1a
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->continueIdentify()I

    move-result v8

    .line 287
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v8    # "_result":I
    :sswitch_1b
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getAlikeyStatus()I

    move-result v8

    .line 295
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v8    # "_result":I
    :sswitch_1c
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getEnrollmentTotalTimes()I

    move-result v8

    .line 303
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
