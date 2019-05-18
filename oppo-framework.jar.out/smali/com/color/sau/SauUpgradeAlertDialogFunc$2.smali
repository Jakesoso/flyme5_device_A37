.class final Lcom/color/sau/SauUpgradeAlertDialogFunc$2;
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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 56
    :pswitch_0
    # getter for: Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;
    invoke-static {}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->access$000()Lcom/color/sau/ISauUpgradeDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/sau/ISauUpgradeDialog;->installNow()V

    goto :goto_0

    .line 59
    :pswitch_1
    # getter for: Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;
    invoke-static {}, Lcom/color/sau/SauUpgradeAlertDialogFunc;->access$000()Lcom/color/sau/ISauUpgradeDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/sau/ISauUpgradeDialog;->upgradeLater()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
