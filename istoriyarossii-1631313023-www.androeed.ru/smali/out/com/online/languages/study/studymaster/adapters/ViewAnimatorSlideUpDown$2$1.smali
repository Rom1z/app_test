.class Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2$1;
.super Ljava/lang/Object;
.source "ViewAnimatorSlideUpDown.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2$1;->this$0:Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;

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

    if-lez p1, :cond_1e

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2$1;->this$0:Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2$1;->this$0:Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    :cond_1e
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2$1;->this$0:Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown$2;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_27
    return-void
.end method
