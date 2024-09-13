.class public Lorg/apache/commons/collections/list/SetUniqueList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;,
        Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;
    }
.end annotation


# static fields
.field static synthetic class$java$util$HashSet:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x63e0d12ac47e0a26L


# instance fields
.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Set must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/list/SetUniqueList;
    .registers 4

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    new-instance v1, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result p1

    if-eq v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/list/SetUniqueList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_22
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result p1

    if-eq v0, p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SetUniqueList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public asSet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/collections/list/SetUniqueList;->class$java$util$HashSet:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "java.util.HashSet"

    invoke-static {v1}, Lorg/apache/commons/collections/list/SetUniqueList;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/list/SetUniqueList;->class$java$util$HashSet:Ljava/lang/Class;

    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_32

    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_26
    .catch Ljava/lang/InstantiationException; {:try_start_1c .. :try_end_26} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_32

    :catch_27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_32

    :catch_2d
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_32
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/SetUniqueList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    if-eq v0, p1, :cond_10

    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->remove(I)Ljava/lang/Object;

    :cond_10
    iget-object p1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->createSetBasedOnList(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0
.end method
