.class public Lcom/android/server/pm/OppoAppDexInfo;
.super Ljava/lang/Object;
.source "OppoAppDexInfo.java"


# instance fields
.field protected isCompleteDex:Z

.field protected mPkg:Landroid/content/pm/PackageParser$Package;

.field protected mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 30
    iput-object p2, p0, Lcom/android/server/pm/OppoAppDexInfo;->mPkgName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public setPackageParser(Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/pm/OppoAppDexInfo;->mPkg:Landroid/content/pm/PackageParser$Package;

    .line 35
    return-void
.end method
