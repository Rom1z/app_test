.class Lorg/apache/commons/collections/DoubleOrderedMap$1$1;
.super Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.source "DoubleOrderedMap.java"


# instance fields
.field private final synthetic this$1:Lorg/apache/commons/collections/DoubleOrderedMap$1;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap$1;I)V
    .registers 4

    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap$1;->access$000(Lorg/apache/commons/collections/DoubleOrderedMap$1;)Lorg/apache/commons/collections/DoubleOrderedMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1$1;->this$1:Lorg/apache/commons/collections/DoubleOrderedMap$1;

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1$1;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object v0
.end method
