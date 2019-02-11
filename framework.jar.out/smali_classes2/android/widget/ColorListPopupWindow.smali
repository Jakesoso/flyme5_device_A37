.class public Landroid/widget/ColorListPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "ColorListPopupWindow.java"

# interfaces
.implements Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;
.implements Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorListPopupWindow"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ColorListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method


# virtual methods
.method createPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/PopupWindow;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 90
    new-instance v0, Landroid/widget/ColorPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    .local v0, "popup":Landroid/widget/ColorPopupWindow;
    invoke-virtual {v0, p0}, Landroid/widget/ColorPopupWindow;->setOnPreInvokePopupListener(Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ColorPopupWindow;->setOnAnimateDismissListener(Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;)V

    .line 93
    return-object v0
.end method

.method public onAnimateDismissEnd(Landroid/widget/ColorPopupWindow;)V
    .locals 0
    .param p1, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    .line 105
    return-void
.end method

.method public onAnimateDismissStart(Landroid/widget/ColorPopupWindow;)V
    .locals 0
    .param p1, "popup"    # Landroid/widget/ColorPopupWindow;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/widget/ColorPopupWindow;->superDismiss()V

    .line 102
    return-void
.end method

.method public onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 97
    return-void
.end method
