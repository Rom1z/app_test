.class Lcom/online/languages/study/studymaster/ImageListActivity$7;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ImageListActivity;->openCat(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ImageListActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/ImageListActivity;->showAlertDialog(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
