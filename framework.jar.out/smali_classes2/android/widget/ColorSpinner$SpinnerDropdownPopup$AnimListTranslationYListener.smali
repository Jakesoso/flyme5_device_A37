.class Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorSpinner$SpinnerDropdownPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimListTranslationYListener"
.end annotation


# instance fields
.field private final mListView:Landroid/widget/ListView;

.field final synthetic this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method public constructor <init>(Landroid/widget/ColorSpinner$SpinnerDropdownPopup;Landroid/widget/ListView;)V
    .locals 0
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 707
    iput-object p1, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->this$1:Landroid/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 708
    iput-object p2, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->mListView:Landroid/widget/ListView;

    .line 709
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 713
    iget-object v0, p0, Landroid/widget/ColorSpinner$SpinnerDropdownPopup$AnimListTranslationYListener;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 714
    return-void
.end method
