.class Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "OppoPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->mHomeConsumed:Z

    .line 2138
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoPhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/OppoPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->startSpeechAssist()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/OppoPhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/OppoPhoneWindowManager;)V

    .line 2139
    return-void
.end method
