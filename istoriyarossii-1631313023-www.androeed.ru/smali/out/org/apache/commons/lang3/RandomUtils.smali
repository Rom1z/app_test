.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextBoolean()Z
    .registers 1

    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public static nextBytes(I)[B
    .registers 4

    const/4 v0, 0x0

    if-ltz p0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Count cannot be negative."

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array p0, p0, [B

    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextBytes([B)V

    return-object p0
.end method

.method public static nextDouble()D
    .registers 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-double v2, p2, p0

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-double v0, p0, p2

    if-nez v0, :cond_24

    return-wide p0

    :cond_24
    sub-double/2addr p2, p0

    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double p2, p2, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method public static nextFloat()F
    .registers 2

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public static nextFloat(FF)F
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p1, p0

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmpl-float v0, p0, p1

    if-nez v0, :cond_23

    return p0

    :cond_23
    sub-float/2addr p1, p0

    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    return p0
.end method

.method public static nextInt()I
    .registers 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public static nextInt(II)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ne p0, p1, :cond_1c

    return p0

    :cond_1c
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static nextLong()J
    .registers 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p2, p0

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Start value must be smaller or equal to end value."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Both range values must be non-negative."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    cmp-long v0, p0, p2

    if-nez v0, :cond_24

    return-wide p0

    :cond_24
    long-to-double p0, p0

    long-to-double p2, p2

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method
