.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimSetListener"
.end annotation


# instance fields
.field private final mPopup:Landroid/widget/ColorPopupWindow;

.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ColorPopupWindow;)V
    .locals 0
    .param p2, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    .line 721
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 722
    iput-object p2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Landroid/widget/ColorPopupWindow;

    .line 723
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Landroid/widget/ColorSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ColorSpinner;->access$1202(Landroid/widget/ColorSpinner;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 728
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Landroid/widget/ColorPopupWindow;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimSetListener;->mPopup:Landroid/widget/ColorPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ColorPopupWindow;->superDismiss()V

    .line 731
    :cond_0
    return-void
.end method
