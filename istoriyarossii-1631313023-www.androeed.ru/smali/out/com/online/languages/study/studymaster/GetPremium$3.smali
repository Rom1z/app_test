.class Lcom/online/languages/study/studymaster/GetPremium$3;
.super Ljava/lang/Object;
.source "GetPremium.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/GetPremium;
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$3;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V
    .registers 5

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p2, p0, Lcom/online/languages/study/studymaster/GetPremium$3;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error purchasing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    return-void

    :cond_1d
    invoke-virtual {p2}, Lcom/online/languages/study/studymaster/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p1

    const-string p2, "premium_version"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$3;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const-string p2, "SKU recognized"

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    :cond_30
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$3;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const-string p2, "UI updated"

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$3;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/GetPremium;->access$000(Lcom/online/languages/study/studymaster/GetPremium;)V

    return-void
.end method
