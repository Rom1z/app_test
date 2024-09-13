.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private blackColor:[Z

.field private calculatedHashCode:Z

.field private data:[Ljava/lang/Comparable;

.field private hashcodeValue:I

.field private leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field private rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    new-array p1, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    new-array p1, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    new-array p1, v0, [Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    new-array p1, v0, [Z

    fill-array-data p1, :array_24

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    iput-boolean v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    return-void

    :array_24
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getLeft(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->isBlack(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setRed(I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->swapColors(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getRight(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getParent(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->setBlack(I)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->isRed(I)Z

    move-result p0

    return p0
.end method

.method private copyColor(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    iget-object p1, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean p1, p1, p2

    aput-boolean p1, v0, p2

    return-void
.end method

.method private getData(I)Ljava/lang/Comparable;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getLeft(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getParent(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getRight(I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private isBlack(I)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method private isRed(I)Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean p1, v0, p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private setBlack(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method

.method private setLeft(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->leftNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    return-void
.end method

.method private setParent(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->parentNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    return-void
.end method

.method private setRed(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method private setRight(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->rightNode:[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    aput-object p1, v0, p2

    return-void
.end method

.method private swapColors(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v1, v0, p2

    iget-object p1, p1, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->blackColor:[Z

    aget-boolean v2, p1, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    aget-boolean v1, p1, p2

    aget-boolean v2, v0, p2

    xor-int/2addr v1, v2

    aput-boolean v1, p1, p2

    aget-boolean v1, v0, p2

    aget-boolean p1, p1, p2

    xor-int/2addr p1, v1

    aput-boolean p1, v0, p2

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v1, v1, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->data:[Ljava/lang/Comparable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    iput-boolean v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->calculatedHashCode:Z

    :cond_1b
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->hashcodeValue:I

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Map.Entry.setValue is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
