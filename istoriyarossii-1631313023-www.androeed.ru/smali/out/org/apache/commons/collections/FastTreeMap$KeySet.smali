.class Lorg/apache/commons/collections/FastTreeMap$KeySet;
.super Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$KeySet;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastTreeMap$KeySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;)V

    return-void
.end method


# virtual methods
.method protected get(Ljava/util/Map;)Ljava/util/Collection;
    .registers 2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
