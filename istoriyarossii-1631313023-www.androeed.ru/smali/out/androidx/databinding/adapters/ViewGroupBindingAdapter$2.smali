.class final Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$end:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

.field final synthetic val$repeat:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

.field final synthetic val$start:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .registers 4

    iput-object p1, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$start:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

    iput-object p2, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$end:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

    iput-object p3, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$repeat:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$end:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$repeat:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Landroidx/databinding/adapters/ViewGroupBindingAdapter$2;->val$start:Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_7
    return-void
.end method
