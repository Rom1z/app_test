.class public Landroidx/databinding/adapters/RadioGroupBindingAdapter;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCheckedButton(Landroid/widget/RadioGroup;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_9
    return-void
.end method

.method public static setListeners(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_e

    :cond_6
    new-instance v0, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/RadioGroupBindingAdapter$1;-><init>(Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_e
    return-void
.end method
