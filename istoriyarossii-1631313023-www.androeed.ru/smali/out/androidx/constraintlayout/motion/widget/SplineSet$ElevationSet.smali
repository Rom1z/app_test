.class Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;
.super Landroidx/constraintlayout/motion/widget/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElevationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet;-><init>()V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;->get(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    :cond_d
    return-void
.end method
