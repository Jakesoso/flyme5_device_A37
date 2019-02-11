.class Lcom/color/widget/ColorTimePicker$mFormat;
.super Ljava/lang/Object;
.source "ColorTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/widget/ColorTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "mFormat"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorTimePicker;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorTimePicker;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker$mFormat;->this$0:Lcom/color/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 310
    # invokes: Lcom/color/widget/ColorTimePicker;->getDateYMDW(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/color/widget/ColorTimePicker;->access$700(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "str":Ljava/lang/String;
    # getter for: Lcom/color/widget/ColorTimePicker;->mDateNamesTemp:[Ljava/lang/String;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$800()[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aput-object v0, v1, v2

    .line 312
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$mFormat;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$900(Lcom/color/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 313
    # getter for: Lcom/color/widget/ColorTimePicker;->todayIndex:I
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$1000()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$mFormat;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$900(Lcom/color/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Lcom/color/widget/ColorTimePicker$mFormat;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mToday:Ljava/lang/String;
    invoke-static {v3}, Lcom/color/widget/ColorTimePicker;->access$1100(Lcom/color/widget/ColorTimePicker;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$mFormat;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mDateNames:[Ljava/lang/String;
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$900(Lcom/color/widget/ColorTimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method
