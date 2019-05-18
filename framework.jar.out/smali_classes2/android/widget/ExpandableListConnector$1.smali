.class Landroid/widget/ExpandableListConnector$1;
.super Ljava/lang/Object;
.source "ExpandableListConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
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
    .line 681
    iput-object p1, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 685
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ExpandableListConnector;->mColorExpandListRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Landroid/widget/ExpandableListConnector;->access$002(Landroid/widget/ExpandableListConnector;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 686
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    iget-object v1, v1, Landroid/widget/ExpandableListConnector;->mPositionMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->colorCollapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 687
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    iput v2, v0, Landroid/widget/ExpandableListConnector;->tmpExpandGroupPos:I

    .line 688
    iget-object v0, p0, Landroid/widget/ExpandableListConnector$1;->this$0:Landroid/widget/ExpandableListConnector;

    iput v2, v0, Landroid/widget/ExpandableListConnector;->tmpCollapseGroupPos:I

    .line 689
    return-void
.end method
