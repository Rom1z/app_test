.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;
.super Ljava/lang/Object;
.source "UserListTabFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->openExercise(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;I)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;

    iput p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/UserListActivity;

    iget v1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment2$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/UserListActivity;->nextPage(I)V

    return-void
.end method
