.class public Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;
.super Ljava/lang/Object;
.source "SuppressPropertiesBeanIntrospector.java"

# interfaces
.implements Lorg/apache/commons/beanutils/BeanIntrospector;


# static fields
.field public static final SUPPRESS_CLASS:Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;


# instance fields
.field private final propertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;

    const-string v1, "class"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->SUPPRESS_CLASS:Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->propertyNames:Ljava/util/Set;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Property names must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSuppressedProperties()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->propertyNames:Ljava/util/Set;

    return-object v0
.end method

.method public introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->getSuppressedProperties()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/apache/commons/beanutils/IntrospectionContext;->removePropertyDescriptor(Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    return-void
.end method
