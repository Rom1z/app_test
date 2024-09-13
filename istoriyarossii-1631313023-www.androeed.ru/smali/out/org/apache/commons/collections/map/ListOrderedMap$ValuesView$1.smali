.class Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView$1;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView$1;->this$0:Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
