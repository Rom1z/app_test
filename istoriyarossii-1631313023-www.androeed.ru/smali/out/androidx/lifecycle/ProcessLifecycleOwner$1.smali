.class Landroidx/lifecycle/ProcessLifecycleOwner$1;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded()V

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner$1;->this$0:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method
