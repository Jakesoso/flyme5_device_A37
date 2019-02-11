.class public interface abstract Lcom/color/widget/ColorMultiChoiceAdapter$ExtraAnimation;
.super Ljava/lang/Object;
.source "ColorMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtraAnimation"
.end annotation


# virtual methods
.method public abstract getExtraAnimations(Lcom/color/widget/ColorMultiChoiceAdapter;ILandroid/view/View;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/widget/ColorMultiChoiceAdapter;",
            "I",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/color/widget/ColorChoiceModeAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onBindView(ILandroid/view/View;)V
.end method
