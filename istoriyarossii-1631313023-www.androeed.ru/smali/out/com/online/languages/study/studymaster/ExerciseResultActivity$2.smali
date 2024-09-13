.class Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;
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

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ExerciseResultActivity;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->this$0:Lcom/online/languages/study/studymaster/ExerciseResultActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->val$icon:Landroid/widget/ImageView;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->val$v:Landroid/view/View;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/adapters/ViewAnimatorSlideUpDown;->slideUp(Landroid/view/View;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ExerciseResultActivity$2;->val$v:Landroid/view/View;

    const v1, 0x7f0a0060

    const-string v2, "closed"

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
