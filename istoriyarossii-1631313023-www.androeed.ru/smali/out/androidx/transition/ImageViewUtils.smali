.class Landroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static sDrawMatrixField:Ljava/lang/reflect/Field; = null

.field private static sDrawMatrixFieldFetched:Z = false

.field private static sTryHiddenAnimateTransform:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V

    goto/16 :goto_78

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_37

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_78

    :cond_37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_41

    invoke-static {p0, p1}, Landroidx/transition/ImageViewUtils;->hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    goto :goto_78

    :cond_41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    invoke-static {}, Landroidx/transition/ImageViewUtils;->fetchDrawMatrixField()V

    sget-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_70

    :try_start_5a
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;
    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_60} :catch_6f

    if-nez v1, :cond_6d

    :try_start_62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
    :try_end_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_67} :catch_6d

    :try_start_67
    sget-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_6c} :catch_6f

    goto :goto_70

    :catch_6d
    :cond_6d
    move-object v0, v1

    goto :goto_70

    :catch_6f
    nop

    :cond_70
    :goto_70
    if-eqz v0, :cond_75

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_75
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_78
    :goto_78
    return-void
.end method

.method private static fetchDrawMatrixField()V
    .registers 3

    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "mDrawMatrix"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ImageViewUtils;->sDrawMatrixField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_12

    :catch_12
    sput-boolean v0, Landroidx/transition/ImageViewUtils;->sDrawMatrixFieldFetched:Z

    :cond_14
    return-void
.end method

.method private static hiddenAnimateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 3

    sget-boolean v0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    if-eqz v0, :cond_b

    :try_start_4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->animateTransform(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p0, 0x0

    sput-boolean p0, Landroidx/transition/ImageViewUtils;->sTryHiddenAnimateTransform:Z

    :cond_b
    :goto_b
    return-void
.end method
