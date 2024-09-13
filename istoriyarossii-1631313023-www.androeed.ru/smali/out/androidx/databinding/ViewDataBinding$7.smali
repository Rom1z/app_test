.class Landroidx/databinding/ViewDataBinding$7;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .registers 2

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/databinding/ViewDataBinding;->access$202(Landroidx/databinding/ViewDataBinding;Z)Z

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3e

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->access$300()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_38

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->access$500()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_38
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$7;->this$0:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
