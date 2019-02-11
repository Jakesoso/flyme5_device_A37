.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimBackgroundAlphaListener"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mEndValue:I

.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "endValue"    # I

    .prologue
    .line 692
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 693
    iput-object p2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 694
    iput p3, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    .line 695
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 699
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimBackgroundAlphaListener;->mEndValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 700
    return-void
.end method
