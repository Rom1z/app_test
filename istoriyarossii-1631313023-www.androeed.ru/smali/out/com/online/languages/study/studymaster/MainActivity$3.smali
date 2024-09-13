.class Lcom/online/languages/study/studymaster/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/MainActivity;->checkPremium()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/MainActivity;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V
    .registers 4

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem setting up In-app Billing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogInap"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    if-nez p1, :cond_23

    return-void

    :cond_23
    const-string p1, "Inapp"

    const-string v0, "Setup successful. Querying inventory."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->isSetupDone()Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->isAsyncInProgress()Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/MainActivity;->mHelper:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/MainActivity$3;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/MainActivity;->mGotInventoryListener:Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventoryAsync(Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V

    :cond_49
    return-void
.end method
