.class public Loppo/content/res/OppoExtraConfiguration;
.super Ljava/lang/Object;
.source "OppoExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field public static final THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field public mFlipFont:I

.field public mThemeChanged:I

.field public mThemeChangedFlags:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "flag":Z
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 113
    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Loppo/content/res/OppoExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Loppo/content/res/OppoExtraConfiguration;->compareTo(Loppo/content/res/OppoExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "i":I
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    sub-int v0, v2, v3

    .line 47
    if-eqz v0, :cond_0

    move v1, v0

    .line 56
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    return v1

    .line 54
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v3, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    sub-int v0, v2, v3

    move v1, v0

    .line 56
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public diff(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 99
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 101
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 102
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 104
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "i":I
    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 137
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    add-int v0, v1, v2

    .line 138
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 132
    return-void
.end method

.method public setTo(Loppo/content/res/OppoExtraConfiguration;)V
    .locals 2
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 60
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 61
    iget-wide v0, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 62
    iget v0, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 63
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 76
    iput v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mThemeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mThemeChangedFlags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mFlipFont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Loppo/content/res/OppoExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Loppo/content/res/OppoExtraConfiguration;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 83
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 85
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    .line 86
    iget-wide v2, p1, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v2, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    .line 88
    :cond_0
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 89
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 90
    iget v1, p1, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    iput v1, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    .line 92
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 123
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-wide v0, p0, Loppo/content/res/OppoExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget v0, p0, Loppo/content/res/OppoExtraConfiguration;->mFlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return-void
.end method
