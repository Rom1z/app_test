.class Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;
.super Ljava/lang/Object;
.source "CatTabFragment1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->checkStarred(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

.field final synthetic val$result:I

.field final synthetic val$starred:Z


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->val$result:I

    iput-boolean p3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->val$starred:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->this$0:Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget v2, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->val$result:I

    iget-boolean v3, p0, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1$6;->val$starred:Z

    invoke-static {v0, v1, v2, v3}, Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;->access$200(Lcom/online/languages/study/studymaster/fragments/CatTabFragment1;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;IZ)V

    return-void
.end method
