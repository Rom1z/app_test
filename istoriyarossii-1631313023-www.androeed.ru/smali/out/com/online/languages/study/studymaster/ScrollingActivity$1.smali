.class Lcom/online/languages/study/studymaster/ScrollingActivity$1;
.super Ljava/lang/Object;
.source "ScrollingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$inStarred:Z


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/ScrollingActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$1;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iput-boolean p2, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$1;->val$inStarred:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$1;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/ScrollingActivity;->dataItem:Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v1, "#info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$1;->val$inStarred:Z

    if-nez v0, :cond_13

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Lcom/online/languages/study/studymaster/ScrollingActivity$1;->this$0:Lcom/online/languages/study/studymaster/ScrollingActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/ScrollingActivity;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :goto_1a
    return-void
.end method
