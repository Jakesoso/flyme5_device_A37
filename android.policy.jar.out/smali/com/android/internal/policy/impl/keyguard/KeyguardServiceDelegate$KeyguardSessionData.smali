.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardSessionData"
.end annotation


# instance fields
.field public module:Ljava/lang/String;

.field public session:Landroid/app/IColorKeyguardSessionCallback;

.field public tokenWatcher:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$TokenWatcher;

.field public userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;->tokenWatcher:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$TokenWatcher;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$TokenWatcher;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
