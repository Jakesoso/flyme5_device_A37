.class public Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/CustomAccountRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActive:Z

.field private mLabel:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;

    invoke-direct {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "iconId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "isActive"    # Z

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 287
    iput-object p2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 288
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    .line 289
    iput-object p4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    .line 290
    iput-object p5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 291
    iput-boolean p6, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 292
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "iconId"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 261
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 373
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 374
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    .line 377
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 379
    return-void

    .line 378
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    if-eqz v0, :cond_0

    .line 300
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    return v0
.end method

.method public setActiveStatus(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 354
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 363
    iget v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 365
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 368
    iget-boolean v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    return-void
.end method
