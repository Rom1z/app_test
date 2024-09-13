.class Lcom/online/languages/study/studymaster/GetPremium$2;
.super Ljava/lang/Object;
.source "GetPremium.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;


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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Inventory;)V
    .registers 7

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const-string p2, "Inventory failure"

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    goto :goto_5d

    :cond_e
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const-string v0, "Inventory received"

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    const-string p1, "premium_version"

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/online/languages/study/studymaster/util/SkuDetails;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p2, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/GetPremium;->purchaseButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const v1, 0x7f11009b

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/GetPremium;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    goto :goto_5d

    :cond_56
    iget-object p1, p0, Lcom/online/languages/study/studymaster/GetPremium$2;->this$0:Lcom/online/languages/study/studymaster/GetPremium;

    const-string p2, "No Product Detail"

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/GetPremium;->showRes(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method
