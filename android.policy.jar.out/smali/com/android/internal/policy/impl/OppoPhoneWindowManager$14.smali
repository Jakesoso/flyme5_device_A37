.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->requestKeyguard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

.field final synthetic val$finalCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->val$finalCommand:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$14;->val$finalCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->requestKeyguard(Ljava/lang/String;)V

    .line 2122
    return-void
.end method
