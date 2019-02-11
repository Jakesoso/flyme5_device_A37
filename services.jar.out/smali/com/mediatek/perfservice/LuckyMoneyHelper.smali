.class public Lcom/mediatek/perfservice/LuckyMoneyHelper;
.super Lcom/oppo/RomUpdateHelper;
.source "LuckyMoneyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_FILE_DIR:Ljava/lang/String; = "data/system/sys_luckymoney_config_list.xml"

.field public static final FILTER_NAME:Ljava/lang/String; = "sys_luckymoney_config_list"

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "system/etc/sys_luckymoney_config_list.xml"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-string v1, "sys_luckymoney_config_list"

    const-string v2, "system/etc/sys_luckymoney_config_list.xml"

    const-string v3, "data/system/sys_luckymoney_config_list.xml"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/oppo/RomUpdateHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    invoke-direct {v1, p0}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;-><init>(Lcom/mediatek/perfservice/LuckyMoneyHelper;)V

    new-instance v2, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    invoke-direct {v2, p0}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;-><init>(Lcom/mediatek/perfservice/LuckyMoneyHelper;)V

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->setUpdateInfo(Lcom/oppo/RomUpdateHelper$UpdateInfo;Lcom/oppo/RomUpdateHelper$UpdateInfo;)V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDelayTimeout()I
    .locals 2

    .prologue
    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    .line 169
    .local v0, "temp":Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
    invoke-virtual {v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->getDelayTimeout()I

    move-result v1

    return v1
.end method

.method public getKeyURLInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    .line 174
    .local v0, "temp":Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
    invoke-virtual {v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->getKeyURLInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLuckyMoneyInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 163
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    .line 164
    .local v0, "temp":Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->getLuckyMoneyInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getkeyDNSInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/perfservice/LuckyMoneyHelper;->getUpdateInfo(Z)Lcom/oppo/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;

    .line 179
    .local v0, "temp":Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;
    invoke-virtual {v0}, Lcom/mediatek/perfservice/LuckyMoneyHelper$LuckyMoneyUpdateInfo;->getkeyDNSInfo()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
