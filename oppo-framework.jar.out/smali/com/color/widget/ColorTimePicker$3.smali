.class Lcom/color/widget/ColorTimePicker$3;
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
    .line 255
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker$3;->this$0:Lcom/color/widget/ColorTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 3
    .param p1, "arg0"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/16 v2, 0xc

    .line 258
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$3;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mIsMinuteFiveStep:Z
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$500(Lcom/color/widget/ColorTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$3;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/color/widget/ColorTimePicker$3;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v0}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v0

    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;->OnTimeChange(Ljava/util/Calendar;)V

    .line 267
    :cond_0
    return-void

    .line 261
    :cond_1
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
