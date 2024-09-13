.class Lcom/online/languages/study/studymaster/InfoListActivity$2;
.super Ljava/lang/Object;
.source "InfoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/InfoListActivity;->openView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/InfoListActivity$2;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/InfoListActivity$2;->this$0:Lcom/online/languages/study/studymaster/InfoListActivity;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/InfoListActivity;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/online/languages/study/studymaster/InfoListActivity;->access$100(Lcom/online/languages/study/studymaster/InfoListActivity;I)V

    return-void
.end method
