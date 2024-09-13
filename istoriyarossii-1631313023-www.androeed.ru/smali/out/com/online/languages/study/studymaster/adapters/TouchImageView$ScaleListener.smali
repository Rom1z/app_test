.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2200(Lcom/online/languages/study/studymaster/adapters/TouchImageView;DFFZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->ZOOM:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result p1

    goto :goto_40

    :cond_28
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result p1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    move v5, p1

    if-eqz v2, :cond_61

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v4}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$DoubleTapZoom;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;FFFZ)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$ScaleListener;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0, p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V

    :cond_61
    return-void
.end method
