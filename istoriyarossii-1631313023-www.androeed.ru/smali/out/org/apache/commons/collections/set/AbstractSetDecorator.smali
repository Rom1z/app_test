.class public abstract Lorg/apache/commons/collections/set/AbstractSetDecorator;
.super Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;
.source "AbstractSetDecorator.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getSet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSetDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
