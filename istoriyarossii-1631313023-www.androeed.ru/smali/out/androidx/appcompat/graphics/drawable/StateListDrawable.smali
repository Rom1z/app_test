.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawable"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    :cond_8
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_8
    :goto_8
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_84

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_17

    const/4 v5, 0x3

    if-eq v3, v5, :cond_84

    :cond_17
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1b

    goto :goto_8

    :cond_1b
    if-gt v4, v1, :cond_8

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_8

    :cond_2a
    sget-object v3, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    invoke-static {p2, p5, p4, v3}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    sget v6, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem_android_drawable:I

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_42

    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v4

    invoke-virtual {v4, p1, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_42
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v4, :cond_80

    :goto_4b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_53

    goto :goto_4b

    :cond_53
    if-ne v4, v5, :cond_65

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_60

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_80

    :cond_60
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_80

    :cond_65
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    :goto_80
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_8

    :cond_84
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_11

    iget v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mChangingConfigurations:I

    :cond_11
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_variablePadding:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mVariablePadding:Z

    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_constantSize:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mConstantSize:Z

    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mEnterFadeDuration:I

    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mExitFadeDuration:I

    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_dither:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mDither:Z

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p2, :cond_e

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    :cond_e
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method clearMutated()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .registers 4

    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .registers 10

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v0, :cond_2b

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_28

    const v6, 0x10100d0

    if-eq v5, v6, :cond_28

    const v6, 0x1010199

    if-eq v5, v6, :cond_28

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_25

    :cond_24
    neg-int v5, v5

    :goto_25
    aput v5, v1, v4

    move v4, v6

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2b
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method getStateCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method getStateDrawableIndex([I)I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    return p1
.end method

.method getStateListState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method getStateSet(I)[I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setVisible(ZZ)Z

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->updateDensity(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_12

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    :cond_12
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 4

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    if-gez p1, :cond_14

    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result p1

    :cond_14
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_b

    check-cast p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    :cond_b
    return-void
.end method
