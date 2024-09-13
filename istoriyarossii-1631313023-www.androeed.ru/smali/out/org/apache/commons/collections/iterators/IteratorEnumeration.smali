.class public Lorg/apache/commons/collections/iterators/IteratorEnumeration;
.super Ljava/lang/Object;
.source "IteratorEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    return-void
.end method
