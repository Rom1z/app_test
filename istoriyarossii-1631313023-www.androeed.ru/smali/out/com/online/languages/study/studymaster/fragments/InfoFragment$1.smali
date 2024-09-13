.class Lcom/online/languages/study/studymaster/fragments/InfoFragment$1;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/InfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/InfoFragment;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/InfoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/InfoFragment$1;->this$0:Lcom/online/languages/study/studymaster/fragments/InfoFragment;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/InfoFragment;->button:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
