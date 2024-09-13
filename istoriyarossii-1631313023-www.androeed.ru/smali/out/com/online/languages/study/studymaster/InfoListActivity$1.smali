.class Lcom/online/languages/study/studymaster/InfoListActivity$1;
.super Ljava/lang/Object;
.source "InfoListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/InfoListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/InfoListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/InfoListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/InfoListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity$1;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity$1;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/InfoListActivity;->access$000(Lcom/online/languages/study/studymaster/InfoListActivity;Landroid/view/View;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity$1;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v0, "#info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity$1;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/InfoListActivity;->changeStarred(I)V

    :cond_19
    return-void
.end method
