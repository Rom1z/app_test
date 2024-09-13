.class Lcom/online/languages/study/studymaster/CardsActivity$2$1;
.super Ljava/lang/Object;
.source "CardsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CardsActivity$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CardsActivity$2;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/CardsActivity;->wordList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/CardsActivity;->viewPagerAdapter:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CardsActivity$2$1;->this$1:Lcom/online/languages/study/studymaster/CardsActivity$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity$2;->this$0:Lcom/online/languages/study/studymaster/CardsActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/CardsActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
