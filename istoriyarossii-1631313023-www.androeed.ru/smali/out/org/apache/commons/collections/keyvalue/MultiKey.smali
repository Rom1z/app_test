.class public Lorg/apache/commons/collections/keyvalue/MultiKey;
.super Ljava/lang/Object;
.source "MultiKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3df875d977c7e505L


# instance fields
.field private transient hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_18

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    goto :goto_14

    :cond_12
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    :goto_14
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    return-void

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The array of keys must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateHashCode([Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_13

    aget-object v2, p1, v0

    if-eqz v2, :cond_10

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    iput v1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->hashCode:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getKey(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKeys()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->hashCode:I

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MultiKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
