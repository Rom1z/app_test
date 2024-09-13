.class public Lorg/apache/commons/collections/map/CaseInsensitiveMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "CaseInsensitiveMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x622e3a12dee99200L


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/CaseInsensitiveMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/CaseInsensitiveMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1e

    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_24
    sget-object p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-object p1
.end method
