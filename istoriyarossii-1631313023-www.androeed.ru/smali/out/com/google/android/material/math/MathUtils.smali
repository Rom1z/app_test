.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .registers 4

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .registers 7

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v0

    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p3

    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p4

    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p0

    invoke-static {v0, p3, p4, p0}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result p0

    return p0
.end method

.method public static floorMod(FI)F
    .registers 5

    int-to-float v0, p1

    div-float v1, p0, v0

    float-to-int v1, v1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v2, v2, v0

    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_18

    mul-int v0, v1, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p0

    if-eqz v0, :cond_18

    add-int/lit8 v1, v1, -0x1

    :cond_18
    mul-int v1, v1, p1

    int-to-float p1, v1

    sub-float/2addr p0, p1

    return p0
.end method

.method public static floorMod(II)I
    .registers 4

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_c

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_c

    add-int/lit8 v0, v0, -0x1

    :cond_c
    mul-int v0, v0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method public static geq(FFF)Z
    .registers 3

    add-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static lerp(FFF)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private static max(FFFF)F
    .registers 5

    cmpl-float v0, p0, p1

    if-lez v0, :cond_d

    cmpl-float v0, p0, p2

    if-lez v0, :cond_d

    cmpl-float v0, p0, p3

    if-lez v0, :cond_d

    goto :goto_1e

    :cond_d
    cmpl-float p0, p1, p2

    if-lez p0, :cond_17

    cmpl-float p0, p1, p3

    if-lez p0, :cond_17

    move p0, p1

    goto :goto_1e

    :cond_17
    cmpl-float p0, p2, p3

    if-lez p0, :cond_1d

    move p0, p2

    goto :goto_1e

    :cond_1d
    move p0, p3

    :goto_1e
    return p0
.end method
