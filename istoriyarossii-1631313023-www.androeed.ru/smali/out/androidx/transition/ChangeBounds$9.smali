.class Landroidx/transition/ChangeBounds$9;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Landroidx/transition/ChangeBounds$9;->this$0:Landroidx/transition/ChangeBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .registers 3

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_a
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .registers 3

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .registers 3

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    return-void
.end method
