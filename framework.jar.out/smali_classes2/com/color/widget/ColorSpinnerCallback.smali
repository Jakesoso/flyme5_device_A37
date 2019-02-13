.class public interface abstract Lcom/color/widget/ColorSpinnerCallback;
.super Ljava/lang/Object;
.source "ColorSpinnerCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;,
        Lcom/color/widget/ColorSpinnerCallback$DropdownDismissListener;
    }
.end annotation


# virtual methods
.method public abstract isDropDownShowing()Z
.end method

.method public abstract setDropdownDismissCallback(Lcom/color/widget/ColorSpinnerCallback$DropdownDismissCallback;)V
.end method

.method public abstract setDropdownItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end method

.method public abstract setDropdownUpdateAfterAnim(Z)V
.end method
