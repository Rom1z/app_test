.class public Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;,
        Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_MIN_ZOOM:F = -1.0f

.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private maxScaleIsSetByMultiplier:Z

.field private maxScaleMultiplier:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private orientation:I

.field private orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

.field private orientationJustChanged:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

.field private userSpecifiedMinScale:F

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

.field private viewWidth:I

.field private zoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->CENTER:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->CENTER:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleIsSetByMultiplier:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->touchImageViewListener:Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->configureImageView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setState(Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    return p0
.end method

.method static synthetic access$1400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFF)F
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getFixDragTrans(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$2000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->touchImageViewListener:Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/online/languages/study/studymaster/adapters/TouchImageView;DFFZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFZ)Landroid/graphics/PointF;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FF)Landroid/graphics/PointF;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)[F
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    return-object p0
.end method

.method static synthetic access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fling:Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    return-object p0
.end method

.method static synthetic access$402(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fling:Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->state:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    return p0
.end method

.method static synthetic access$800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    return p0
.end method

.method static synthetic access$900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F
    .registers 1

    iget p0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    return p0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_a
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private configureImageView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->context:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientation:I

    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v2, :cond_4b

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_4b
    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v1, v4

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMinScale:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v2, v2, v1

    iput v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMaxScale:F

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setState(Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->onDrawReady:Z

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;

    invoke-direct {v2, p0, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V

    invoke-super {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/online/languages/study/studymaster/R$styleable;->TouchImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_98

    :try_start_83
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_98

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoomEnabled(Z)V
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_91

    goto :goto_98

    :catchall_91
    move-exception p2

    if-eqz p1, :cond_97

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_97
    throw p2

    :cond_98
    :goto_98
    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9d
    return-void
.end method

.method private fitImageToView()V
    .registers 15

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    :goto_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_135

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eqz v3, :cond_135

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_135

    :cond_20
    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_135

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_2a

    goto/16 :goto_135

    :cond_2a
    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3f

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMinZoom(F)V

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3f

    iput v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    :cond_3f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    int-to-float v5, v9

    div-float/2addr v4, v5

    sget-object v6, Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    packed-switch v6, :pswitch_data_136

    goto :goto_79

    :pswitch_61
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v4, v2

    :pswitch_6a
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_6e
    move v4, v2

    goto :goto_79

    :pswitch_70
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_6e

    :pswitch_75
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_79
    iget v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v10, v6

    mul-float v11, v2, v3

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v12, v11

    mul-float v13, v4, v5

    sub-float/2addr v12, v13

    int-to-float v6, v6

    sub-float/2addr v6, v10

    iput v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewWidth:F

    int-to-float v6, v11

    sub-float/2addr v6, v12

    iput v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewHeight:F

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->isZoomed()Z

    move-result v6

    const/4 v11, 0x5

    const/4 v13, 0x0

    if-nez v6, :cond_c5

    iget-boolean v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v6, :cond_c5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v11, :cond_bd

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v10, v1

    div-float/2addr v12, v1

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c2

    :cond_b7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c2

    :cond_bd
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_c2
    iput v8, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    goto :goto_12d

    :cond_c5
    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewWidth:F

    cmpl-float v2, v2, v13

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_d4

    :cond_d1
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    :cond_d4
    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewWidth:F

    div-float/2addr v4, v3

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    mul-float v4, v4, v3

    aput v4, v2, v1

    const/4 v1, 0x4

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewHeight:F

    div-float/2addr v4, v5

    mul-float v4, v4, v3

    aput v4, v2, v1

    const/4 v10, 0x2

    aget v4, v2, v10

    aget v12, v2, v11

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewWidth:F

    mul-float v3, v3, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v5

    iget-object v13, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    iget v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewWidth:I

    iget v8, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    move-object v1, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move v6, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->newTranslationAfterChange(FFFIIILcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;)F

    move-result v1

    aput v1, v13, v10

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewHeight:F

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    mul-float v3, v1, v2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v4

    iget-object v10, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    iget v5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewHeight:I

    iget v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    move-object v1, p0

    move v2, v12

    move v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->newTranslationAfterChange(FFFIIILcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;)F

    move-result v0

    aput v0, v10, v11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    :goto_12d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixTrans()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_135
    :goto_135
    return-void

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_75
        :pswitch_70
        :pswitch_61
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method private fixScaleTrans()V
    .registers 6

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixTrans()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v2, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    :cond_23
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v2, 0x5

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    aput v1, v0, v2

    :cond_3a
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2e

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_33

    :cond_2e
    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_33
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .registers 4

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    return p1
.end method

.method private getFixTrans(FFF)F
    .registers 6

    const/4 v0, 0x0

    cmpg-float v1, p3, p2

    if-gtz v1, :cond_9

    sub-float/2addr p2, p3

    move p3, p2

    const/4 p2, 0x0

    goto :goto_b

    :cond_9
    sub-float/2addr p2, p3

    const/4 p3, 0x0

    :goto_b
    cmpg-float v1, p1, p2

    if-gez v1, :cond_12

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_12
    cmpl-float p2, p1, p3

    if-lez p2, :cond_19

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_19
    return v0
.end method

.method private getImageHeight()F
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method private newTranslationAfterChange(FFFIIILcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;)F
    .registers 10

    int-to-float p5, p5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p3, p5

    if-gez v1, :cond_13

    int-to-float p1, p6

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 p3, 0x0

    aget p2, p2, p3

    mul-float p1, p1, p2

    sub-float/2addr p5, p1

    mul-float p5, p5, v0

    return p5

    :cond_13
    const/4 p6, 0x0

    cmpl-float v1, p1, p6

    if-lez v1, :cond_1d

    sub-float/2addr p3, p5

    mul-float p3, p3, v0

    neg-float p1, p3

    return p1

    :cond_1d
    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->BOTTOM_RIGHT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    if-ne p7, v1, :cond_24

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_29

    :cond_24
    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;->TOP_LEFT:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    if-ne p7, v1, :cond_29

    const/4 v0, 0x0

    :cond_29
    :goto_29
    neg-float p1, p1

    int-to-float p4, p4

    mul-float p4, p4, v0

    add-float/2addr p1, p4

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    mul-float p5, p5, v0

    sub-float/2addr p1, p5

    neg-float p1, p1

    return p1
.end method

.method private printMatrixInfo()V
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scaleImage(DFFZ)V
    .registers 10

    if-eqz p5, :cond_7

    iget p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMinScale:F

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMaxScale:F

    goto :goto_b

    :cond_7
    iget p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    :goto_b
    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    float-to-double v2, v1

    mul-double v2, v2, p1

    double-to-float v2, v2

    iput v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1c

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_24

    :cond_1c
    cmpg-float v0, v2, p5

    if-gez v0, :cond_24

    iput p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    :cond_24
    :goto_24
    iget-object p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method private setState(Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->state:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    return-void
.end method

.method private setViewSize(III)I
    .registers 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_7

    goto :goto_d

    :cond_7
    move p2, p3

    goto :goto_d

    :cond_9
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_d
    return p2
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_44

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_44
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    return v3

    :cond_19
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    if-gez p1, :cond_22

    return v3

    :cond_22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    if-lez p1, :cond_38

    return v3

    :cond_38
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(I)Z
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    return v3

    :cond_19
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    if-gez p1, :cond_22

    return v3

    :cond_22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    if-lez p1, :cond_38

    return v3

    :cond_38
    const/4 p1, 0x1

    return p1
.end method

.method public getCurrentZoom()F
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .registers 2

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    return v0
.end method

.method public getOrientationChangeFixedPixel()Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .registers 6

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public getViewSizeChangeFixedPixel()Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-object v0
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_3a

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget v6, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-direct {v4, v5, v0, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4

    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoomEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->zoomEnabled:Z

    return v0
.end method

.method public isZoomed()Z
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientation:I

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientation:I

    :cond_16
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->onDrawReady:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_1d

    iget v0, v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    iget v1, v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    iget v2, v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    :cond_1d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_52

    :cond_13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-direct {p0, p1, v2, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setViewSize(III)I

    move-result p1

    invoke-direct {p0, p2, v3, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setViewSize(III)I

    move-result p2

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    :cond_3a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMeasuredDimension(II)V

    return-void

    :cond_52
    :goto_52
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_6e

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    const-string v0, "matrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewHeight:F

    const-string v0, "matchViewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewWidth:F

    const-string v0, "viewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewHeight:I

    const-string v0, "viewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewWidth:I

    const-string v0, "imageRendered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v0, "viewSizeChangeFixedPixel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v0, "orientationChangeFixedPixel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientation:I

    if-eq v1, v0, :cond_64

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationJustChanged:Z

    :cond_64
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_6e
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientation:I

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    const-string v2, "saveScale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewHeight:F

    const-string v2, "matchViewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewWidth:F

    const-string v2, "matchViewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    const-string v2, "viewWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    const-string v2, "viewHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const-string v2, "matrix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v2, "imageRendered"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v2, "viewSizeChangeFixedPixel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    const-string v2, "orientationChangeFixedPixel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public resetZoom()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public savePreviousImageValues()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_28

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewHeight:F

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevMatchViewWidth:F

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewHeight:I

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->prevViewWidth:I

    :cond_28
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->savePreviousImageValues()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setMaxZoom(F)V
    .registers 3

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMaxScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleIsSetByMultiplier:Z

    return-void
.end method

.method public setMaxZoomRatio(F)V
    .registers 3

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleMultiplier:F

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMaxScale:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleIsSetByMultiplier:Z

    return-void
.end method

.method public setMinZoom(F)V
    .registers 5

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_15

    goto :goto_1a

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    goto :goto_51

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz p1, :cond_51

    if-lez v0, :cond_51

    if-lez v1, :cond_51

    iget p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_43

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    goto :goto_51

    :cond_43
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    goto :goto_51

    :cond_4f
    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    :cond_51
    :goto_51
    iget-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleIsSetByMultiplier:Z

    if-eqz p1, :cond_5a

    iget p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->maxScaleMultiplier:F

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMaxZoomRatio(F)V

    :cond_5a
    const/high16 p1, 0x3f400000    # 0.75f

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->touchImageViewListener:Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setOrientationChangeFixedPixel(Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->orientationChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_a

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_13

    :cond_a
    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->onDrawReady:Z

    if-eqz p1, :cond_13

    invoke-virtual {p0, p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setScrollPosition(FF)V
    .registers 4

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setViewSizeChangeFixedPixel(Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewSizeChangeFixedPixel:Lcom/online/languages/study/studymaster/adapters/TouchImageView$FixedPixel;

    return-void
.end method

.method public setZoom(F)V
    .registers 3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .registers 12

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_12

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->delayedZoomVariables:Lcom/online/languages/study/studymaster/adapters/TouchImageView$ZoomVariables;

    return-void

    :cond_12
    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setMinZoom(F)V

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->minScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->normalizedScale:F

    :cond_27
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_2e

    invoke-virtual {p0, p4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    iget p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->scaleImage(DFFZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float p2, p2, v0

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    const/4 p2, 0x5

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getImageHeight()F

    move-result p4

    mul-float p3, p3, p4

    iget p4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->viewHeight:I

    int-to-float p4, p4

    mul-float p4, p4, v1

    sub-float/2addr p3, p4

    neg-float p3, p3

    aput p3, p1, p2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->fixTrans()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 5

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoomEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->zoomEnabled:Z

    return-void
.end method
