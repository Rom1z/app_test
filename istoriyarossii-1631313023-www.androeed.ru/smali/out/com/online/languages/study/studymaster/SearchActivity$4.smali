.class Lcom/online/languages/study/studymaster/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/SearchActivity;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/SearchActivity;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/SearchActivity;Landroid/view/View;I)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->this$0:Lcom/online/languages/study/studymaster/SearchActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/online/languages/study/studymaster/SearchActivity$4;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/SearchActivity;->showAlertDialog(Landroid/view/View;I)V

    return-void
.end method
