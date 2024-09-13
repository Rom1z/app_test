.class Lcom/online/languages/study/studymaster/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/util/IabHelper;->startSetup(Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

.field final synthetic val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/util/IabHelper;Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    const-string p1, "subs"

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :try_start_20
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string v1, "Checking for in-app billing 3 support."

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const-string v1, "inapp"

    const/4 v2, 0x3

    invoke-interface {v0, v2, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_43

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {p2, v0, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V

    :cond_43
    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v1, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v1, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    return-void

    :cond_4c
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In-app billing version 3 supported for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x5

    invoke-interface {v0, v3, p2, p1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string v4, "Subscription re-signup AVAILABLE."

    invoke-virtual {v0, v4}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v3, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    goto :goto_85

    :cond_7a
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string v4, "Subscription re-signup not available."

    invoke-virtual {v0, v4}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v1, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    :goto_85
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz v0, :cond_90

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v3, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_c4

    :cond_90
    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    invoke-interface {v0, v2, p2, p1}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a6

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string p2, "Subscriptions AVAILABLE."

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v3, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_c4

    :cond_a6
    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v1, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v1, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    :goto_c4
    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    iput-boolean v3, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_c8} :catch_d7

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_d6

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string v0, "Setup successful."

    invoke-direct {p2, v1, v0}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V

    :cond_d6
    return-void

    :catch_d7
    move-exception p1

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->val$listener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz p2, :cond_e8

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V

    :cond_e8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper$1;->this$0:Lcom/online/languages/study/studymaster/util/IabHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
