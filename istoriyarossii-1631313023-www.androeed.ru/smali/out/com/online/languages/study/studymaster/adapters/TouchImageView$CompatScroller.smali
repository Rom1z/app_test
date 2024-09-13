.class Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatScroller"
.end annotation


# instance fields
.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/TouchImageView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->this$0:Lcom/online/languages/study/studymaster/adapters/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method computeScrollOffset()Z
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method fling(IIIIIIII)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method forceFinished(Z)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method getCurrX()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method getCurrY()I
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
