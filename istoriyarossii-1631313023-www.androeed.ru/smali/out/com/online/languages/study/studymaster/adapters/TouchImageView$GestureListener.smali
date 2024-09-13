.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->isZoomEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1b
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    move-result-object v0

    sget-object v2, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    if-ne v0, v2, :cond_5a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    goto :goto_42

    :cond_3c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    :goto_42
    move v3, v0

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFFZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->cancelFling()V

    :cond_11
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;II)V

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$402(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_13
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$GestureListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->performClick()Z

    move-result p1

    return p1
.end method
