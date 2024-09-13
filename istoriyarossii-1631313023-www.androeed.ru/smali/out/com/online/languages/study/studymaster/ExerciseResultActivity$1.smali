.class Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;
.super Ljava/lang/Object;
.source "ExerciseResultActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ExerciseResultActivity;->openView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ExerciseResultActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseResultActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;->this$0:Lcom/online/languages/study/studymaster/ExerciseResultActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
