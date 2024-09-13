.class Lcom/online/languages/study/studymaster/MapListActivity$2;
.super Ljava/lang/Object;
.source "MapListActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/MapListActivity$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MapListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MapListActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MapListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity$2;->this$0:Lcom/online/languages/study/studymaster/MapListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .registers 3

    iget-object p2, p0, Lcom/online/languages/study/studymaster/MapListActivity$2;->this$0:Lcom/online/languages/study/studymaster/MapListActivity;

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/MapListActivity;->openCat(Landroid/view/View;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method
