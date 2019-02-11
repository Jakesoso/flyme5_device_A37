.class public Lcom/color/sau/SauUpgradeAlertDialogFunc;
.super Ljava/lang/Object;
.source "SauUpgradeAlertDialogFunc.java"


# static fields
.field private static mListener:Lcom/color/sau/ISauUpgradeDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/color/sau/ISauUpgradeDialog;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;

    return-object v0
.end method

.method public static processDialogFunc(Lcom/color/widget/ColorSAUAlertDialog;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mUpgradeDialog"    # Lcom/color/widget/ColorSAUAlertDialog;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceUpgrade"    # Z
    .param p3, "downloaded"    # Z
    .param p4, "wifiConnected"    # Z
    .param p5, "verName"    # Ljava/lang/String;
    .param p6, "size"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setCancelable(Z)V

    .line 26
    :goto_1
    if-eqz p3, :cond_3

    .line 27
    if-eqz p2, :cond_2

    .line 28
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setButtonType(I)V

    .line 29
    new-instance v0, Lcom/color/sau/SauUpgradeAlertDialogFunc$1;

    invoke-direct {v0}, Lcom/color/sau/SauUpgradeAlertDialogFunc$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setOnButtonClickListener(Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;)V

    .line 113
    :goto_2
    if-eqz p3, :cond_5

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setNetworkPrompt(I)V

    .line 122
    :goto_3
    invoke-virtual {p0, p5}, Lcom/color/widget/ColorSAUAlertDialog;->setVersionName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p6}, Lcom/color/widget/ColorSAUAlertDialog;->setSizeStr(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p7}, Lcom/color/widget/ColorSAUAlertDialog;->setUpdateDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorSAUAlertDialog;->setCancelable(Z)V

    goto :goto_1

    .line 48
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setButtonType(I)V

    .line 50
    new-instance v0, Lcom/color/sau/SauUpgradeAlertDialogFunc$2;

    invoke-direct {v0}, Lcom/color/sau/SauUpgradeAlertDialogFunc$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setOnButtonClickListener(Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;)V

    goto :goto_2

    .line 69
    :cond_3
    if-eqz p2, :cond_4

    .line 70
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setButtonType(I)V

    .line 72
    new-instance v0, Lcom/color/sau/SauUpgradeAlertDialogFunc$3;

    invoke-direct {v0}, Lcom/color/sau/SauUpgradeAlertDialogFunc$3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setOnButtonClickListener(Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;)V

    goto :goto_2

    .line 90
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setButtonType(I)V

    .line 92
    new-instance v0, Lcom/color/sau/SauUpgradeAlertDialogFunc$4;

    invoke-direct {v0}, Lcom/color/sau/SauUpgradeAlertDialogFunc$4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/color/widget/ColorSAUAlertDialog;->setOnButtonClickListener(Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;)V

    goto :goto_2

    .line 115
    :cond_5
    if-nez p4, :cond_6

    .line 116
    invoke-virtual {p0, v2}, Lcom/color/widget/ColorSAUAlertDialog;->setNetworkPrompt(I)V

    goto :goto_3

    .line 118
    :cond_6
    invoke-virtual {p0, v1}, Lcom/color/widget/ColorSAUAlertDialog;->setNetworkPrompt(I)V

    goto :goto_3
.end method

.method public static setDialogListener(Lcom/color/sau/ISauUpgradeDialog;)V
    .locals 0
    .param p0, "listener"    # Lcom/color/sau/ISauUpgradeDialog;

    .prologue
    .line 11
    sput-object p0, Lcom/color/sau/SauUpgradeAlertDialogFunc;->mListener:Lcom/color/sau/ISauUpgradeDialog;

    .line 12
    return-void
.end method
