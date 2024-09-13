.class Lcom/online/languages/study/studymaster/CatActivity$3;
.super Ljava/lang/Object;
.source "CatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/CatActivity;->checkTTSIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/CatActivity;

.field final synthetic val$checkTTSIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/CatActivity;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/CatActivity$3;->this$0:Lcom/online/languages/study/studymaster/CatActivity;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/CatActivity$3;->val$checkTTSIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/CatActivity$3;->this$0:Lcom/online/languages/study/studymaster/CatActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/CatActivity$3;->val$checkTTSIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/CatActivity;->access$100(Lcom/online/languages/study/studymaster/CatActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/CatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
