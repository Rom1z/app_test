.class Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;
.super Ljava/lang/Object;
.source "NotesArchiveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/NotesArchiveActivity;->setHR(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

.field final synthetic val$recycler:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/NotesArchiveActivity;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;->this$0:Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NotesArchiveActivity$2;->val$recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setMinimumHeight(I)V

    return-void
.end method
