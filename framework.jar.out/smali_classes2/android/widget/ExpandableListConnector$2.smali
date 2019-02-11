.class Landroid/widget/ExpandableListConnector$2;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ExpandableListConnector;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListConnector;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$2;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 761
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$2;->this$0:Landroid/widget/ExpandableListConnector;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/ExpandableListConnector;->access$002(Landroid/widget/ExpandableListConnector;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 762
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$2;->this$0:Landroid/widget/ExpandableListConnector;

    iput v2, v0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    .line 763
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$2;->this$0:Landroid/widget/ExpandableListConnector;

    iput v2, v0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    .line 764
    return-void
.end method
