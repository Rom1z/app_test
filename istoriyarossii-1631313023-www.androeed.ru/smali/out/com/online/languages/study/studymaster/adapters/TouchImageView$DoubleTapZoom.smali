.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private bitmapX:F

.field private bitmapY:F

.field private endTouch:Landroid/graphics/PointF;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private startTime:J

.field private startTouch:Landroid/graphics/PointF;

.field private startZoom:F

.field private stretchImageToSuper:Z

.field private targetZoom:F

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFFZ)V
    .registers 8

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->ANIMATE_ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTime:J

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startZoom:F

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->targetZoom:F

    iput-boolean p5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    const/4 p2, 0x0

    invoke-static {p1, p3, p4, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget p3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapX:F

    invoke-static {p1, p3, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    return-void
.end method

.method private calculateDeltaScale(F)D
    .registers 6

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->targetZoom:F

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-double v0, v0

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private interpolate()F
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private translateImageToCenterTouchPosition(F)V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-static {p1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->interpolate()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)D

    move-result-wide v2

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    invoke-static/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2200(Lcom/online/languages/study/studymaster/adapters/TouchImageView;DFFZ)V

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_45
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_51

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0, p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_58

    :cond_51
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    :goto_58
    return-void
.end method
