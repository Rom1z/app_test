.class final Landroidx/databinding/adapters/TimePickerBindingAdapter$1;
.super Ljava/lang/Object;
.source "TimePickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TimePickerBindingAdapter;->setListeners(Landroid/widget/TimePicker;Landroid/widget/TimePicker$OnTimeChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hourChange:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field final synthetic val$minuteChange:Landroidx/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker$OnTimeChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    iput-object p1, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iput-object p2, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$hourChange:Landroidx/databinding/InverseBindingListener;

    iput-object p3, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$minuteChange:Landroidx/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 5

    iget-object v0, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$listener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$hourChange:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_e
    iget-object p1, p0, Landroidx/databinding/adapters/TimePickerBindingAdapter$1;->val$minuteChange:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_15
    return-void
.end method
