.class Lcom/google/android/material/floatingactionbutton/AnimatorTracker;
.super Ljava/lang/Object;
.source "AnimatorTracker.java"


# instance fields
.field private currentAnimator:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCurrent()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onNextAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->cancelCurrent()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    return-void
.end method
