.class Lcom/online/languages/study/studymaster/MapListActivity$3;
.super Ljava/lang/Object;
.source "MapListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MapListActivity;->openCat(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MapListActivity;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MapListActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MapListActivity$3;->this$0:Lcom/online/languages/study/studymaster/MapListActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/MapListActivity$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MapListActivity$3;->this$0:Lcom/online/languages/study/studymaster/MapListActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/MapListActivity$3;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/MapListActivity;->openCatActivity(Ljava/lang/String;)V

    return-void
.end method
