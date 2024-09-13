.class Lcom/online/languages/study/studymaster/CustomDataListActivity$1;
.super Ljava/lang/Object;
.source "CustomDataListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/CustomDataListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CustomDataListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CustomDataListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$1;->this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$1;->this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->access$000(Lcom/online/languages/study/studymaster/CustomDataListActivity;Landroid/view/View;I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/CustomDataListActivity$1;->this$0:Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/CustomDataListActivity;->changeStarred(I)V

    return-void
.end method
