.class public Lorg/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide p0

    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static max(DDD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v2, p0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    aget-wide v1, p0, v1

    :goto_1d
    array-length v3, p0

    if-ge v0, v3, :cond_29

    aget-wide v3, p0, v0

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    return-wide v1
.end method

.method public static max(FF)F
    .registers 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    return p0

    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static max(FFF)F
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v2, p0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    aget v1, p0, v1

    :goto_1d
    array-length v2, p0

    if-ge v0, v2, :cond_29

    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    return v1
.end method

.method public static min(DD)D
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide p0

    :cond_e
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static min(DDD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v2, p0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    aget-wide v1, p0, v1

    :goto_1d
    array-length v3, p0

    if-ge v0, v3, :cond_29

    aget-wide v3, p0, v0

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    return-wide v1
.end method

.method public static min(FF)F
    .registers 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    return p0

    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static min(FFF)F
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    array-length v2, p0

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Array cannot be empty."

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    aget v1, p0, v1

    :goto_1d
    array-length v2, p0

    if-ge v0, v2, :cond_29

    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_29
    return v1
.end method
