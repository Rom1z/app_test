.class public Landroidx/databinding/adapters/NumberPickerBindingAdapter;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListeners(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$OnValueChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    goto :goto_e

    :cond_6
    new-instance v0, Landroidx/databinding/adapters/NumberPickerBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/NumberPickerBindingAdapter$1;-><init>(Landroid/widget/NumberPicker$OnValueChangeListener;Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    :goto_e
    return-void
.end method

.method public static setValue(Landroid/widget/NumberPicker;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    :cond_9
    return-void
.end method
