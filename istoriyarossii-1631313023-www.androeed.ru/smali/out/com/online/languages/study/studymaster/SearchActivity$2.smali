.class Lcom/online/languages/study/studymaster/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollPos:I

.field final synthetic this$0:Lcom/online/languages/study/studymaster/SearchActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SearchActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$2;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$2;->scrollPos:I

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .registers 6

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$2;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$2;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/SearchActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/widget/SearchView;->clearFocus()V

    :cond_11
    return-void
.end method
