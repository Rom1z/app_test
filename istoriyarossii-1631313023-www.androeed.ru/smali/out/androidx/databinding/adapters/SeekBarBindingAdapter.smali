.class public Landroidx/databinding/adapters/SeekBarBindingAdapter;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;,
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;,
        Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnSeekBarChangeListener(Landroid/widget/SeekBar;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;)V
    .registers 6

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    if-nez p3, :cond_d

    if-nez p4, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_15

    :cond_d
    new-instance v0, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;

    invoke-direct {v0, p3, p4, p1, p2}, Landroidx/databinding/adapters/SeekBarBindingAdapter$1;-><init>(Landroidx/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroidx/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_15
    return-void
.end method

.method public static setProgress(Landroid/widget/SeekBar;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-eq p1, v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_9
    return-void
.end method
