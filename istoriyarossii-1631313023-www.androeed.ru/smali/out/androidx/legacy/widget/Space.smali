.class public Landroidx/legacy/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/legacy/widget/Space;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private static getDefaultSize2(II)I
    .registers 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_13

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_11

    goto :goto_17

    :cond_11
    move p0, p1

    goto :goto_17

    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_17
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result p1

    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/legacy/widget/Space;->setMeasuredDimension(II)V

    return-void
.end method
