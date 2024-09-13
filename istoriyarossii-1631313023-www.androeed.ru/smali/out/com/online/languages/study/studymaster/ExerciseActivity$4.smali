.class Lcom/online/languages/study/studymaster/ExerciseActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExerciseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->animatedBtnHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$4;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$4;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/ExerciseActivity;->buttonsContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$4;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    sget v0, Lcom/online/languages/study/studymaster/ExerciseActivity;->exTxtMoreHeight:I

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->changeHeightAnimated(I)V

    return-void
.end method
