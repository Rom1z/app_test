.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->setHR(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->val$height:I

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/ResizeHeight;->setDuration(J)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$8;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    return-void
.end method
