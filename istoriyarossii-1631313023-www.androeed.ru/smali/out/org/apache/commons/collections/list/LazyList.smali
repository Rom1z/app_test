.class public Lorg/apache/commons/collections/list/LazyList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "LazyList.java"


# static fields
.field private static final serialVersionUID:J = -0x17b569d9a565ab0eL


# instance fields
.field protected final factory:Lorg/apache/commons/collections/Factory;


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Factory;)Ljava/util/List;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/list/LazyList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_22

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {v0}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    if-ge v0, p1, :cond_2f

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2f
    iget-object p1, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-interface {p1}, Lorg/apache/commons/collections/Factory;->create()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/LazyList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/commons/collections/list/LazyList;

    iget-object v0, p0, Lorg/apache/commons/collections/list/LazyList;->factory:Lorg/apache/commons/collections/Factory;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/collections/list/LazyList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Factory;)V

    return-object p2
.end method
