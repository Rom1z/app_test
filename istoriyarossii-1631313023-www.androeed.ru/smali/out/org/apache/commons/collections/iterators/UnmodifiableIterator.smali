.class public final Lorg/apache/commons/collections/iterators/UnmodifiableIterator;
.super Ljava/lang/Object;
.source "UnmodifiableIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static decorate(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2

    if-eqz p0, :cond_d

    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
