.class public Landroidx/appcompat/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTypedValue:Landroid/util/TypedValue;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;
    .registers 6

    new-instance v0, Landroidx/appcompat/widget/TintTypedArray;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getColor(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getDimension(IF)F
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    return p1
.end method

.method public getDimensionPixelOffset(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public getDimensionPixelSize(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloat(IF)F
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_16

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    :cond_16
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-static {v0, p1, v1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public getFraction(IIIF)F
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    return p1
.end method

.method public getIndex(I)I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p1

    return p1
.end method

.method public getIndexCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getInteger(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public getLayoutDimension(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(II)I
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p1

    return p1

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_18

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    iget-object v1, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->type:I

    return p1
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result p1

    return p1
.end method

.method public getWrappedTypeArray()Landroid/content/res/TypedArray;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    return-object v0
.end method

.method public hasValue(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    return-object p1
.end method

.method public recycle()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
