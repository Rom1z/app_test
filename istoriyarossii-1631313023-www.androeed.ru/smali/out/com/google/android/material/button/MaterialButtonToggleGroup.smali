.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButtonToggleGroup"


# instance fields
.field private checkedId:I

.field private final checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

.field private childOrder:[Ljava/lang/Integer;

.field private final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCornerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field private selectionRequired:Z

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/google/android/material/R$attr;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    new-instance p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    sget p3, Lcom/google/android/material/R$styleable;->MaterialButtonToggleGroup_selectionRequired:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/button/MaterialButtonToggleGroup;Landroid/view/View;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getIndexWithinVisibleButtons(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return p0
.end method

.method static synthetic access$502(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    add-int/lit8 v1, v0, 0x1

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_44

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_39

    invoke-static {v4, v6}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    neg-int v3, v3

    invoke-static {v4, v3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_3e

    :cond_39
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v3, v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_3e
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_44
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->resetChildMargins(I)V

    return-void
.end method

.method private buildLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    return-object p1

    :cond_b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private checkForced(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private getChildButton(I)Lcom/google/android/material/button/MaterialButton;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    return-object p1
.end method

.method private getFirstVisibleChildIndex()I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private getIndexWithinVisibleButtons(Landroid/view/View;)I
    .registers 6

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_28

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_25

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 v2, v2, 0x1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_28
    return v1
.end method

.method private getLastVisibleChildIndex()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method private getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .registers 6

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    if-ne p2, p3, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-ne p1, p2, :cond_22

    if-eqz v1, :cond_1d

    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->start(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object p1

    goto :goto_21

    :cond_1d
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->top(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object p1

    :goto_21
    return-object p1

    :cond_22
    if-ne p1, p3, :cond_30

    if-eqz v1, :cond_2b

    invoke-static {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->end(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object p1

    goto :goto_2f

    :cond_2b
    invoke-static {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottom(Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object p1

    :goto_2f
    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method private getVisibleButtonCount()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_18

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return v1
.end method

.method private isChildVisible(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private resetChildMargins(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_2b

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_21

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    :cond_21
    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-static {p1, v2}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2b
    :goto_2b
    return-void
.end method

.method private setCheckedId(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    :cond_13
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_e
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    return-void
.end method

.method private static updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    return-void

    :cond_7
    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    return-void
.end method

.method private updateCheckedStates(IZ)Z
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    return v3

    :cond_16
    if-eqz p2, :cond_3e

    iget-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz p2, :cond_3e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    goto :goto_27

    :cond_3e
    return v2
.end method

.method private updateChildOrder()V
    .registers 7

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_1d

    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_c

    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Child views must be of type MaterialButton."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p2

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public check(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    return-void
.end method

.method public clearChecked()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildOrder()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedButtonId()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    if-eqz p1, :cond_f

    array-length v0, p1

    if-lt p2, v0, :cond_8

    goto :goto_f

    :cond_8
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_f
    :goto_f
    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Child order wasn\'t updated"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public isSelectionRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleSelection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    :cond_b
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isSingleSelection()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x2

    :goto_15
    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lcom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->removeOnCheckedChangeListener(Lcom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    :cond_13
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1e

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    return-void
.end method

.method public removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSelectionRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    return-void
.end method

.method public setSingleSelection(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    :cond_9
    return-void
.end method

.method public uncheck(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method updateChildShapes()V
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I

    move-result v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_35

    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1c

    goto :goto_32

    :cond_1c
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v5

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getNewCornerData(III)Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->updateBuilderWithCornerData(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V

    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_35
    return-void
.end method
