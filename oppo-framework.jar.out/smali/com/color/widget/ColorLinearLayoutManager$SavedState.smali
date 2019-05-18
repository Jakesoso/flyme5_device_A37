.class Lcom/color/widget/ColorLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "ColorLinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/color/widget/ColorLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2059
    new-instance v0, Lcom/color/widget/ColorLinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/color/widget/ColorLinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2031
    return-void

    .line 2030
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/color/widget/ColorLinearLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/color/widget/ColorLinearLayoutManager$SavedState;

    .prologue
    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2034
    iget v0, p1, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2035
    iget v0, p1, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2036
    iget-boolean v0, p1, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2037
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2049
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .prologue
    .line 2040
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method invalidateAnchor()V
    .locals 1

    .prologue
    .line 2044
    const/4 v0, -0x1

    iput v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2045
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2054
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    iget v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    iget-boolean v0, p0, Lcom/color/widget/ColorLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    return-void

    .line 2056
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
