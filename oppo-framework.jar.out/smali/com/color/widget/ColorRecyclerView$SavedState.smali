.class Lcom/color/widget/ColorRecyclerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorRecyclerView;
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
            "Lcom/color/widget/ColorRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLayoutState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9158
    new-instance v0, Lcom/color/widget/ColorRecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/color/widget/ColorRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/color/widget/ColorRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 9137
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 9138
    const-class v0, Lcom/color/widget/ColorRecyclerView$LayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 9139
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 9145
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 9146
    return-void
.end method

.method static synthetic access$1300(Lcom/color/widget/ColorRecyclerView$SavedState;Lcom/color/widget/ColorRecyclerView$SavedState;)V
    .locals 0
    .param p0, "x0"    # Lcom/color/widget/ColorRecyclerView$SavedState;
    .param p1, "x1"    # Lcom/color/widget/ColorRecyclerView$SavedState;

    .prologue
    .line 9129
    invoke-direct {p0, p1}, Lcom/color/widget/ColorRecyclerView$SavedState;->copyFrom(Lcom/color/widget/ColorRecyclerView$SavedState;)V

    return-void
.end method

.method private copyFrom(Lcom/color/widget/ColorRecyclerView$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/color/widget/ColorRecyclerView$SavedState;

    .prologue
    .line 9155
    iget-object v0, p1, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 9156
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 9150
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9151
    iget-object v0, p0, Lcom/color/widget/ColorRecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9152
    return-void
.end method
