.class public Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroidx/appcompat/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/AbsActionBarView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    iget v0, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-static {p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;->access$101(Landroidx/appcompat/widget/AbsActionBarView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/appcompat/widget/AbsActionBarView;->access$001(Landroidx/appcompat/widget/AbsActionBarView;I)V

    iput-boolean v0, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroidx/appcompat/widget/AbsActionBarView;

    iput-object p1, v0, Landroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput p2, p0, Landroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
