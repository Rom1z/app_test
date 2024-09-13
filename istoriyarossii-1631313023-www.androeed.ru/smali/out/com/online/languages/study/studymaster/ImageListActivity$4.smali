.class Lcom/online/languages/study/studymaster/ImageListActivity$4;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ImageListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/ImageListActivity;->getListType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/ImageListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->access$100(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/util/ArrayList;)V

    goto :goto_1d

    :cond_16
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$4;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/ImageListActivity;->access$200(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
