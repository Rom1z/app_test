.class Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;
.super Ljava/lang/Object;
.source "StatsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/StatsFragment;->setContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

.field final synthetic val$finalKnownProgressValue:I

.field final synthetic val$finalStudiedProgressValue:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/StatsFragment;II)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->val$finalKnownProgressValue:I

    iput p3, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->val$finalStudiedProgressValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->val$finalKnownProgressValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedProgress:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->val$finalStudiedProgressValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->knownProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/StatsFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/StatsFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/StatsFragment;->studiedProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
