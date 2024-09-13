.class Lcom/online/languages/study/studymaster/GetPremium$1;
.super Ljava/lang/Object;
.source "GetPremium.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/GetPremium;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/GetPremium;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/GetPremium;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V
    .registers 5

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/GetPremium;->showFail(Ljava/lang/String;)V

    :cond_1c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    if-nez p1, :cond_23

    return-void

    :cond_23
    const-string p1, "premium_version"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->isSetupDone()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/GetPremium;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/GetPremium$1;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/GetPremium;->mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V

    :cond_4d
    return-void
.end method
