.class final Landroidx/viewpager2/widget/FakeDrag;
.super Ljava/lang/Object;
.source "FakeDrag.java"


# instance fields
.field private mActualDraggedDistance:I

.field private mFakeDragBeginTime:J

.field private mMaximumVelocity:I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestedDragDistance:F

.field private final mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private addFakeMotionEvent(JIFF)V
    .registers 14

    iget-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private beginFakeVelocityTracker()V
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    goto :goto_1e

    :cond_1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_1e
    return-void
.end method


# virtual methods
.method beginFakeDrag()Z
    .registers 8

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iput v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    int-to-float v0, v1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    invoke-direct {p0}, Landroidx/viewpager2/widget/FakeDrag;->beginFakeVelocityTracker()V

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyBeginFakeDrag()V

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_2a
    iget-wide v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    const/4 v0, 0x1

    return v0
.end method

.method endFakeDrag()Z
    .registers 4

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyEndFakeDrag()V

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->snapToPage()V

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method fakeDragBy(F)Z
    .registers 11

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    iget p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_30

    move v2, p1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, p1

    :goto_35
    const/4 p1, 0x0

    if-eqz v0, :cond_3c

    iget v5, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    move v6, v5

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    if-eqz v0, :cond_41

    const/4 v7, 0x0

    goto :goto_44

    :cond_41
    iget p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    move v7, p1

    :goto_44
    iget-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    return v8
.end method

.method isFakeDragging()Z
    .registers 2

    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    return v0
.end method
