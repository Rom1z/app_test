.class Lcom/online/languages/study/studymaster/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/util/IabHelper;Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$singleListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$multiListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/util/Purchase;

    :try_start_17
    iget-object v3, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v3, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->consume(Lcom/online/languages/study/studymaster/util/Purchase;)V

    new-instance v3, Lcom/online/languages/study/studymaster/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Lcom/online/languages/study/studymaster/util/IabException; {:try_start_17 .. :try_end_3a} :catch_3b

    goto :goto_b

    :catch_3b
    move-exception v2

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/util/IabException;->getResult()Lcom/online/languages/study/studymaster/util/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_44
    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$singleListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/online/languages/study/studymaster/util/IabHelper$3$1;

    invoke-direct {v2, p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper$3$1;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5d
    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$multiListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/online/languages/study/studymaster/util/IabHelper$3$2;

    invoke-direct {v2, p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper$3$2;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_71
    return-void
.end method
