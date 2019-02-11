.class Lcom/color/widget/ColorTimePicker$4;
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
    .line 277
    iput-object p1, p0, Lcom/color/widget/ColorTimePicker$4;->this$0:Lcom/color/widget/ColorTimePicker;

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
    .line 280
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$4;->this$0:Lcom/color/widget/ColorTimePicker;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v2

    # invokes: Lcom/color/widget/ColorTimePicker;->getDateFromValue(I)Ljava/util/Date;
    invoke-static {v1, v2}, Lcom/color/widget/ColorTimePicker;->access$600(Lcom/color/widget/ColorTimePicker;I)Ljava/util/Date;

    move-result-object v0

    .line 281
    .local v0, "pickeddate":Ljava/util/Date;
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 282
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 283
    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 284
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$4;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/color/widget/ColorTimePicker$4;->this$0:Lcom/color/widget/ColorTimePicker;

    # getter for: Lcom/color/widget/ColorTimePicker;->mOnTimeChangeListener:Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;
    invoke-static {v1}, Lcom/color/widget/ColorTimePicker;->access$200(Lcom/color/widget/ColorTimePicker;)Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;

    move-result-object v1

    # getter for: Lcom/color/widget/ColorTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {}, Lcom/color/widget/ColorTimePicker;->access$100()Ljava/util/Calendar;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/color/widget/ColorTimePicker$OnTimeChangeListener;->OnTimeChange(Ljava/util/Calendar;)V

    .line 287
    :cond_0
    return-void
.end method
