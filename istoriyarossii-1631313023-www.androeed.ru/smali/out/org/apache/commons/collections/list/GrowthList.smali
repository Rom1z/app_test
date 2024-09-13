.class public Lorg/apache/commons/collections/list/GrowthList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "GrowthList.java"


# static fields
.field private static final serialVersionUID:J = -0x34ad8ed1e48L


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/list/GrowthList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/GrowthList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_18

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1a

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1a

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v1

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/GrowthList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
