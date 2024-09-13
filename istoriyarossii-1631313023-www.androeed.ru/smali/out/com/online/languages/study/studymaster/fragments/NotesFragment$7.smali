.class Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/NotesFragment;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field final synthetic val$helper:Landroid/widget/RelativeLayout;

.field final synthetic val$recycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$helper:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$helper:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v0}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$helper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$7;->val$helper:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
