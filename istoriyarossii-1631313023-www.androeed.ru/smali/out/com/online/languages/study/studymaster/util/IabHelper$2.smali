.class Lcom/online/languages/study/studymaster/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/util/IabHelper;ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .registers 6

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    :try_start_8
    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/online/languages/study/studymaster/util/Inventory;

    move-result-object v1
    :try_end_12
    .catch Lcom/online/languages/study/studymaster/util/IabException; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/util/IabException;->getResult()Lcom/online/languages/study/studymaster/util/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v2, v2, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper$2$1;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper$2;Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method
