.class public Lcom/online/languages/study/studymaster/adapters/ResizeHeight;
.super Landroid/view/animation/Animation;
.source "ResizeHeight.java"


# instance fields
.field private final startHeight:I

.field private final targetHeight:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->view:Landroid/view/View;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->targetHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->startHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 4

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->view:Landroid/view/View;

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->targetHeight:I

    iput p3, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->startHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget p2, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->startHeight:I

    int-to-float v0, p2

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->targetHeight:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    float-to-int p1, v0

    iget-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public initialize(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
