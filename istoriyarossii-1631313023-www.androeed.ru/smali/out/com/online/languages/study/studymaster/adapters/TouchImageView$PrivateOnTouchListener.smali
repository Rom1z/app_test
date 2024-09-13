.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object p2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    const/4 p1, 0x0

    return p1

    :cond_11
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1200(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->DRAG:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->FLING:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    if-ne v1, v2, :cond_d6

    :cond_4f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_b9

    if-eq v1, v3, :cond_b1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5f

    const/4 v0, 0x6

    if-eq v1, v0, :cond_b1

    goto/16 :goto_d6

    :cond_5f
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->DRAG:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    if-ne v1, v2, :cond_d6

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v6

    invoke-static {v4, v1, v5, v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFF)F

    move-result v1

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFF)F

    move-result v2

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_d6

    :cond_b1
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    goto :goto_d6

    :cond_b9
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->cancelFling()V

    :cond_cf
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->DRAG:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    :cond_d6
    :goto_d6
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_f0
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_101

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_101
    return v3
.end method
