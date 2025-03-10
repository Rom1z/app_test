.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1d

    sget p1, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    :cond_1d
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .registers 4

    const/16 v0, 0x21

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_24

    :cond_10
    const/16 v0, 0x82

    if-ne p1, v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_24

    :cond_20
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_24
    return-void
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p3, :cond_a

    goto :goto_24

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v3, v1, p1

    if-gtz v3, :cond_24

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p0, p1, v1

    if-gez p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .registers 2

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 25

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/util/Pair;

    iget-object v7, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v7, :cond_12c

    iget-object v7, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v7, :cond_3a

    goto :goto_25

    :cond_3a
    iget-object v7, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v6, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v4, v5, v6, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v6

    if-eqz v6, :cond_59

    return-void

    :cond_59
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v13, 0x5

    cmp-long v14, v7, v11

    if-gez v14, :cond_79

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    const/4 v8, 0x0

    goto :goto_90

    :cond_6e
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v8}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_90

    :cond_79
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v11, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v7, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v8

    :goto_90
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v14, v9, v11

    if-lez v14, :cond_ba

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    move-result v10

    if-eqz v10, :cond_b1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v10

    goto :goto_d1

    :cond_b1
    invoke-virtual {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_d1

    :cond_ba
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v9, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v10

    :goto_d1
    invoke-virtual {v1, v7}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v13

    long-to-int v11, v13

    :goto_db
    if-gt v12, v11, :cond_12c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v13

    mul-int v13, v13, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v14

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v0, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v16

    iget-object v6, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v6

    add-int v6, v16, v6

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    iget-object v0, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v0

    sub-int/2addr v15, v0

    if-le v13, v7, :cond_109

    const/4 v0, 0x0

    goto :goto_10a

    :cond_109
    move v0, v8

    :goto_10a
    if-le v9, v14, :cond_111

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v13

    goto :goto_112

    :cond_111
    move v13, v10

    :goto_112
    int-to-float v0, v0

    int-to-float v6, v6

    int-to-float v13, v13

    int-to-float v14, v15

    iget-object v15, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v18, v0

    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v14

    move-object/from16 v22, v15

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_db

    :cond_12c
    move-object/from16 v0, p0

    goto/16 :goto_25

    :cond_130
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    goto :goto_a

    :cond_6
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_30

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    if-lt p2, v1, :cond_1f

    goto :goto_30

    :cond_1f
    const/16 p2, 0x13

    if-ne p2, p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    return v2

    :cond_2f
    return v0

    :cond_30
    :goto_30
    return v2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelection(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-ge p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_19

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    :goto_19
    return-void
.end method
