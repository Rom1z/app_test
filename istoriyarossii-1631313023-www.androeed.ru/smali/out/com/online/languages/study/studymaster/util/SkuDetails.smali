.class public Lcom/online/languages/study/studymaster/util/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mItemType:Ljava/lang/String;

.field private final mJson:Ljava/lang/String;

.field private final mPrice:Ljava/lang/String;

.field private final mPriceAmountMicros:J

.field private final mPriceCurrencyCode:Ljava/lang/String;

.field private final mSku:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/online/languages/study/studymaster/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mItemType:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mJson:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "productId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mSku:Ljava/lang/String;

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mType:Ljava/lang/String;

    const-string p2, "price"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPrice:Ljava/lang/String;

    const-string p2, "price_amount_micros"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPriceAmountMicros:J

    const-string p2, "price_currency_code"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    const-string p2, "title"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mTitle:Ljava/lang/String;

    const-string p2, "description"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .registers 3

    iget-wide v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPriceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/util/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
