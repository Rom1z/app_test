.class public Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "CircularRevealCardView.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    :goto_b
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    return-void
.end method
