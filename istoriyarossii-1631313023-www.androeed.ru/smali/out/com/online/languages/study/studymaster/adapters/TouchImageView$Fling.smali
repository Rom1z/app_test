.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;
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
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;II)V
    .registers 15

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->FLING:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;-><init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4b

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1300(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1400(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    move v6, v1

    const/4 v7, 0x0

    goto :goto_4d

    :cond_4b
    move v6, v0

    move v7, v6

    :goto_4d
    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_67

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1600(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1700(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_69

    :cond_67
    move v8, v10

    move v9, v8

    :goto_69
    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currX:I

    iput v10, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    sget-object v1, Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;->NONE:Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1000(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Lcom/online/languages/study/studymaster/adapters/TouchImageView$State;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->forceFinished(Z)V

    :cond_11
    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$2100(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_11
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->scroller:Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    iput v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currX:I

    iput v1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->currY:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1900(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$1800(Lcom/online/languages/study/studymaster/adapters/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$Fling;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-static {v0, p0}, Lcom/online/languages/study/studymaster/adapters/TouchImageView;->access$500(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Ljava/lang/Runnable;)V

    :cond_5b
    return-void
.end method
