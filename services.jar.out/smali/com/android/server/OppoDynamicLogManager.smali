.class public Lcom/android/server/OppoDynamicLogManager;
.super Ljava/lang/Object;
.source "OppoDynamicLogManager.java"


# static fields
.field public static INVOKE_FUNTION_NAME:Ljava/lang/String; = null

.field public static OPPO_DYNAMIC_LOG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OppoDynamicLogManager"

.field private static mDynamicLogManager:Lcom/android/server/OppoDynamicLogManager;


# instance fields
.field mModuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OppoDynamicLogManager;->mDynamicLogManager:Lcom/android/server/OppoDynamicLogManager;

    .line 36
    const-string v0, "coloros-log"

    sput-object v0, Lcom/android/server/OppoDynamicLogManager;->OPPO_DYNAMIC_LOG:Ljava/lang/String;

    .line 38
    const-string v0, "openLog"

    sput-object v0, Lcom/android/server/OppoDynamicLogManager;->INVOKE_FUNTION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/android/server/OppoDynamicLogManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/OppoDynamicLogManager;->mDynamicLogManager:Lcom/android/server/OppoDynamicLogManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/server/OppoDynamicLogManager;

    invoke-direct {v0}, Lcom/android/server/OppoDynamicLogManager;-><init>()V

    sput-object v0, Lcom/android/server/OppoDynamicLogManager;->mDynamicLogManager:Lcom/android/server/OppoDynamicLogManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/server/OppoDynamicLogManager;->mDynamicLogManager:Lcom/android/server/OppoDynamicLogManager;

    return-object v0
.end method

.method public static invokeRegisterLogModule(Ljava/lang/String;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "OppoDynamicLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeRegisterLogModule  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "OppoDynamicLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeRegisterLogModule  instance == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/OppoDynamicLogManager;->getInstance()Lcom/android/server/OppoDynamicLogManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/android/server/OppoDynamicLogManager;->getInstance()Lcom/android/server/OppoDynamicLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OppoDynamicLogManager;->registerLogModule(Ljava/lang/String;)Z

    .line 58
    return-void
.end method

.method public static invokeUnRegisterLogModule(Ljava/lang/String;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "OppoDynamicLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeUnRegisterLogModule  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "OppoDynamicLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeUnRegisterLogModule  instance == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/OppoDynamicLogManager;->getInstance()Lcom/android/server/OppoDynamicLogManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/android/server/OppoDynamicLogManager;->getInstance()Lcom/android/server/OppoDynamicLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OppoDynamicLogManager;->unRegisterLogModule(Ljava/lang/String;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public handleOppoDynamicLog(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v7, 0x1

    .line 115
    const-string v8, "OppoDynamicLogManager"

    const-string v9, "handleOppoDynamicLog !!! "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v6, 0x0

    .line 118
    .local v6, "tag":Ljava/lang/String;
    const/4 v5, 0x0

    .line 120
    .local v5, "on":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOppoDynamicLog, opti:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", args.length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v8, p2

    if-ge v1, v8, :cond_0

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOppoDynamicLog, args["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p2, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    array-length v8, p2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    .line 126
    const-string v7, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/OppoDynamicLogManager;->logoutOppoDynamicLogHelp(Ljava/io/PrintWriter;)V

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 131
    :cond_2
    aget-object v6, p2, v7

    .line 132
    const-string v8, "1"

    const/4 v9, 0x2

    aget-object v9, p2, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v7

    .line 134
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOppoDynamicLog, tag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", on:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "moduleInList":Z
    const/4 v2, 0x0

    .line 137
    .local v2, "isAll":Z
    iget-object v7, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 138
    .local v4, "moduleName":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 139
    invoke-virtual {p0, v4, v5}, Lcom/android/server/OppoDynamicLogManager;->invokeModuleOperation(Ljava/lang/String;Z)V

    .line 140
    const/4 v3, 0x1

    .line 148
    .end local v4    # "moduleName":Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v2, :cond_7

    .line 149
    iget-object v7, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .restart local v4    # "moduleName":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lcom/android/server/OppoDynamicLogManager;->invokeModuleOperation(Ljava/lang/String;Z)V

    goto :goto_4

    .line 132
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "isAll":Z
    .end local v3    # "moduleInList":Z
    .end local v4    # "moduleName":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 142
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isAll":Z
    .restart local v3    # "moduleInList":Z
    .restart local v4    # "moduleName":Ljava/lang/String;
    :cond_6
    const-string v7, "all"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    const/4 v2, 0x1

    .line 144
    goto :goto_3

    .line 155
    .end local v4    # "moduleName":Ljava/lang/String;
    :cond_7
    if-nez v3, :cond_1

    .line 156
    const-string v7, "Failed! Invalid argument! Type cmd for help: dumpsys activity log"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public invokeModuleOperation(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .prologue
    .line 87
    const-string v3, "OppoDynamicLogManager"

    const-string v4, "invokeModuleOperation !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-string v3, "OppoDynamicLogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lcom/android/server/OppoDynamicLogManager;->INVOKE_FUNTION_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    .line 112
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected logoutOppoDynamicLogHelp(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 161
    const-string v2, "********************** Help begin:**********************"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string v2, "Please according to the following example"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v2, "cmd: dumpsys activity coloros-log modulename 0/1"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string v2, "switch: open log use 1 / close log use 0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string v2, "--------------------------------------------------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const-string v2, "modulename list:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modulename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    const-string v2, "--------------------------------------------------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v2, "********************** Help end.  **********************"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public registerLogModule(Ljava/lang/String;)Z
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v1, "OppoDynamicLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerLogModule  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v0, 0x1

    .line 73
    :cond_0
    return v0
.end method

.method public unRegisterLogModule(Ljava/lang/String;)Z
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v1, "OppoDynamicLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterLogModule  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/server/OppoDynamicLogManager;->mModuleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method
