.class public final Lcom/google/android/material/transition/MaterialArcMotion;
.super Landroidx/transition/PathMotion;
.source "MaterialArcMotion.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    return-void
.end method

.method private static getControlPoint(FFFF)Landroid/graphics/PointF;
    .registers 5

    cmpl-float v0, p1, p3

    if-lez v0, :cond_a

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_a
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p0, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/transition/MaterialArcMotion;->getControlPoint(FFFF)Landroid/graphics/PointF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-object v0
.end method
