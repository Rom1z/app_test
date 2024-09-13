.class final Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;
.super Ljava/lang/Object;
.source "ViewAnimatorSlideUpDown.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown;->slideDown(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(ILandroid/view/View;)V
    .registers 3

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$height:I

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$height:I

    if-le v0, p1, :cond_1c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    :cond_1c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2a
    return-void
.end method
