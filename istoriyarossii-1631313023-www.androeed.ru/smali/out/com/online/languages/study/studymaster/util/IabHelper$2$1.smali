.class Lcom/online/languages/study/studymaster/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/online/languages/study/studymaster/util/IabHelper$2;

.field final synthetic val$inv_f:Lcom/online/languages/study/studymaster/util/Inventory;

.field final synthetic val$result_f:Lcom/online/languages/study/studymaster/util/IabResult;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/util/IabHelper$2;Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Inventory;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->this$1:Lcom/online/languages/study/studymaster/util/IabHelper$2;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->val$result_f:Lcom/online/languages/study/studymaster/util/IabResult;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->val$inv_f:Lcom/online/languages/study/studymaster/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->this$1:Lcom/online/languages/study/studymaster/util/IabHelper$2;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->val$result_f:Lcom/online/languages/study/studymaster/util/IabResult;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;->val$inv_f:Lcom/online/languages/study/studymaster/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Inventory;)V

    return-void
.end method
