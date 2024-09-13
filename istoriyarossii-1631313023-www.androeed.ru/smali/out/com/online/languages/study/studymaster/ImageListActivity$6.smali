.class Lcom/online/languages/study/studymaster/ImageListActivity$6;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ImageListActivity;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

.field final synthetic val$helper:Landroid/view/View;

.field final synthetic val$recycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ImageListActivity;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->val$helper:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->val$helper:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;I)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$6;->val$helper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
