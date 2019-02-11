.class public final Landroid/provider/oppo/Telephony$WapPush;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/oppo/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oppo/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WapPush"
.end annotation


# static fields
.field public static final ACTION_DUAL_SIM_MODE_SELECT:Ljava/lang/String; = "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

.field public static final ACTION_GPRS_CONNECTION_TYPE_SELECT:Ljava/lang/String; = "android.provider.Telephony.GPRS_CONNECTION_TYPE_SELECT"

.field public static final ACTION_REMOVE_IDLE_TEXT:Ljava/lang/String; = "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

.field public static final ACTION_REMOVE_IDLE_TEXT_2:Ljava/lang/String; = "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

.field public static final ACTION_UNLOCK_KEYGUARD:Ljava/lang/String; = "android.provider.Telephony.UNLOCK_KEYGUARD"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4043
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oppo/Telephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
