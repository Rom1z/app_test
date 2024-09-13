.class public Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "WrapContentViewPager.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->enabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->enabled:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_31

    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2b

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_28

    move v1, v2

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_31
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->enabled:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public setPagingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/WrapContentViewPager;->enabled:Z

    return-void
.end method
