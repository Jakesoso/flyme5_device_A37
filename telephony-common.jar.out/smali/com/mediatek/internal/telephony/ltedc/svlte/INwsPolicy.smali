.class public interface abstract Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy;
.super Ljava/lang/Object;
.source "INwsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$PlmnChangedCallback;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;
    }
.end annotation


# static fields
.field public static final PLMN_CHANGED_TYPE_CDMA:I = 0x1

.field public static final PLMN_CHANGED_TYPE_GMSS:I = 0x0

.field public static final PLMN_CHANGED_TYPE_LWG:I = 0x2


# virtual methods
.method public abstract clearPlmnChangedCallback()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getRoamingModeByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
.end method

.method public abstract getRoamingModeByPlmn(Ljava/lang/String;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
.end method

.method public abstract isCdmaPrioritySupport()Z
.end method

.method public abstract isCriticalAreaSupport()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract onPlmnChanged(ILcom/mediatek/internal/telephony/ltedc/svlte/INwsPolicy$IPlmnChangedCallback;)V
.end method
