.class public final Lcom/google/android/material/transition/SlideDistanceProvider;
.super Ljava/lang/Object;
.source "SlideDistanceProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/SlideDistanceProvider$GravityFlag;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTANCE:I = -0x1


# instance fields
.field private slideDistance:I

.field private slideEdge:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    return-void
.end method

.method private static createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_62

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5b

    const/16 v0, 0x30

    if-eq p2, v0, :cond_54

    const/16 v0, 0x50

    if-eq p2, v0, :cond_4e

    const v0, 0x800003

    if-eq p2, v0, :cond_3f

    const v0, 0x800005

    if-ne p2, v0, :cond_28

    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_22

    neg-int p0, p3

    int-to-float p0, p0

    goto :goto_23

    :cond_22
    int-to-float p0, p3

    :goto_23
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slide direction: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_47

    int-to-float p0, p3

    goto :goto_49

    :cond_47
    neg-int p0, p3

    int-to-float p0, p0

    :goto_49
    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_4e
    int-to-float p0, p3

    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_54
    neg-int p0, p3

    int-to-float p0, p0

    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_5b
    neg-int p0, p3

    int-to-float p0, p0

    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_62
    int-to-float p0, p3

    invoke-static {p1, p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_61

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5b

    const/16 v0, 0x30

    if-eq p2, v0, :cond_55

    const/16 v0, 0x50

    if-eq p2, v0, :cond_4e

    const v0, 0x800003

    if-eq p2, v0, :cond_3f

    const v0, 0x800005

    if-ne p2, v0, :cond_28

    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_21

    int-to-float p0, p3

    goto :goto_23

    :cond_21
    neg-int p0, p3

    int-to-float p0, p0

    :goto_23
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid slide direction: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    invoke-static {p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->isRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_48

    neg-int p0, p3

    int-to-float p0, p0

    goto :goto_49

    :cond_48
    int-to-float p0, p3

    :goto_49
    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_4e
    neg-int p0, p3

    int-to-float p0, p0

    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_55
    int-to-float p0, p3

    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_5b
    int-to-float p0, p3

    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_61
    neg-int p0, p3

    int-to-float p0, p0

    invoke-static {p1, v1, p0}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createTranslationXAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static createTranslationYAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 8

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private getSlideDistanceOrDefault(Landroid/content/Context;)I
    .registers 4

    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_transition_shared_axis_slide_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private static isRtl(Landroid/view/View;)Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationAppearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .registers 5

    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->getSlideDistanceOrDefault(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/transition/SlideDistanceProvider;->createTranslationDisappearAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getSlideDistance()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    return v0
.end method

.method public getSlideEdge()I
    .registers 2

    iget v0, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    return v0
.end method

.method public setSlideDistance(I)V
    .registers 3

    if-ltz p1, :cond_5

    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideDistance:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSlideEdge(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/transition/SlideDistanceProvider;->slideEdge:I

    return-void
.end method
