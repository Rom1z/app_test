.class public Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;
    }
.end annotation


# instance fields
.field private mCornerType:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

.field private mDiameter:I

.field private mMargin:I

.field private mRadius:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ALL:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(IILcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method public constructor <init>(IILcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    iput p2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mCornerType:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v3, v3

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 11

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v3

    sub-float v4, p3, v4

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v4, v3

    sub-float/2addr p3, v4

    int-to-float v3, v3

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int v3, v1, v2

    int-to-float v3, v3

    int-to-float v1, v1

    int-to-float v2, v2

    sub-float/2addr p4, v2

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 9

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float/2addr p3, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 8

    iget v0, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    sub-float/2addr p4, v0

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$1;->$SwitchMap$com$online$languages$study$studymaster$adapters$RoundedCornersTransformation$CornerType:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mCornerType:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6c

    :pswitch_24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_3c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_4c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_6c

    :pswitch_5c
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float p4, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p4, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method

.method private drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 11

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    iget v2, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 10

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mDiameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->mCornerType:Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method
