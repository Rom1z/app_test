.class public abstract Landroidx/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 2

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p0

    return-object p0
.end method

.method public static createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 2

    new-instance v0, Landroidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/OrientationHelper$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .registers 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
