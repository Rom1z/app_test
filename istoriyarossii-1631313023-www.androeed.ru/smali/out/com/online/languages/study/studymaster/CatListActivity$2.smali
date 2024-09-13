.class Lcom/online/languages/study/studymaster/CatListActivity$2;
.super Ljava/lang/Object;
.source "CatListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CatListActivity;->openView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CatListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CatListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatListActivity$2;->this$0:Lcom/online/languages/study/studymaster/CatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatListActivity$2;->this$0:Lcom/online/languages/study/studymaster/CatListActivity;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/CatListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/CatListActivity;->access$100(Lcom/online/languages/study/studymaster/CatListActivity;I)V

    return-void
.end method
