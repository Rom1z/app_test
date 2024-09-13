.class public Lorg/apache/commons/collections/SequencedHashMap;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;,
        Lorg/apache/commons/collections/SequencedHashMap$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY:I = 0x2

.field private static final KEY:I = 0x0

.field private static final REMOVED_MASK:I = -0x80000000

.field private static final VALUE:I = 0x1

.field private static final serialVersionUID:J = 0x2eea2293a9222612L


# instance fields
.field private entries:Ljava/util/HashMap;

.field private transient modCount:J

.field private sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/collections/SequencedHashMap;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/SequencedHashMap;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/SequencedHashMap;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    return-wide v0
.end method

.method private static final createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object v0
.end method

.method private getEntry(I)Ljava/util/Map$Entry;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ltz p1, :cond_39

    const/4 v1, -0x1

    :goto_5
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_14

    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_5

    :cond_14
    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_1d

    iget-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object p1

    :cond_1d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " >= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-void
.end method

.method private removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .registers 4

    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object p1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-void
.end method

.method private removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 5

    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_12

    iget-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :cond_5
    iget-object p1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq p1, v1, :cond_25

    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return v0

    :cond_12
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :cond_14
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_25

    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v0

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$3;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p1, p0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/util/Map$Entry;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :goto_c
    return-object v0
.end method

.method public getFirstKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/util/Map$Entry;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :goto_c
    return-object v0
.end method

.method public getLastKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_d

    :cond_18
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$1;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_24

    :cond_19
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_24
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public sequence()Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :cond_c
    :goto_c
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_31

    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_c

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_31
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$2;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    :goto_9
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v0, v1, :cond_1e

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_9

    :cond_1e
    return-void
.end method
