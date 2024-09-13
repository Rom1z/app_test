.class Lcom/online/languages/study/studymaster/ImageListActivity$1;
.super Ljava/lang/Object;
.source "ImageListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/ImageListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ImageListActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ImageListActivity$1;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 3

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$1;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->openCat(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    iget-object p2, p0, Lcom/online/languages/study/studymaster/ImageListActivity$1;->this$0:Lcom/online/languages/study/studymaster/ImageListActivity;

    invoke-static {p2, p1}, Lcom/online/languages/study/studymaster/ImageListActivity;->access$000(Lcom/online/languages/study/studymaster/ImageListActivity;Landroid/view/View;)V

    return-void
.end method
