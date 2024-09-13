.class Lcom/online/languages/study/studymaster/ExerciseActivity$3;
.super Ljava/lang/Object;
.source "ExerciseActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseActivity;->manageCardHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

.field final synthetic val$card:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$3;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$3;->val$card:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$3;->val$card:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$3;->val$card:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ExerciseActivity$3;->this$0:Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-static {v1, v0}, Lcom/online/languages/study/studymaster/ExerciseActivity;->access$200(Lcom/online/languages/study/studymaster/ExerciseActivity;I)V

    return-void
.end method
