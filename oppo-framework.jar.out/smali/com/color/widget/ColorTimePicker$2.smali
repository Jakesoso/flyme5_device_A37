.class Lcom/color/widget/ColorTimePicker$2;
.super Ljava/lang/Object;
.source "ColorTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/widget/ColorTimePicker;->getColorTimePicker()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/widget/ColorTimePicker;


# direct methods
.method constructor <init>(Lcom/color/widget/ColorTimePicker;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 4
    .param p1, "arg0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 211
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # invokes: Lcom/color/widget/ColorTimePicker;->is24Hours()Z
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$300(Lcom/color/widget/ColorTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mAmPm:I
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$000(Lcom/color/widget/ColorTimePicker;)I

    move-result v0

    if-nez v0, :cond_4

    .line 212
    :cond_0
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # invokes: Lcom/color/widget/ColorTimePicker;->is24Hours()Z
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$300(Lcom/color/widget/ColorTimePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 222
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mAmPm:I
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$000(Lcom/color/widget/ColorTimePicker;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    # setter for: Lcom/color/widget/ColorTimePicker;->mAmPm:I
    invoke-static {v0, v1}, Lcom/color/widget/ColorTimePicker;->access$002(Lcom/color/widget/ColorTimePicker;I)I

    .line 223
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->pickerAmPm:Lcom/oppo/widget/OppoNumberPicker;
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$400(Lcom/color/widget/ColorTimePicker;)Lcom/oppo/widget/OppoNumberPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mAmPm:I
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$000(Lcom/color/widget/ColorTimePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v0

    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;->OnTimeChange(Ljava/util/Calendar;)V

    .line 229
    :cond_3
    return-void

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$2;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mAmPm:I
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$000(Lcom/color/widget/ColorTimePicker;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 215
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 217
    :cond_5
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
