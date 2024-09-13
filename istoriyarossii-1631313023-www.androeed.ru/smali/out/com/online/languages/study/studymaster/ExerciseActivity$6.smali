.class Lcom/online/languages/study/studymaster/ExerciseActivity$6;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->changeHeightAnimated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

.field final synthetic val$h:I

.field final synthetic val$nextView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseActivity;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;->val$nextView:Landroid/view/View;

    iput p3, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;->val$nextView:Landroid/view/View;

    if-eqz p1, :cond_1a

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$6;->val$h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
