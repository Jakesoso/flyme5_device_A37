.class Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;
.super Ljava/lang/Object;
.source "OppoGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/OppoGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OppoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelAction"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

.field private v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/OppoGlobalActions;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p3, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->mHandler:Landroid/os/Handler;

    .line 519
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->mContext:Landroid/content/Context;

    .line 520
    return-void
.end method

.method private indexToOption(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 544
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 553
    const v1, 0xc09043f

    const/4 v2, 0x0

    invoke-virtual {p4, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->v:Landroid/view/View;

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->this$0:Lcom/android/internal/policy/impl/OppoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/OppoGlobalActions;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/OppoGlobalActions;->access$600(Lcom/android/internal/policy/impl/OppoGlobalActions;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->v:Landroid/view/View;

    const v2, 0xc02048d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 556
    .local v0, "itemView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->v:Landroid/view/View;

    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoGlobalActions$CancelAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 549
    return-void
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method
