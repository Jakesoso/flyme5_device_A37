.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;
.super Lcom/android/internal/policy/IColorOSKeyguardService$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jingyuan.Chen@Plf.DesktopApp, 2014-09-02 : Add for ColorOS keyguard"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardDoneDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IColorOSKeyguardService$Stub;-><init>()V

    .line 167
    return-void
.end method

.method private parseCommand(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onKeyguardDoneForColorOS(Z)V
    .locals 3
    .param p1, "keyguardDone"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    .line 174
    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardDoneForColorOS keyguardDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "KeyguardServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardDoneForColorOS mKeyguardState.screenIsOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->screenIsOn:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->keyguarddone:Z

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "onKeyguardDoneForColorOS screen is off keyguarddone = false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardState;->keyguarddone:Z

    goto :goto_0
.end method

.method public sendCommandToApps(Ljava/lang/String;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v3, "KeyguardServiceDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KSD sendCommandToApps, command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_3

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->parseCommand(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "commands":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mClients:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 207
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mClients:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;

    .line 208
    .local v2, "sessionData":Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;->session:Landroid/app/IColorKeyguardSessionCallback;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;->module:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 209
    :cond_0
    const-string v3, "KeyguardServiceDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessionData at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    iget-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;->module:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    :try_start_0
    iget-object v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;->session:Landroid/app/IColorKeyguardSessionCallback;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-interface {v3, v4}, Landroid/app/IColorKeyguardSessionCallback;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v3

    goto :goto_1

    .line 220
    .end local v0    # "commands":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "sessionData":Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardSessionData;
    :cond_3
    const-string v3, "KeyguardServiceDelegate"

    const-string v4, "sendCommandToApps, do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    return-void
.end method

.method public setNotificationListener(Z)V
    .locals 2
    .param p1, "isChanged"    # Z

    .prologue
    .line 189
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 190
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardDoneDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
