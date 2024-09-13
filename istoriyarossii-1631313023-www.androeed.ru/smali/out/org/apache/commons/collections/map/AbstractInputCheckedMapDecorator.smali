.class abstract Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;,
        Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected abstract checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;->isSetValueChecking()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    return-object v0

    :cond_12
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
