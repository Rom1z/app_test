.class Lcom/online/languages/study/studymaster/ScrollingActivity$2;
.super Ljava/lang/Object;
.source "ScrollingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/ScrollingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ScrollingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/ScrollingActivity;->detailItem:Lcom/online/languages/study/studymaster/data/DetailItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DetailItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p1, v0, v1}, Lcom/online/languages/study/studymaster/ScrollingActivity;->access$000(Lcom/online/languages/study/studymaster/ScrollingActivity;Ljava/lang/String;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/online/languages/study/studymaster/ScrollingActivity;->starStatusChanged:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$2;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    return-void
.end method
