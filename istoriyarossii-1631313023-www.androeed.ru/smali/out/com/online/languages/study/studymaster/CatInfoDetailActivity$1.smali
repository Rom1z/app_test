.class Lcom/online/languages/study/studymaster/CatInfoDetailActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CatInfoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CatInfoDetailActivity;->exitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CatInfoDetailActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CatInfoDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatInfoDetailActivity$1;->this$0:Lcom/online/languages/study/studymaster/CatInfoDetailActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatInfoDetailActivity$1;->this$0:Lcom/online/languages/study/studymaster/CatInfoDetailActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/CatInfoDetailActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CatInfoDetailActivity$1;->this$0:Lcom/online/languages/study/studymaster/CatInfoDetailActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/online/languages/study/studymaster/CatInfoDetailActivity;->overridePendingTransition(II)V

    return-void
.end method
