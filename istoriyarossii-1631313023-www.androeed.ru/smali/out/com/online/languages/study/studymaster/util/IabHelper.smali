.class public Lcom/online/languages/study/studymaster/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    iput-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .registers 3

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_32

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_1c

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    aget-object p0, v1, v0

    return-object p0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    if-ltz p0, :cond_3b

    array-length v1, v0

    if-lt p0, v1, :cond_38

    goto :goto_3b

    :cond_38
    aget-object p0, v0, p0

    return-object p0

    :cond_3b
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consume(Lcom/online/languages/study/studymaster/util/Purchase;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/online/languages/study/studymaster/util/IabException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    :try_start_12
    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9b

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Lcom/online/languages/study/studymaster/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v0

    new-instance v1, Lcom/online/languages/study/studymaster/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_ef
    new-instance v0, Lcom/online/languages/study/studymaster/util/IabException;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public consumeAsync(Lcom/online/languages/study/studymaster/util/Purchase;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/online/languages/study/studymaster/util/Purchase;",
            ">;",
            "Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/online/languages/study/studymaster/util/Purchase;",
            ">;",
            "Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/online/languages/study/studymaster/util/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/util/IabHelper$3;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper;Ljava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/online/languages/study/studymaster/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .registers 3

    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1e

    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDisposed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    iput-boolean p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugLog:Z

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method public flagEndAsync()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncInProgress:Z

    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncInProgress:Z

    if-nez v0, :cond_1e

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncInProgress:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 5

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_26

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_26
    const-string v0, "Unexpected type for bundle response code."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_13
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1e
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2a
    const-string v0, "Unexpected type for intent response code."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 11

    iget v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2b

    const-string p2, "Null data in IAB activity result."

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_2a

    invoke-interface {p1, p2, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_2a
    return v0

    :cond_2b
    invoke-virtual {p0, p3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_142

    if-nez v3, :cond_142

    const-string p2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item type: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_112

    if-nez v5, :cond_a0

    goto :goto_112

    :cond_a0
    :try_start_a0
    new-instance p2, Lcom/online/languages/study/studymaster/util/Purchase;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lcom/online/languages/study/studymaster/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/online/languages/study/studymaster/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    iget-object v3, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/online/languages/study/studymaster/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p3, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_e6

    invoke-interface {p3, v1, p2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_e6
    return v0

    :cond_e7
    const-string p3, "Purchase signature successfully verified."

    invoke-virtual {p0, p3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_a0 .. :try_end_ec} :catch_fc

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1cc

    new-instance p3, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    goto/16 :goto_1cc

    :catch_fc
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    invoke-virtual {p0, p3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabResult;

    invoke-direct {p2, p1, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_111

    invoke-interface {p1, p2, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_111
    return v0

    :cond_112
    :goto_112
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p1, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_141

    invoke-interface {p2, p1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_141
    return v0

    :cond_142
    if-ne p2, v6, :cond_16d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1cc

    new-instance p1, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p2, p1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    goto :goto_1cc

    :cond_16d
    if-nez p2, :cond_198

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance p1, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_1cc

    invoke-interface {p2, p1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    goto :goto_1cc

    :cond_198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance p1, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_1cc

    invoke-interface {p2, p1, v2}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_1cc
    :goto_1cc
    return v0
.end method

.method public isAsyncInProgress()Z
    .registers 2

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mAsyncInProgress:Z

    return v0
.end method

.method public isSetupDone()Z
    .registers 2

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14

    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/online/languages/study/studymaster/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v0, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v2, "launchPurchaseFlow"

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v2, "subs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_32

    iget-boolean v2, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v2, :cond_32

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v2, -0x3f1

    const-string v3, "Subscriptions are not available."

    invoke-direct {v0, v2, v3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    if-eqz v11, :cond_31

    invoke-interface {v11, v0, v12}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_31
    return-void

    :cond_32
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz p4, :cond_82

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_82

    :cond_57
    iget-boolean v2, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionUpdateSupported:Z

    if-nez v2, :cond_6d

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v2, -0x3f3

    const-string v3, "Subscription updates are not available."

    invoke-direct {v0, v2, v3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    if-eqz v11, :cond_6c

    invoke-interface {v11, v0, v12}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_6c
    return-void

    :cond_6d
    iget-object v2, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x5

    iget-object v4, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_94

    :cond_82
    :goto_82
    iget-object v2, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_94
    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v3, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_c1

    invoke-interface {v11, v0, v12}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_c1
    return-void

    :cond_c2
    const-string v3, "BUY_INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iput v10, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mRequestCode:I

    iput-object v11, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchaseListener:Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;

    iput-object v0, v1, Lcom/online/languages/study/studymaster/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_114
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_32 .. :try_end_114} :catch_13f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_114} :catch_115

    goto :goto_168

    :catch_115
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while starting purchase flow"

    invoke-direct {v0, v2, v3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_168

    invoke-interface {v11, v0, v12}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    goto :goto_168

    :catch_13f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagEndAsync()V

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/16 v2, -0x3ec

    const-string v3, "Failed to send intent."

    invoke-direct {v0, v2, v3}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_168

    invoke-interface {v11, v0, v12}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/online/languages/study/studymaster/util/IabResult;Lcom/online/languages/study/studymaster/util/Purchase;)V

    :cond_168
    :goto_168
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/online/languages/study/studymaster/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14

    const-string v3, "subs"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/online/languages/study/studymaster/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/online/languages/study/studymaster/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/online/languages/study/studymaster/util/Inventory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/online/languages/study/studymaster/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/online/languages/study/studymaster/util/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/online/languages/study/studymaster/util/Inventory;

    move-result-object p1

    return-object p1
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/online/languages/study/studymaster/util/Inventory;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/online/languages/study/studymaster/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/online/languages/study/studymaster/util/IabException;
        }
    .end annotation

    const-string v0, "subs"

    const-string v1, "inapp"

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v2, "queryInventory"

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    :try_start_c
    new-instance v2, Lcom/online/languages/study/studymaster/util/Inventory;

    invoke-direct {v2}, Lcom/online/languages/study/studymaster/util/Inventory;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryPurchases(Lcom/online/languages/study/studymaster/util/Inventory;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4c

    if-eqz p1, :cond_28

    invoke-virtual {p0, v1, v2, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/online/languages/study/studymaster/util/Inventory;Ljava/util/List;)I

    move-result p2

    if-nez p2, :cond_20

    goto :goto_28

    :cond_20
    new-instance p1, Lcom/online/languages/study/studymaster/util/IabException;

    const-string p3, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_28
    :goto_28
    iget-boolean p2, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz p2, :cond_4b

    invoke-virtual {p0, v2, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryPurchases(Lcom/online/languages/study/studymaster/util/Inventory;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_43

    if-eqz p1, :cond_4b

    invoke-virtual {p0, v0, v2, p3}, Lcom/online/languages/study/studymaster/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/online/languages/study/studymaster/util/Inventory;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_4b

    :cond_3b
    new-instance p2, Lcom/online/languages/study/studymaster/util/IabException;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_43
    new-instance p1, Lcom/online/languages/study/studymaster/util/IabException;

    const-string p3, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, p2, p3}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    return-object v2

    :cond_4c
    new-instance p1, Lcom/online/languages/study/studymaster/util/IabException;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v3, p2}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_54} :catch_5f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_54} :catch_54

    :catch_54
    move-exception p1

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabException;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_5f
    move-exception p1

    new-instance p2, Lcom/online/languages/study/studymaster/util/IabException;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public queryInventoryAsync(Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/online/languages/study/studymaster/util/IabHelper$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/online/languages/study/studymaster/util/IabHelper$2;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper;ZLjava/util/List;Lcom/online/languages/study/studymaster/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method queryPurchases(Lcom/online/languages/study/studymaster/util/Inventory;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned items response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_89

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_89
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_167

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_167

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a3

    goto/16 :goto_167

    :cond_a3
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_b0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_142

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Lcom/online/languages/study/studymaster/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_110

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v9, Lcom/online/languages/study/studymaster/util/Purchase;

    invoke-direct {v9, p2, v7, v8}, Lcom/online/languages/study/studymaster/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/online/languages/study/studymaster/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10c

    const-string v8, "BUG: empty/null token!"

    invoke-virtual {p0, v8}, Lcom/online/languages/study/studymaster/util/IabHelper;->logWarn(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    :cond_10c
    invoke-virtual {p1, v9}, Lcom/online/languages/study/studymaster/util/Inventory;->addPurchase(Lcom/online/languages/study/studymaster/util/Purchase;)V

    goto :goto_13e

    :cond_110
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logWarn(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Purchase data: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   Signature: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_13e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b0

    :cond_142
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v2, :cond_166

    const/16 v0, -0x3eb

    :cond_166
    return v0

    :cond_167
    :goto_167
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/online/languages/study/studymaster/util/Inventory;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/online/languages/study/studymaster/util/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/online/languages/study/studymaster/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_2d

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_17
    :goto_17
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_3a

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    :cond_3a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    const/4 v4, 0x0

    :goto_4c
    if-ge v4, v2, :cond_75

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v6, v4, 0x14

    add-int/lit8 v7, v6, 0x14

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_6f
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_75
    if-eqz v3, :cond_9a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_97
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f0

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_e8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_e8
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    :cond_f0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/online/languages/study/studymaster/util/SkuDetails;

    invoke-direct {v3, p1, v2}, Lcom/online/languages/study/studymaster/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/online/languages/study/studymaster/util/Inventory;->addSkuDetails(Lcom/online/languages/study/studymaster/util/SkuDetails;)V

    goto :goto_f8

    :cond_121
    return v1
.end method

.method public startSetup(Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_49

    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/util/IabHelper;->logDebug(Ljava/lang/String;)V

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/util/IabHelper$1;-><init>(Lcom/online/languages/study/studymaster/util/IabHelper;Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object p1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_48

    :cond_3b
    if-eqz p1, :cond_48

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/online/languages/study/studymaster/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/online/languages/study/studymaster/util/IabResult;)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subscriptionsSupported()Z
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/util/IabHelper;->checkNotDisposed()V

    iget-boolean v0, p0, Lcom/online/languages/study/studymaster/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
