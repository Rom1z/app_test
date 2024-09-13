.class Lcom/online/languages/study/studymaster/CardsActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CardsActivity;->updateFlashcard(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CardsActivity;

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CardsActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iput p2, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->val$current:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->val$current:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$3;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
