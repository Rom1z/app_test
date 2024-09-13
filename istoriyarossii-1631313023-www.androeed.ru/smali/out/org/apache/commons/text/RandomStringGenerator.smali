.class public final Lorg/apache/commons/text/RandomStringGenerator;
.super Ljava/lang/Object;
.source "RandomStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/RandomStringGenerator$Builder;
    }
.end annotation


# instance fields
.field private final inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final maximumCodePoint:I

.field private final minimumCodePoint:I

.field private final random:Lorg/apache/commons/text/TextRandomProvider;


# direct methods
.method private constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;",
            "Lorg/apache/commons/text/TextRandomProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    iput-object p3, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    iput-object p4, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    return-void
.end method

.method synthetic constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Lorg/apache/commons/text/RandomStringGenerator$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;)V

    return-void
.end method

.method private generateRandomNumber(II)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    if-eqz v0, :cond_d

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p2}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    :cond_d
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public generate(I)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    int-to-long v3, p1

    const-string v5, "Length %d is smaller than zero."

    invoke-static {v2, v5, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_17
    iget p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    iget v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v5

    if-eqz v5, :cond_53

    const/16 v6, 0x12

    if-eq v5, v6, :cond_53

    const/16 v6, 0x13

    if-eq v5, v6, :cond_53

    iget-object v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    if-eqz v5, :cond_4d

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/text/CharacterPredicate;

    invoke-interface {v6, p1}, Lorg/apache/commons/text/CharacterPredicate;->test(I)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    if-nez v5, :cond_4d

    goto :goto_53

    :cond_4d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    :cond_53
    :goto_53
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_17

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
