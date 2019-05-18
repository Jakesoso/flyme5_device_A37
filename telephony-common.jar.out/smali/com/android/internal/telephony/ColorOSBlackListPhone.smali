.class public Lcom/android/internal/telephony/ColorOSBlackListPhone;
.super Ljava/lang/Object;
.source "ColorOSBlackListPhone.java"


# static fields
.field private static final AUTHORITY_BLACKLIST:Ljava/lang/String; = "com.coloros.provider.BlackListProvider"

.field private static final AUTHORITY_URI_BLACKLIST:Landroid/net/Uri;

.field private static final AUTHORITY_URI_SAFECENTER:Landroid/net/Uri;

.field private static final BLACKLIST_APP_INFO:Ljava/lang/String; = "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

.field private static final BLACKLIST_CONTENT_URI:Landroid/net/Uri;

.field private static final BLACKLIST_TABLE_SAFECENTER:Ljava/lang/String; = "bl_list"

.field private static final BLOCK_TYPE:Ljava/lang/String; = "block_type"

.field private static final BL_ANTI_HARASSMENT:Ljava/lang/String; = "bl_anti_harassment"

.field private static final CALLSLOG_CONTENT_URI:Landroid/net/Uri;

.field private static final CALLSLOG_TABLE:Ljava/lang/String; = "calls"

.field public static final COLUMN_LIST_TYPE:Ljava/lang/String; = "list_type"

.field private static final CONFIG_TABLE:Ljava/lang/String; = "settings"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DURNNING:Ljava/lang/String; = "duration"

.field private static final KEY:Ljava/lang/String; = "key"

.field public static final LIST_TYPE_BLACK:I = 0x1

.field public static final LIST_TYPE_DEFAULT_WHITE:I = 0x3

.field public static final LIST_TYPE_WHITE:I = 0x2

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NEW:Ljava/lang/String; = "new"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final SAFECENTER_BLACKLIST_CONTENT_URI:Landroid/net/Uri;

.field private static final SAFECENTER_CALLSLOG_TABLE:Ljava/lang/String; = "bl_blocked_call"

.field private static final SIMID:Ljava/lang/String; = "simid"

.field private static final SMS_WHITELIST_TABLE:Ljava/lang/String; = "sms_whitelist"

.field private static final TAG:Ljava/lang/String; = "ColorOSBlackListPhone"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_BLACK_PHONE:I = 0x2

.field private static final TYPE_BLOCK_BOTH:I = 0x3

.field private static final URI_PATH_NUMBER:Ljava/lang/String; = "number"

.field private static final URI_PATH_SMS_AND_CALL_BLOCK:Ljava/lang/String; = "sms_and_call_block"

.field private static final URI_PATH_WHITELIST_NUMBER:Ljava/lang/String; = "number"

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "content://com.coloros.provider.BlackListProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI_SAFECENTER:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.coloros.provider.BlackListProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI_BLACKLIST:Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI_BLACKLIST:Landroid/net/Uri;

    const-string v1, "bl_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI_SAFECENTER:Landroid/net/Uri;

    const-string v1, "bl_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SAFECENTER_BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->AUTHORITY_URI_SAFECENTER:Landroid/net/Uri;

    const-string v1, "bl_blocked_call"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->CALLSLOG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlockSetting(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method private static isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v10

    .line 104
    :cond_1
    const/4 v6, 0x0

    .line 105
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/android/internal/telephony/ColorOSBlackListPhone;->SAFECENTER_BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sms_and_call_block"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "block_type=? OR block_type=? AND list_type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 121
    :goto_1
    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 127
    .local v8, "i":I
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    if-lez v8, :cond_3

    move v0, v9

    :goto_2
    move v10, v0

    goto :goto_0

    .line 117
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 118
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "i":I
    :cond_3
    move v0, v10

    .line 130
    goto :goto_2
.end method

.method private static isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public static isJudgeBlackListPhone(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pbNumber"    # Ljava/lang/String;
    .param p2, "vSimID"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    const-string v5, "ColorOSBlackListPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isJudgeBlackListPhone pbNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  vSimID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "ColorOSBlackListPhone"

    const-string v6, "isJudgeBlackListPhone_TYP1"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p0}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->getBlockSetting(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    const-string v4, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYP3"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, "bInWhite":Z
    const-string v5, "ColorOSBlackListPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isJudgeBlackListPhone_TYPE4 bInWhite = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez v0, :cond_0

    .line 162
    invoke-static {p0, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->isInBlackList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 163
    .local v1, "isExitBlackList":Z
    if-ne v1, v4, :cond_0

    .line 165
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/ColorOSBlackListPhone;->writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 166
    const-string v3, "ColorOSBlackListPhone"

    const-string v5, "isJudgeBlackListPhone_TYPE5"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oppo.intent.action.OPPO_ACTION_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "newintent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v3, v4

    .line 170
    goto :goto_0
.end method

.method private static isNewSafeCenter(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method private static writeDabaseByNumber(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "pbNumber"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method
