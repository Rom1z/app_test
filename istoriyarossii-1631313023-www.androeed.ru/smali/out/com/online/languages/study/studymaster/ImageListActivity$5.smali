.class Lcom/online/languages/study/studymaster/ImageListActivity$5;
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


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ImageListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$5;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$5;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$5;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewCards:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$5;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/ImageListActivity;->recyclerViewImages:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    return-void
.end method
