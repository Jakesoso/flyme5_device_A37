.class Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnovativeV2HAction"
.end annotation


# instance fields
.field private final ITEM_IDS:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const v0, 0xc02048c

    iput v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->ITEM_IDS:I

    .line 632
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mHandler:Landroid/os/Handler;

    .line 633
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->mContext:Landroid/content/Context;

    .line 634
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v3, 0xc02048c

    .line 638
    const v1, 0xc09043e

    const/4 v2, 0x0

    invoke-virtual {p4, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/widget/ColorGlobalActionView;

    .line 642
    .local v0, "itemView":Lcom/color/widget/ColorGlobalActionView;
    if-eqz v0, :cond_0

    .line 643
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGlobalActionView;->setTag(Ljava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mTouchX:Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$900(Lcom/android/internal/policy/impl/OppoGlobalActions;)Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorGlobalActionView;->setOnTouchXListener(Lcom/color/widget/ColorGlobalActionView$OnTouchXListener;)V

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$InnovativeV2HAction;->view:Landroid/view/View;

    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method
