.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[F[FII)I
    .registers 8

    aget v0, p0, p4

    move v1, p3

    :goto_3
    if-ge p3, p4, :cond_11

    aget v2, p0, p3

    if-gt v2, v0, :cond_e

    invoke-static {p0, p1, p2, v1, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_11
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    return v1
.end method

.method static sort([I[F[FII)V
    .registers 11

    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 p4, 0x1

    aput p3, v0, p4

    const/4 p3, 0x2

    :cond_c
    :goto_c
    if-lez p3, :cond_30

    add-int/lit8 p3, p3, -0x1

    aget v1, v0, p3

    add-int/lit8 p3, p3, -0x1

    aget v2, v0, p3

    if-ge v1, v2, :cond_c

    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    add-int/lit8 v5, v3, -0x1

    aput v5, v0, p3

    add-int/lit8 p3, v4, 0x1

    aput v1, v0, v4

    add-int/lit8 v1, p3, 0x1

    aput v2, v0, p3

    add-int/lit8 p3, v1, 0x1

    add-int/2addr v3, p4

    aput v3, v0, v1

    goto :goto_c

    :cond_30
    return-void
.end method

.method private static swap([I[F[FII)V
    .registers 7

    aget v0, p0, p3

    aget v1, p0, p4

    aput v1, p0, p3

    aput v0, p0, p4

    aget p0, p1, p3

    aget v0, p1, p4

    aput v0, p1, p3

    aput p0, p1, p4

    aget p0, p2, p3

    aget p1, p2, p4

    aput p1, p2, p3

    aput p0, p2, p4

    return-void
.end method
