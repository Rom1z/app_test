.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private mDisplayListReflectionLoaded:Z

.field final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000    # 32.0f

    mul-float p3, p3, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    new-instance p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {p3, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .registers 4

    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v0, 0x0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    return v0

    :cond_e
    :goto_e
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    const/4 p1, 0x1

    return p1
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_44

    if-eqz p3, :cond_44

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_28

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    :cond_28
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_40

    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_40
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    goto :goto_61

    :cond_44
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_61

    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_54

    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_54
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {p2, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_61
    :goto_61
    return-void
.end method

.method private openPane(Landroid/view/View;I)Z
    .registers 3

    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez p1, :cond_f

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method private parallaxOtherViews(F)V
    .registers 11

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_16

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_18

    :cond_16
    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_18
    if-gtz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    :goto_21
    if-ge v3, v2, :cond_59

    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_2c

    goto :goto_56

    :cond_2c
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v8, v7

    mul-float v5, v5, v8

    float-to-int v5, v5

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v6, p1

    int-to-float v7, v7

    mul-float v8, v8, v7

    float-to-int v7, v8

    sub-int/2addr v5, v7

    if-eqz v0, :cond_44

    neg-int v5, v5

    :cond_44
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_56

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    if-eqz v0, :cond_4f

    sub-float/2addr v5, v6

    goto :goto_51

    :cond_4f
    sub-float v5, v6, v5

    :goto_51
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v4, v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_56
    :goto_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_59
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1

    :cond_20
    return v3
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_52

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4f

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4f

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_52
    if-eqz p2, :cond_65

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_5c

    move v1, p3

    goto :goto_5e

    :cond_5c
    move v1, p3

    neg-int v1, v1

    :goto_5e
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    return v2
.end method

.method public canSlide()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public closePane()Z
    .registers 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    return-void

    :cond_13
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    :cond_7
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    :cond_7
    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_9

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    :cond_9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_47

    if-nez v0, :cond_20

    goto :goto_47

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_41

    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    :goto_41
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_47
    :goto_47
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_47

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_42

    :cond_32
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_42
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_47
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .registers 2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .registers 2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .registers 2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_69

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SlidingPaneLayout"

    if-nez v0, :cond_4a

    :try_start_20
    const-class v0, Landroid/view/View;

    const-string v4, "getDisplayList"

    move-object v5, v1

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v0

    const-string v4, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    :try_start_34
    const-class v0, Landroid/view/View;

    const-string v4, "mRecreateDisplayList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_41
    .catch Ljava/lang/NoSuchFieldException; {:try_start_34 .. :try_end_41} :catch_42

    goto :goto_48

    :catch_42
    move-exception v0

    const-string v4, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDisplayListReflectionLoaded:Z

    :cond_4a
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_65

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    if-nez v0, :cond_53

    goto :goto_65

    :cond_53
    :try_start_53
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mGetDisplayList:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_69

    :catch_5e
    move-exception v0

    const-string v1, "Error refreshing display list state"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    :cond_65
    :goto_65
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_69
    :goto_69
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_1a

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_1a

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method isLayoutRtlSupport()Z
    .registers 3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isOpen()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isSlideable()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_2a

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v1, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_2a
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_a8

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    goto/16 :goto_a8

    :cond_36
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a2

    if-ne v0, v2, :cond_3d

    goto :goto_a2

    :cond_3d
    if-eqz v0, :cond_70

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    goto :goto_94

    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_94

    cmpl-float v0, v1, v0

    if-lez v0, :cond_94

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v3

    :cond_70
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v5, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_94

    const/4 v0, 0x1

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v0, 0x0

    :goto_95
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_a1

    if-eqz v0, :cond_a0

    goto :goto_a1

    :cond_a0
    const/4 v2, 0x0

    :cond_a1
    :goto_a1
    return v2

    :cond_a2
    :goto_a2
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return v3

    :cond_a8
    :goto_a8
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_15

    :cond_10
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_15
    sub-int v3, p4, p2

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_22

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    :goto_22
    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2d

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v8, :cond_47

    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v8, :cond_44

    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-eqz v8, :cond_44

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_47
    move v11, v4

    const/4 v12, 0x0

    :goto_49
    if-ge v12, v7, :cond_db

    invoke-virtual {v0, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5b

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_d6

    :cond_5b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget-boolean v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v2, :cond_a5

    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v8, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v8

    sub-int v8, v3, v5

    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v10, v8, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    if-eqz v1, :cond_81

    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_83

    :cond_81
    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_83
    add-int v16, v11, v2

    add-int v16, v16, v10

    div-int/lit8 v17, v15, 0x2

    add-int v9, v16, v17

    if-le v9, v8, :cond_8f

    const/4 v8, 0x1

    goto :goto_90

    :cond_8f
    const/4 v8, 0x0

    :goto_90
    iput-boolean v8, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    int-to-float v8, v10

    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v2, v8

    add-int/2addr v11, v2

    int-to-float v2, v8

    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    iput v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_bd

    :cond_a5
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_b9

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v2, :cond_b9

    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    int-to-float v2, v2

    mul-float v8, v8, v2

    float-to-int v2, v8

    move v11, v4

    goto :goto_bd

    :cond_b9
    const/high16 v9, 0x3f800000    # 1.0f

    move v11, v4

    const/4 v2, 0x0

    :goto_bd
    if-eqz v1, :cond_c5

    sub-int v8, v3, v11

    add-int/2addr v8, v2

    sub-int v2, v8, v15

    goto :goto_c9

    :cond_c5
    sub-int v2, v11, v2

    add-int v8, v2, v15

    :goto_c9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v13, v2, v6, v8, v10}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v4, v2

    :goto_d6
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto/16 :goto_49

    :cond_db
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_117

    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_102

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_ec

    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_ec
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v1, :cond_112

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_112

    :cond_102
    const/4 v1, 0x0

    :goto_103
    if-ge v1, v7, :cond_112

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_103

    :cond_112
    :goto_112
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_117
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_28

    if-ne v1, v6, :cond_23

    goto :goto_47

    :cond_23
    if-nez v1, :cond_47

    const/16 v2, 0x12c

    goto :goto_47

    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    if-nez v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    if-nez v3, :cond_47

    const/high16 v3, -0x80000000

    const/16 v4, 0x12c

    goto :goto_47

    :cond_3f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    :goto_47
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5b

    if-eq v3, v7, :cond_4f

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_67

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_67

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_67
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_80

    const-string v10, "SlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    const/4 v10, 0x0

    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move v14, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_87
    const/16 v15, 0x8

    const/16 v16, 0x1

    if-ge v11, v9, :cond_12b

    invoke-virtual {v0, v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_a3

    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    goto/16 :goto_122

    :cond_a3
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_b3

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float/2addr v13, v10

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_b3

    goto/16 :goto_122

    :cond_b3
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_c8

    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_de

    :cond_c8
    iget v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_d6

    sub-int v1, v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_de

    :cond_d6
    const/high16 v10, 0x40000000    # 2.0f

    iget v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_de
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v15, v10, :cond_ea

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_fe

    :cond_ea
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_f6

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_fe

    :cond_f6
    const/high16 v10, 0x40000000    # 2.0f

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_fe
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_113

    if-le v10, v4, :cond_113

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_113
    sub-int/2addr v14, v1

    if-gez v14, :cond_118

    const/4 v1, 0x1

    goto :goto_119

    :cond_118
    const/4 v1, 0x0

    :goto_119
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v12, v1

    iget-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v1, :cond_122

    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    :cond_122
    :goto_122
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_87

    :cond_12b
    if-nez v12, :cond_132

    const/4 v1, 0x0

    cmpl-float v3, v13, v1

    if-lez v3, :cond_22b

    :cond_132
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v1, v8, v1

    const/4 v3, 0x0

    :goto_137
    if-ge v3, v9, :cond_22b

    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_14a

    :cond_143
    :goto_143
    move/from16 v19, v1

    :cond_145
    :goto_145
    const/4 v1, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_223

    :cond_14a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_157

    goto :goto_143

    :cond_157
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_164

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_164

    const/4 v10, 0x1

    goto :goto_165

    :cond_164
    const/4 v10, 0x0

    :goto_165
    if-eqz v10, :cond_169

    const/4 v11, 0x0

    goto :goto_16d

    :cond_169
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    :goto_16d
    if-eqz v12, :cond_1b7

    iget-object v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v6, v15, :cond_1b7

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v15, :cond_143

    if-gt v11, v1, :cond_180

    iget v11, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v11, v11, v15

    if-lez v11, :cond_143

    :cond_180
    if-eqz v10, :cond_1a5

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_190

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_1af

    :cond_190
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_19c

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1af

    :cond_19c
    const/high16 v10, 0x40000000    # 2.0f

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_1af

    :cond_1a5
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_1af
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v6, v11, v7}, Landroid/view/View;->measure(II)V

    goto :goto_143

    :cond_1b7
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_143

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_1e9

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_1d2

    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v15, v17

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_1f3

    :cond_1d2
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_1e0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v15, v19

    goto :goto_1f3

    :cond_1e0
    const/high16 v10, 0x40000000    # 2.0f

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_1f3

    :cond_1e9
    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_1f3
    if-eqz v12, :cond_20b

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v7

    sub-int v7, v8, v10

    move/from16 v19, v1

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-eq v11, v7, :cond_145

    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    goto/16 :goto_145

    :cond_20b
    move/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v10, v10

    mul-float v7, v7, v10

    div-float/2addr v7, v13

    float-to-int v7, v7

    add-int/2addr v11, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v6, v10, v15}, Landroid/view/View;->measure(II)V

    :goto_223
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    goto/16 :goto_137

    :cond_22b
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    iput-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_249

    if-nez v12, :cond_249

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    :cond_249
    return-void
.end method

.method onPanelDragged(I)V
    .registers 6

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v0, :cond_8

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    return-void

    :cond_8
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int p1, v3, v2

    :cond_23
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_2e
    if-eqz v0, :cond_33

    iget v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_35

    :cond_33
    iget v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_35
    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v0, :cond_45

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_45
    iget-boolean p1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_52

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_52
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_1c

    :cond_19
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    :goto_1c
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    goto :goto_16

    :cond_14
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_16
    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_55

    if-eq v0, v1, :cond_18

    goto :goto_61

    :cond_18
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v2, v0, v2

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v3, p1, v3

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-int v4, v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_61

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v2, v3, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_61

    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    :cond_61
    :goto_61
    return v1
.end method

.method public openPane()Z
    .registers 3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_16

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, p2, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_16
    return-void
.end method

.method setAllChildrenVisible()V
    .registers 7

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_19

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .registers 2

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .registers 2

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .registers 3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .registers 2

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .registers 7

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz p2, :cond_32

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result p2

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    mul-float p1, p1, v3

    add-float/2addr p2, p1

    int-to-float p1, v1

    add-float/2addr p2, p1

    sub-float/2addr v2, p2

    float-to-int p1, v2

    goto :goto_41

    :cond_32
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result p2

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    :goto_41
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_57
    return v0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .registers 19

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_16
    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_26

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_4c

    invoke-static/range {p1 .. p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_50

    :cond_4c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_50
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_55
    move-object/from16 v13, p0

    if-ge v12, v11, :cond_ac

    invoke-virtual {v13, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_60

    goto :goto_ac

    :cond_60
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_6b

    move/from16 v16, v1

    goto :goto_a5

    :cond_6b
    if-eqz v1, :cond_6f

    move v6, v3

    goto :goto_70

    :cond_6f
    move v6, v2

    :goto_70
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_86

    move v0, v2

    goto :goto_87

    :cond_86
    move v0, v3

    :goto_87
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_a1

    if-lt v15, v9, :cond_a1

    if-gt v0, v8, :cond_a1

    if-gt v1, v10, :cond_a1

    const/4 v0, 0x4

    goto :goto_a2

    :cond_a1
    const/4 v0, 0x0

    :goto_a2
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_55

    :cond_ac
    :goto_ac
    return-void
.end method
