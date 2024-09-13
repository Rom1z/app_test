.class final Lorg/apache/commons/collections/map/StaticBucketMap$Node;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;

.field protected next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

.field protected value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-nez v1, :cond_17

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_21

    :cond_17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_21
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_2c

    if-nez p1, :cond_33

    goto :goto_34

    :cond_2c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
