.class public Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "LteDcPhoneProxy.java"


# static fields
.field private static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPsPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field protected mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field protected mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

.field protected mSvlteNwsPolicy:Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;

.field protected mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

.field protected mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "radioTechMode"    # I

    .prologue
    .line 109
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 111
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 112
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 115
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 116
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 117
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    .line 118
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 119
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteNwsPolicy;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteNwsPolicy:Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;

    .line 120
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 123
    return-void

    :cond_0
    move-object v0, p1

    .line 109
    goto :goto_0
.end method

.method private getPreferredApnIdForSub(I)I
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 546
    const/4 v6, -0x1

    .line 547
    .local v6, "apnId":I
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "subIdString":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 549
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 552
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 556
    :cond_0
    if-eqz v7, :cond_1

    .line 557
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApnIdForSub: subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",apnId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 560
    return v6
.end method

.method private putIdsExtra(Landroid/content/Intent;II)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "newPhoneId"    # I
    .param p3, "oldPhoneId"    # I

    .prologue
    const/4 v8, 0x0

    .line 606
    const/4 v6, 0x2

    new-array v2, v6, [I

    aput p2, v2, v8

    const/4 v6, 0x1

    aput p3, v2, v6

    .line 607
    .local v2, "phoneIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 608
    aget v1, v2, v0

    .line 609
    .local v1, "phoneId":I
    const/4 v4, -0x1

    .line 610
    .local v4, "subId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 611
    .local v3, "slotId":I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 612
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcSubId(I)I

    move-result v4

    .line 619
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 620
    if-nez v0, :cond_2

    .line 621
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putNewIdsExtra(Landroid/content/Intent;III)V

    .line 607
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 615
    .local v5, "subIds":[I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 616
    aget v4, v5, v8

    goto :goto_1

    .line 623
    .end local v5    # "subIds":[I
    :cond_2
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putOldIdsExtra(Landroid/content/Intent;III)V

    goto :goto_2

    .line 626
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "putIdsExtra: no valid sub id found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_4

    const-string v6, "newphone"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, "oldphone"

    goto :goto_3

    .line 630
    .end local v1    # "phoneId":I
    .end local v3    # "slotId":I
    .end local v4    # "subId":I
    :cond_5
    return-void
.end method

.method private putNewIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putNewIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 634
    const-string v0, "subscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v0, "phone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v0, "slot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    return-void
.end method

.method private putOldIdsExtra(Landroid/content/Intent;III)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "slotId"    # I
    .param p4, "subId"    # I

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putOldIdsExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 641
    const-string v0, "oldsubscription"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string v0, "oldphone"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    const-string v0, "oldslot"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 644
    return-void
.end method

.method private setpreferredApnForSub(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "apnId"    # I

    .prologue
    const/4 v6, 0x0

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setpreferredApnForSub: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",apnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 565
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "subIdString":Ljava/lang/String;
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 567
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 568
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    if-ltz p2, :cond_0

    .line 571
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 575
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "oldPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "newPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 383
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 384
    .local v1, "oldPhoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 385
    .local v0, "newPhoneId":I
    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 386
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setPhoneId(I)V

    .line 388
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 389
    return-void
.end method

.method private updatePreferApnForSubIdChanged(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "oldPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 535
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 536
    .local v1, "activeSubId":I
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 537
    .local v3, "oldSubId":I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v0

    .line 538
    .local v0, "activeApnId":I
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPreferredApnIdForSub(I)I

    move-result v2

    .line 539
    .local v2, "oldApnId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferApnForSubIdChanged: activeSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",oldSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",activeApnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",oldApnId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 542
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->setpreferredApnForSub(II)V

    .line 543
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 133
    :cond_1
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    return-object v0
.end method

.method public getCsPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataCallList(Landroid/os/Message;)V

    .line 394
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method protected getDefaultCsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected getDefaultPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy.getImei()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    const-string v0, "IRAT_LteDcPhoneProxy"

    return-object v0
.end method

.method public getLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy.getMeid()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNLtePhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getPhoneById(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 304
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 303
    :cond_1
    const-string v0, "getPhoneById should come here"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPsPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getRadioAccessFamily()I

    move-result v0

    return v0
.end method

.method public getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    return-object v0
.end method

.method public getSharedDcTracker()Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSharedDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object v0
.end method

.method public getSvlteNwsPolicy()Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteNwsPolicy:Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;

    return-object v0
.end method

.method public getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteRatController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    return-object v0
.end method

.method public getSvlteSstProxy()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mSvlteSstProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LteDcPhoneProxy.invokeOemRilRequestStrings()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 686
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method public registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 598
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeReferences: mLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLtePhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 145
    :cond_1
    return-void
.end method

.method public setCsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "csPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 185
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 413
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataEnabled(Z)V

    .line 414
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataRoamingEnabled(Z)V

    .line 404
    return-void
.end method

.method public setLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 209
    return-void
.end method

.method public setNLtePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "nltePhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 217
    return-void
.end method

.method public setPsPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 177
    return-void
.end method

.method public setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 2
    .param p1, "rc"    # Lcom/android/internal/telephony/RadioCapability;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 580
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setRadioPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioPower phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 290
    :cond_0
    return-void
.end method

.method protected switchActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 10
    .param p1, "targetPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/16 v5, 0x10

    const/16 v7, 0xe

    const/16 v6, 0x8

    const/4 v9, 0x1

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchActivePhone targetPhone="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", oldPhone="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 342
    .local v2, "oldPhone":Lcom/android/internal/telephony/Phone;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 345
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 346
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 348
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v2, v4}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePhoneIds(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    .line 351
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 353
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 354
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->switchPhone(I)V

    .line 357
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v9, :cond_1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 361
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccRefresh()V

    .line 364
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_2

    move v3, v6

    .line 366
    .local v3, "oldSs":I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v9, :cond_3

    move v1, v7

    .line 368
    .local v1, "newSs":I
    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhone(II)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    const-string v4, "phoneName"

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneId()I

    move-result v4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->putIdsExtra(Landroid/content/Intent;II)V

    .line 377
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 379
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newSs":I
    .end local v3    # "oldSs":I
    :cond_0
    move v4, v6

    .line 354
    goto :goto_0

    :cond_1
    move v5, v6

    .line 357
    goto :goto_1

    :cond_2
    move v3, v7

    .line 364
    goto :goto_2

    .restart local v3    # "oldSs":I
    :cond_3
    move v1, v6

    .line 366
    goto :goto_3
.end method

.method public toggleActivePhone(I)V
    .locals 4
    .param p1, "radioTech"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 316
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 317
    .local v1, "lteMode":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 318
    const-string v2, "toggleActivePhone to CSFB mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x1

    .line 327
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 329
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchActivePhone return without action, lteMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLtePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNLtePhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 336
    :goto_1
    return-void

    .line 320
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 321
    const-string v2, "toggleActivePhone to SVLTE mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    :cond_3
    const-string v2, "toggleActivePhone return, Unknown mode"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_4
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->switchActivePhone(Lcom/android/internal/telephony/Phone;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_2
.end method

.method public unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V

    .line 603
    return-void
.end method

.method public updatePsPhone(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhone, sourceRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 236
    packed-switch p2, :pswitch_data_0

    .line 254
    :pswitch_0
    const-string v0, "updatePsPhone, target rat is unknown, keep on."

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 238
    :pswitch_1
    const-string v0, "updatePsPhone to ltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 259
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0

    .line 249
    :pswitch_2
    const-string v0, "updatePsPhone to nltePhone"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mNLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updatePsPhoneAndCi(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "psPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePsPhoneAndCi: psPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->log(Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 269
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->mPsPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->updatePsCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 270
    return-void
.end method
