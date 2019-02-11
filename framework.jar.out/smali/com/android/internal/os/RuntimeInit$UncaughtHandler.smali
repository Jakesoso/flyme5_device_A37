.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/RuntimeInit$1;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method

.method private checkToInstallGr(Ljava/lang/String;)V
    .locals 4
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 79
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "AndroidRuntime"

    const-string v1, "Geloin: Our system not contains gsf, let\'s download."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-static {p1}, Landroid/os/OppoManager;->canShowDialog(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "AndroidRuntime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geloin: Will leader when Request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    invoke-static {p1}, Landroid/os/OppoManager;->exit(Ljava/lang/String;)V

    .line 88
    const-string v0, "DO_GR_DOWN_INSTALL"

    invoke-static {v3, v3, p1, v0}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_2
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_3

    .line 91
    const-string v0, "AndroidRuntime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Geloin: Will not leader when Request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3
    invoke-static {p1}, Landroid/os/OppoManager;->exit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkToReinstall(Ljava/lang/String;)V
    .locals 3
    .param p1, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    sget-boolean v0, Landroid/os/OppoManager;->DEBUG_GR:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "AndroidRuntime"

    const-string v1, "Geloin: Has installed GSF, need reinstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/os/OppoManager;->exit(Ljava/lang/String;)V

    .line 102
    const-string v0, "DO_GR_REINSTALL"

    invoke-static {v2, v2, p1, v0}, Landroid/os/OppoManager;->doGr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v8, 0xa

    .line 110
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 115
    .local v0, "hadCatched":Ljava/lang/Boolean;
    :try_start_0
    # getter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 211
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    # setter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {v5}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 118
    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_4

    .line 119
    const-string v5, "AndroidRuntime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 186
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v7, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 211
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 121
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v1, "message":Ljava/lang/StringBuilder;
    const-string v5, "FATAL EXCEPTION: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "processName":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 125
    const-string v5, "Process: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 131
    const-string v5, "does not have package com.google.android.gsf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/os/OppoManager;->grExists()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    .line 133
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 134
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToInstallGr(Ljava/lang/String;)V

    .line 164
    .end local v2    # "msg":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v5, "PID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    const-string v5, "AndroidRuntime"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v5, v6, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 195
    .end local v1    # "message":Ljava/lang/StringBuilder;
    .end local v3    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 197
    .local v4, "t2":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "AndroidRuntime"

    const-string v6, "Error reporting crash"

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v5, v6, v4}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 211
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 135
    .end local v4    # "t2":Ljava/lang/Throwable;
    .restart local v1    # "message":Ljava/lang/StringBuilder;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "processName":Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string/jumbo v5, "without permission com.google.android.c2dm.permission.RECEIVE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 136
    invoke-static {}, Landroid/os/OppoManager;->grExists()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    .line 137
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToInstallGr(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 206
    .end local v1    # "message":Ljava/lang/StringBuilder;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    .line 210
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 211
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    :cond_7
    throw v5

    .line 140
    .restart local v1    # "message":Ljava/lang/StringBuilder;
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "processName":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x1

    :try_start_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 141
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToReinstall(Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_9
    const-string/jumbo v5, "requires com.google.android.providers.gsf.permission.READ_GSERVICES, or grantUriPermission()"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 144
    invoke-static {}, Landroid/os/OppoManager;->grExists()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a

    .line 145
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 146
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToInstallGr(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :cond_a
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToReinstall(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    :cond_b
    const-string/jumbo v5, "requires com.google.android.providers.gsf.permission.READ_GSERVICES or com.google.android.providers.gsf.permission.WRITE_GSERVICES"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 152
    invoke-static {}, Landroid/os/OppoManager;->grExists()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    .line 153
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToInstallGr(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 156
    :cond_c
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    invoke-direct {p0, v3}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->checkToReinstall(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 198
    .end local v1    # "message":Ljava/lang/StringBuilder;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "processName":Ljava/lang/String;
    .restart local v4    # "t2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    goto/16 :goto_3
.end method
