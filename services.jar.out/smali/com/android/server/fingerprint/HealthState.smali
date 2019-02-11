.class public Lcom/android/server/fingerprint/HealthState;
.super Ljava/lang/Object;
.source "HealthState.java"


# static fields
.field public static AUTHENTICATE:Ljava/lang/String;

.field public static CANCELAUTHENTICATE:Ljava/lang/String;

.field public static CANCELENROLLMENT:Ljava/lang/String;

.field public static CANCELGETIMAGEQUALITY:Ljava/lang/String;

.field public static CLEANUP:Ljava/lang/String;

.field public static CLOSEHAL:Ljava/lang/String;

.field public static CONTINUEENROLL:Ljava/lang/String;

.field public static CONTINUEIDENTIFY:Ljava/lang/String;

.field public static DEBUG:Z

.field public static DYNAMICALLYCONFIGLOG:Ljava/lang/String;

.field public static ENROLL:Ljava/lang/String;

.field public static GETALIKEYSTATUS:Ljava/lang/String;

.field public static GETAUTHENTICATORID:Ljava/lang/String;

.field public static GETAUTHTOKEN:Ljava/lang/String;

.field public static GETENROLLMENTTOTALTIMES:Ljava/lang/String;

.field public static GETFPIDS:Ljava/lang/String;

.field public static GETFPNAME:Ljava/lang/String;

.field public static GETIMAGEQUALITY:Ljava/lang/String;

.field public static IDENTIFY:Ljava/lang/String;

.field public static INIT:Ljava/lang/String;

.field public static OPENHAL:Ljava/lang/String;

.field public static PAUSEENROLL:Ljava/lang/String;

.field public static PAUSEIDENTIFY:Ljava/lang/String;

.field public static POSTENROLL:Ljava/lang/String;

.field public static PREENROLL:Ljava/lang/String;

.field public static REMOVE:Ljava/lang/String;

.field public static SELFTEST:Ljava/lang/String;

.field public static SETACTIVEGROUP:Ljava/lang/String;

.field public static SETTOUCHEVENTLISTENER:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/fingerprint/HealthState;->DEBUG:Z

    .line 34
    const-string v0, "setTouchEventListener"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->SETTOUCHEVENTLISTENER:Ljava/lang/String;

    .line 35
    const-string v0, "dynamicallyConfigLog"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->DYNAMICALLYCONFIGLOG:Ljava/lang/String;

    .line 36
    const-string v0, "init"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->INIT:Ljava/lang/String;

    .line 37
    const-string v0, "cleanUp"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CLEANUP:Ljava/lang/String;

    .line 38
    const-string v0, "cancelGetImageQuality"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CANCELGETIMAGEQUALITY:Ljava/lang/String;

    .line 40
    const-string v0, "authenticate"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->AUTHENTICATE:Ljava/lang/String;

    .line 41
    const-string v0, "cancelAuthentication"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CANCELAUTHENTICATE:Ljava/lang/String;

    .line 42
    const-string v0, "identify"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->IDENTIFY:Ljava/lang/String;

    .line 43
    const-string v0, "pauseIdentify"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->PAUSEIDENTIFY:Ljava/lang/String;

    .line 44
    const-string v0, "continueIdentify"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CONTINUEIDENTIFY:Ljava/lang/String;

    .line 48
    const-string v0, "enroll"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->ENROLL:Ljava/lang/String;

    .line 49
    const-string v0, "getAuthToken"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETAUTHTOKEN:Ljava/lang/String;

    .line 50
    const-string v0, "cancelEnrollment"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CANCELENROLLMENT:Ljava/lang/String;

    .line 51
    const-string v0, "preEnroll"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->PREENROLL:Ljava/lang/String;

    .line 52
    const-string v0, "pauseEnroll"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->PAUSEENROLL:Ljava/lang/String;

    .line 53
    const-string v0, "continueEnroll"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CONTINUEENROLL:Ljava/lang/String;

    .line 54
    const-string v0, "postEnroll"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->POSTENROLL:Ljava/lang/String;

    .line 57
    const-string v0, "remove"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->REMOVE:Ljava/lang/String;

    .line 59
    const-string v0, "getAuthenticatorId"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETAUTHENTICATORID:Ljava/lang/String;

    .line 60
    const-string v0, "getFpName"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETFPNAME:Ljava/lang/String;

    .line 61
    const-string v0, "getFpIDs"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETFPIDS:Ljava/lang/String;

    .line 63
    const-string v0, "openHal"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->OPENHAL:Ljava/lang/String;

    .line 64
    const-string v0, "closeHal"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->CLOSEHAL:Ljava/lang/String;

    .line 65
    const-string v0, "setActiveGroup"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->SETACTIVEGROUP:Ljava/lang/String;

    .line 68
    const-string v0, "selfTest"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->SELFTEST:Ljava/lang/String;

    .line 69
    const-string v0, "getImageQuality"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETIMAGEQUALITY:Ljava/lang/String;

    .line 70
    const-string v0, "getAlikeyStatus"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETALIKEYSTATUS:Ljava/lang/String;

    .line 71
    const-string v0, "getEnrollmentTotalTimes"

    sput-object v0, Lcom/android/server/fingerprint/HealthState;->GETENROLLMENTTOTALTIMES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "HealthState"

    iput-object v0, p0, Lcom/android/server/fingerprint/HealthState;->TAG:Ljava/lang/String;

    return-void
.end method
