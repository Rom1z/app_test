.class Landroidx/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroidx/transition/WindowIdApi18;

    if-eqz v0, :cond_12

    check-cast p1, Landroidx/transition/WindowIdApi18;

    iget-object p1, p1, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    iget-object v0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {p1, v0}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {v0}, Landroid/view/WindowId;->hashCode()I

    move-result v0

    return v0
.end method
