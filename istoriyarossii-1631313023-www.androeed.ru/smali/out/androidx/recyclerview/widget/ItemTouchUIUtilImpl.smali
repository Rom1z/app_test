.class Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchUIUtil;


# static fields
.field static final INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxElevation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)F
    .registers 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1b

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_f

    goto :goto_18

    :cond_f
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_18

    move v1, v3

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return v1
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    sget v0, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_19
    sget v0, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p1, p6, :cond_27

    if-eqz p7, :cond_27

    sget p1, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_27

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->findMaxElevation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)F

    move-result p2

    add-float/2addr p2, p6

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    sget p2, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_27
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 8

    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .registers 2

    return-void
.end method
