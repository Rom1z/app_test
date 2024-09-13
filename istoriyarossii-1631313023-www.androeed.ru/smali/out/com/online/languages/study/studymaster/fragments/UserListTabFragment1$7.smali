.class Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$7;
.super Ljava/lang/Object;
.source "UserListTabFragment1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->checkStarred()V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$7;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1$7;->this$0:Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;->access$200(Lcom/online/languages/study/studymaster/fragments/UserListTabFragment1;Ljava/util/ArrayList;)V

    return-void
.end method
