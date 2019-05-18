.class public Lcom/color/sau/SauPkgUpdateInfo;
.super Ljava/lang/Object;
.source "SauPkgUpdateInfo.java"


# instance fields
.field public mAllSize:I

.field public mCanUseOld:I

.field public mDescription:Ljava/lang/String;

.field public mDownloadFinished:I

.field public mFileName:Ljava/lang/String;

.field public mInstallFinished:I

.field public mMd5All:Ljava/lang/String;

.field public mMd5Patch:Ljava/lang/String;

.field public mNewVerName:Ljava/lang/String;

.field public mOldFileName:Ljava/lang/String;

.field public mPatchFinished:I

.field public mPatchSize:I

.field public mPkg:Ljava/lang/String;

.field public mType:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mPkg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mUrl:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mFileName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mNewVerName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mDescription:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mPatchSize:I

    .line 12
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mAllSize:I

    .line 14
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mCanUseOld:I

    .line 15
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mPatchFinished:I

    .line 16
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mDownloadFinished:I

    .line 17
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mInstallFinished:I

    .line 20
    iput v1, p0, Lcom/color/sau/SauPkgUpdateInfo;->mType:I

    .line 21
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mMd5Patch:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mMd5All:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/color/sau/SauPkgUpdateInfo;->mOldFileName:Ljava/lang/String;

    return-void
.end method
