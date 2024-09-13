.class Lcom/online/languages/study/studymaster/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/MainActivity;
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

    iput-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$4;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Inventory;)V
    .registers 4

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->isFailure()Z

    move-result p1

    const-string v0, "Inapp"

    if-eqz p1, :cond_e

    const-string p1, "Feilure to connect Google service API"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_e
    const-string p1, "Success inventory."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "premium_version"

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$4;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/MainActivity;->access$100(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$4;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/MainActivity;->access$200(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/Boolean;)V

    goto :goto_39

    :cond_30
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$4;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/MainActivity;->access$200(Lcom/online/languages/study/studymaster/MainActivity;Ljava/lang/Boolean;)V

    :goto_39
    iget-object p1, p0, Lcom/online/languages/study/studymaster/MainActivity$4;->this$0:Lcom/online/languages/study/studymaster/MainActivity;

    iget p2, p1, Lcom/online/languages/study/studymaster/MainActivity;->menuActiveItem:I

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/MainActivity;->updateMenuList(I)V

    :goto_40
    return-void
.end method
