.class public Landroid/widget/ColorPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ColorPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;,
        Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ColorPopupWindow"


# instance fields
.field private mIsDismissing:Z

.field private mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

.field private mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .line 38
    iput-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/view/View;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ColorPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 37
    iput-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .line 38
    iput-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 147
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 156
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    invoke-interface {v0, p0}, Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissStart(Landroid/widget/ColorPopupWindow;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ColorPopupWindow;->superDismiss()V

    goto :goto_0
.end method

.method invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    invoke-interface {v0, p1}, Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;->onPreInvokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    return-void
.end method

.method public setOnAnimateDismissListener(Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    .line 192
    return-void
.end method

.method public setOnPreInvokePopupListener(Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/widget/ColorPopupWindow;->mOnPreInvokePopupListener:Landroid/widget/ColorPopupWindow$OnPreInvokePopupListener;

    .line 183
    return-void
.end method

.method public superDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    invoke-interface {v0, p0}, Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissEnd(Landroid/widget/ColorPopupWindow;)V

    .line 206
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    .line 208
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 203
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    invoke-interface {v0, p0}, Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissEnd(Landroid/widget/ColorPopupWindow;)V

    .line 206
    :cond_1
    iput-boolean v2, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Landroid/widget/ColorPopupWindow;->mOnAnimateDismissListener:Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;

    invoke-interface {v1, p0}, Landroid/widget/ColorPopupWindow$OnAnimateDismissListener;->onAnimateDismissEnd(Landroid/widget/ColorPopupWindow;)V

    .line 206
    :cond_2
    iput-boolean v2, p0, Landroid/widget/ColorPopupWindow;->mIsDismissing:Z

    throw v0
.end method
