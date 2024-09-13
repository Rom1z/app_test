.class public Lorg/apache/commons/beanutils/LazyDynaList;
.super Ljava/util/ArrayList;
.source "LazyDynaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private elementDynaBeanType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementType(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaClass;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 5

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/LazyDynaList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;
    .registers 3

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private getDynaClass()Lorg/apache/commons/beanutils/DynaClass;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    :cond_6
    return-object v0
.end method

.method private growList(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    return-void

    :cond_7
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    :goto_10
    if-ge v0, p1, :cond_1d

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    return-void
.end method

.method private transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;
    .registers 5

    if-nez p1, :cond_52

    iget-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez p1, :cond_e

    new-instance p1, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V

    :cond_e
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementType(Ljava/lang/Class;)V

    :cond_19
    :try_start_19
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_7f

    :catch_26
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating DynaBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;

    move-result-object p1

    goto :goto_7b

    :cond_66
    const-class v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_75

    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    goto :goto_7b

    :cond_75
    new-instance v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/WrapDynaBean;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_7b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_7f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_97

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_aa

    :cond_97
    const-class v2, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_aa

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :cond_aa
    :goto_aa
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-eqz v0, :cond_d6

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    goto :goto_d6

    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element Type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match other elements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d6
    :goto_d6
    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_48

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_48

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-le p1, v0, :cond_11

    move v0, p1

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    :goto_15
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    :cond_2e
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->add(ILjava/lang/Object;)V

    move p1, v1

    goto :goto_35

    :cond_46
    const/4 p1, 0x1

    return p1

    :cond_48
    :goto_48
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_29

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V
    .registers 6

    if-eqz p1, :cond_7e

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-gtz v0, :cond_76

    :try_start_8
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    const-class v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaClass;

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    goto :goto_4d

    :cond_2c
    const-class v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_45

    check-cast v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_4d

    :cond_45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4d} :catch_4e

    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating DynaBean from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Element DynaClass cannot be reset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Element DynaClass is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElementType(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_ae

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-gtz v0, :cond_18

    goto :goto_20

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Element Type cannot be reset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_8a

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_58

    :cond_39
    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4b

    move-object p1, v0

    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_58

    :cond_4b
    new-instance p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/WrapDynaBean;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaClass;

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    :goto_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    const-class v1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_73

    check-cast p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    goto :goto_89

    :cond_73
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_89

    check-cast p1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    :cond_89
    :goto_89
    return-void

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ae
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Element Type is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez v0, :cond_e

    new-array v0, v1, [Lorg/apache/commons/beanutils/LazyDynaBean;

    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_1c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_59

    const-class v2, Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_56

    :cond_39
    const-class v2, Lorg/apache/commons/beanutils/DynaBean;

    iget-object v3, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_56

    :cond_4a
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_59
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez v1, :cond_1c

    goto/16 :goto_9d

    :cond_1c
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_74

    array-length v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2c

    goto :goto_38

    :cond_2c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :goto_38
    const/4 v0, 0x0

    :goto_39
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    const-class v1, Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_6d

    :cond_54
    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6d

    :cond_63
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_6d
    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_73
    return-object p1

    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - not compatible with \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9d
    :goto_9d
    invoke-super {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toDynaBeanArray()[Lorg/apache/commons/beanutils/DynaBean;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    if-nez v0, :cond_e

    new-array v0, v1, [Lorg/apache/commons/beanutils/LazyDynaBean;

    return-object v0

    :cond_e
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/beanutils/DynaBean;

    check-cast v0, [Lorg/apache/commons/beanutils/DynaBean;

    :goto_1c
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2d
    return-object v0
.end method
