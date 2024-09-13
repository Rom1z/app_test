.class Lcom/online/languages/study/studymaster/SectionListActivity$1;
.super Ljava/lang/Object;
.source "SectionListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/SectionListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SectionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SectionListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SectionListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 5

    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090171

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "group_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionListActivity;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity;->access$000(Lcom/online/languages/study/studymaster/SectionListActivity;Landroid/view/View;I)V

    :cond_1d
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionListActivity;

    iget-boolean p1, p1, Lcom/online/languages/study/studymaster/SectionListActivity;->fullVersion:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionListActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/SectionListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-eqz p1, :cond_13

    :cond_e
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionListActivity$1;->this$0:Lcom/online/languages/study/studymaster/SectionListActivity;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/SectionListActivity;->changeStarred(I)V

    :cond_13
    return-void
.end method
