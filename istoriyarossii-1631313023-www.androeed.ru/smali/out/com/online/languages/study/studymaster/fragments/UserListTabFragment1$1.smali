.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->access$000(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/view/View;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$1;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->confirmChange(I)V

    return-void
.end method
