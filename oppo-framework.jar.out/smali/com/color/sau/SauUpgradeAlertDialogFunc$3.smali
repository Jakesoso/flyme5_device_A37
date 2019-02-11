.class final Lcom/color/sau/SauUpgradeAlertDialogFunc$3;
.super Ljava/lang/Object;
.source "SauUpgradeAlertDialogFunc.java"

# interfaces
.implements Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/sau/SauUpgradeAlertDialogFunc;->processDialogFunc(Lcom/color/widget/ColorSAUAlertDialog;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 78
    :pswitch_0
    # getter for: Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;
    invoke-static {}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->access$000()Lcom/color/sau/ISauUpgradeDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/sau/ISauUpgradeDialog;->upgradeNow()V

    goto :goto_0

    .line 81
    :pswitch_1
    # getter for: Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;
    invoke-static {}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->access$000()Lcom/color/sau/ISauUpgradeDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/sau/ISauUpgradeDialog;->exitUpgrade()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
