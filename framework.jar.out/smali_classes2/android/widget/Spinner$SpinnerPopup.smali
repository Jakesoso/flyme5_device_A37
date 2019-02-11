.class interface abstract Landroid/widget/Spinner$SpinnerPopup;
.super Ljava/lang/Object;
.source "Spinner.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
    note = "JianHui.Yu@Plf.SDK, 2015-08-06 : [-private] Modify for List NavigationMode"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SpinnerPopup"
.end annotation


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHintText()Ljava/lang/CharSequence;
.end method

.method public abstract getHorizontalOffset()I
.end method

.method public abstract getVerticalOffset()I
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setAdapter(Landroid/widget/ListAdapter;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setPromptText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setVerticalOffset(I)V
.end method

.method public abstract show(II)V
.end method
