.class public Landroidx/databinding/adapters/CalendarViewBindingAdapter;
.super Ljava/lang/Object;
.source "CalendarViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDate(Landroid/widget/CalendarView;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/CalendarView;->getDate()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarView;->setDate(J)V

    :cond_b
    return-void
.end method

.method public static setListeners(Landroid/widget/CalendarView;Landroid/widget/CalendarView$OnDateChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 4

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    goto :goto_e

    :cond_6
    new-instance v0, Landroidx/databinding/adapters/CalendarViewBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/CalendarViewBindingAdapter$1;-><init>(Landroid/widget/CalendarView$OnDateChangeListener;Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    :goto_e
    return-void
.end method
