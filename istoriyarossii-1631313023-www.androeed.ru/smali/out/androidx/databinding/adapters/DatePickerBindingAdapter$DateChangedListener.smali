.class Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/adapters/DatePickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateChangedListener"
.end annotation


# instance fields
.field mDayChanged:Landroidx/databinding/InverseBindingListener;

.field mListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field mMonthChanged:Landroidx/databinding/InverseBindingListener;

.field mYearChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/databinding/adapters/DatePickerBindingAdapter$1;)V
    .registers 2

    invoke-direct {p0}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .registers 6

    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_e
    iget-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_15
    iget-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_1c
    return-void
.end method

.method public setListeners(Landroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 5

    iput-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iput-object p2, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroidx/databinding/InverseBindingListener;

    iput-object p3, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroidx/databinding/InverseBindingListener;

    iput-object p4, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroidx/databinding/InverseBindingListener;

    return-void
.end method
