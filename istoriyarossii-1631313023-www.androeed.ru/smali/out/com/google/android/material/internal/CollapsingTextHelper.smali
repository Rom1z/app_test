.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final TAG:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private collapsedShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextBlend:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFirstLineDrawX:F

.field private expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

.field private expandedFraction:F

.field private expandedShadowColor:Landroid/content/res/ColorStateList;

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextBlend:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private isRtl:Z

.field private maxLines:I

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;

.field private textLayout:Landroid/text/StaticLayout;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textToDrawCollapsed:Ljava/lang/CharSequence;

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1a
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static blendColors(IIF)I
    .registers 8

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .registers 14

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    :cond_1e
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    iget-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_6c

    if-eq v5, v6, :cond_5d

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iput v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_73

    :cond_5d
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_73

    :cond_6c
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    :goto_73
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_8e

    if-eq v4, v9, :cond_85

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_99

    :cond_85
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_99

    :cond_8e
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    :goto_99
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_a8

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_a9

    :cond_a8
    const/4 v1, 0x0

    :goto_a9
    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b8

    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v11, v4, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_b9

    :cond_b8
    const/4 v4, 0x0

    :goto_b9
    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v11, :cond_ca

    iget v12, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    if-le v12, v10, :cond_ca

    iget-boolean v12, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-nez v12, :cond_ca

    invoke-virtual {v11}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    :cond_ca
    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    if-eqz v11, :cond_d2

    invoke-virtual {v11, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_d2
    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFirstLineDrawX:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_fe

    if-eq v3, v6, :cond_ee

    div-float/2addr v1, v8

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_105

    :cond_ee
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_105

    :cond_fe
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    :goto_105
    and-int v1, v2, v5

    if-eq v1, v10, :cond_11c

    if-eq v1, v9, :cond_113

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_127

    :cond_113
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_127

    :cond_11c
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    :goto_127
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isDefaultIsRtl()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_b

    :cond_9
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_b
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private calculateOffsets(F)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->interpolateBounds(F)V

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawX:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextBlend(F)V

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextBlend(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_62

    :cond_59
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_62
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->blendColors(IIF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2f

    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_2d

    iput-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_5f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_5f

    :cond_2f
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3b

    iput-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    invoke-static {p1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_45

    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    goto :goto_4a

    :cond_45
    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    :goto_4a
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5c

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_5d

    :cond_5c
    move v0, v1

    :goto_5d
    move p1, v2

    move v1, v6

    :goto_5f
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_78

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_73

    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    if-nez v2, :cond_73

    if-eqz v1, :cond_71

    goto :goto_73

    :cond_71
    const/4 v1, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v1, 0x1

    :goto_74
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    iput-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    :cond_78
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7e

    if-eqz v1, :cond_b6

    :cond_7e
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_95

    const/4 v4, 0x1

    :cond_95
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result p1

    if-eqz p1, :cond_a8

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    :cond_a8
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-direct {p0, v5, v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->createStaticLayout(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    :cond_b6
    return-void
.end method

.method private clearTexture()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method private createStaticLayout(IFZ)Landroid/text/StaticLayout;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    float-to-int p2, p2

    invoke-static {v0, v1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_26
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_36

    :catch_27
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CollapsingTextHelper"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_36
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method private drawMultinlineTransition(Landroid/graphics/Canvas;FF)V
    .registers 16

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    int-to-float v1, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v10, p2

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u2026"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_56
    move-object v6, p2

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v7, 0x0

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureExpandedTexture()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4a

    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_4a

    if-gtz v1, :cond_2a

    goto :goto_4a

    :cond_2a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4a

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    :cond_4a
    :goto_4a
    return-void
.end method

.method private getCollapsedTextLeftBound(II)F
    .registers 5

    const/16 v0, 0x11

    if-eq p2, v0, :cond_40

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_40

    :cond_a
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_2b

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_16

    goto :goto_2b

    :cond_16
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result p2

    sub-float/2addr p1, p2

    goto :goto_2a

    :cond_25
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    :goto_2a
    return p1

    :cond_2b
    :goto_2b
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_3f

    :cond_35
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result p2

    sub-float/2addr p1, p2

    :goto_3f
    return p1

    :cond_40
    :goto_40
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v0

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method private getCollapsedTextRightBound(Landroid/graphics/RectF;II)F
    .registers 6

    const/16 v0, 0x11

    if-eq p3, v0, :cond_3a

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_3a

    :cond_a
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_28

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_16

    goto :goto_28

    :cond_16
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p2, :cond_20

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_27

    :cond_20
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result p2

    add-float/2addr p1, p2

    :goto_27
    return p1

    :cond_28
    :goto_28
    iget-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-eqz p2, :cond_34

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result p2

    add-float/2addr p1, p2

    goto :goto_39

    :cond_34
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    :goto_39
    return p1

    :cond_3a
    :goto_3a
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result p3

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    if-eqz v1, :cond_d

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method private getCurrentExpandedTextColor()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private getTextPaintExpanded(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private interpolateBounds(F)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .registers 2

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isDefaultIsRtl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .registers 4

    if-eqz p3, :cond_6

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_6
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .registers 6

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_12

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private setCollapsedTextBlend(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextBlend:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private setExpandedTextBlend(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextBlend:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private setInterpolatedTextSize(F)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateUsingTextSize(F)V

    sget-boolean p1, Lcom/google/android/material/internal/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->ensureExpandedTexture()V

    :cond_19
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private shouldDrawMultiline()Z
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->drawTitle:Z

    if-eqz v1, :cond_5e

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFirstLineDrawX:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawX:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->currentDrawY:F

    iget-boolean v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->useTexture:Z

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_31

    const/4 v3, 0x1

    :cond_31
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3c

    invoke-virtual {p1, v5, v5, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3c
    if-eqz v3, :cond_49

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_49
    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->shouldDrawMultiline()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-direct {p0, p1, v1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->drawMultinlineTransition(Landroid/graphics/Canvas;FF)V

    goto :goto_5b

    :cond_53
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_5b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5e
    return-void
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtl:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextLeftBound(II)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextRightBound(Landroid/graphics/RectF;II)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getCollapsedTextSize()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_7
    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextGravity()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    return v0
.end method

.method public getExpandedTextHeight()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getTextPaintExpanded(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getExpandedTextSize()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_7
    return-object v0
.end method

.method public getExpansionFraction()F
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    return v0
.end method

.method public getMaxLines()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method onBoundsChanged()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->drawTitle:Z

    return-void
.end method

.method public recalculate()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateBaseOffsets()V

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_16
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->onBoundsChanged()V

    :cond_13
    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .registers 5

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    :cond_13
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1e

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    :cond_1e
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_26

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowColor:Landroid/content/res/ColorStateList;

    :cond_26
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDx:F

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowDy:F

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedShadowRadius:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_39
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$1;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextGravity:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_b
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->boundsChanged:Z

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->onBoundsChanged()V

    :cond_13
    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .registers 5

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    :cond_13
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1e

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    :cond_1e
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_26

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowColor:Landroid/content/res/ColorStateList;

    :cond_26
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDx:F

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowDy:F

    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedShadowRadius:F

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    :cond_39
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v1, Lcom/google/android/material/internal/CollapsingTextHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$2;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFontCallback:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextGravity:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setExpandedTextSize(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedTextSize:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_b
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_9
    return-void
.end method

.method public setExpansionFraction(F)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->calculateCurrentOffsets()V

    :cond_12
    return-void
.end method

.method public setMaxLines(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    if-eq p1, v0, :cond_c

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->maxLines:I

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_c
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public final setState([I)Z
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->state:[I

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_a
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->clearTexture()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_15
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_c

    if-eqz p1, :cond_f

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_f
    return-void
.end method
