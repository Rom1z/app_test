.class public final Landroidx/core/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# static fields
.field public static final END:I = 0x800005

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-static/range {p0 .. p7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    goto :goto_d

    :cond_a
    invoke-static/range {p0 .. p6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1, p2, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1, p2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_d
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0

    :cond_b
    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method
