.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->openView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$6;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
