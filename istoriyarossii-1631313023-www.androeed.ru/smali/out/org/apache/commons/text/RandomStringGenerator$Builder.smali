.class public Lorg/apache/commons/text/RandomStringGenerator$Builder;
.super Ljava/lang/Object;
.source "RandomStringGenerator.java"

# interfaces
.implements Lorg/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/RandomStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/Builder<",
        "Lorg/apache/commons/text/RandomStringGenerator;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = 0x0

.field public static final DEFAULT_MAXIMUM_CODE_POINT:I = 0x10ffff

.field public static final DEFAULT_MINIMUM_CODE_POINT:I


# instance fields
.field private inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private maximumCodePoint:I

.field private minimumCodePoint:I

.field private random:Lorg/apache/commons/text/TextRandomProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    const v0, 0x10ffff

    iput v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/text/RandomStringGenerator$Builder;->build()Lorg/apache/commons/text/RandomStringGenerator;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/text/RandomStringGenerator;
    .registers 8

    new-instance v6, Lorg/apache/commons/text/RandomStringGenerator;

    iget v1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    iget v2, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    iget-object v3, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    iget-object v4, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/apache/commons/text/TextRandomProvider;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Lorg/apache/commons/text/RandomStringGenerator$1;)V

    return-object v6
.end method

.method public varargs filteredBy([Lorg/apache/commons/text/CharacterPredicate;)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .registers 6

    if-eqz p1, :cond_24

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_24

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    goto :goto_15

    :cond_12
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :goto_15
    array-length v0, p1

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_23

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    return-object p0

    :cond_24
    :goto_24
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->inclusivePredicates:Ljava/util/Set;

    return-object p0
.end method

.method public usingRandom(Lorg/apache/commons/text/TextRandomProvider;)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->random:Lorg/apache/commons/text/TextRandomProvider;

    return-object p0
.end method

.method public withinRange(II)Lorg/apache/commons/text/RandomStringGenerator$Builder;
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "Minimum code point %d is larger than maximum code point %d"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    int-to-long v3, p1

    const-string v5, "Minimum code point %d is negative"

    invoke-static {v2, v5, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    const v2, 0x10ffff

    if-gt p2, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    int-to-long v1, p2

    const-string v3, "Value %d is larger than Character.MAX_CODE_POINT."

    invoke-static {v0, v3, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->minimumCodePoint:I

    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator$Builder;->maximumCodePoint:I

    return-object p0
.end method
