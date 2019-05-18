.class Lcom/color/widget/ColorSAUAlertDialog$1;
.super Ljava/lang/Object;
.source "ColorSAUAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorSAUAlertDialog;->setButtons(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorSAUAlertDialog;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorSAUAlertDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/color/widget/ColorSAUAlertDialog$1;->this$0:Lcom/color/widget/ColorSAUAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/color/widget/ColorSAUAlertDialog$1;->this$0:Lcom/color/widget/ColorSAUAlertDialog;

    # getter for: Lcom/color/widget/ColorSAUAlertDialog;->mOnButtonClickListener:Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;
    invoke-static {v0}, Lcom/color/widget/ColorSAUAlertDialog;->access$000(Lcom/color/widget/ColorSAUAlertDialog;)Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/color/widget/ColorSAUAlertDialog$OnButtonClickListener;->onClick(I)V

    .line 117
    return-void
.end method
