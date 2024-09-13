.class Lcom/online/languages/study/studymaster/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/SearchActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SearchActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SearchActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$1;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 4

    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity$1;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    invoke-static {v0, p1, p2}, Lcom/online/languages/study/studymaster/SearchActivity;->access$000(Lcom/online/languages/study/studymaster/SearchActivity;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$1;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$1;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/SearchActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$1;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/SearchActivity;->changeStarred(I)V

    :cond_f
    return-void
.end method
