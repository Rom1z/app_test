.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$CommandProcessor;,
        Landroidx/core/app/JobIntentService$CompatWorkItem;,
        Landroidx/core/app/JobIntentService$GenericWorkItem;,
        Landroidx/core/app/JobIntentService$JobWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl;,
        Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$CompatJobEngine;,
        Landroidx/core/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_1b

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    :goto_1b
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .registers 6

    if-eqz p3, :cond_15

    sget-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_6
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    invoke-virtual {p0, p3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;
    .registers 7

    sget-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$WorkEnqueuer;

    if-nez v1, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_20

    if-eqz p2, :cond_18

    new-instance p2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_25

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p2, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_25
    move-object v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-object v1
.end method


# virtual methods
.method dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .registers 4

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/core/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/JobIntentService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    :cond_1f
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method doStopCurrentWork()Z
    .registers 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService$CommandProcessor;->cancel(Z)Z

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .registers 4

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-nez v0, :cond_1e

    new-instance v0, Landroidx/core/app/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$CommandProcessor;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    :cond_14
    iget-object p1, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1e
    return-void
.end method

.method public isStopped()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroidx/core/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_14

    new-instance v0, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    goto :goto_26

    :cond_14
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    :goto_26
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz p2, :cond_28

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    iget-object p2, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_c
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_13

    goto :goto_18

    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_18
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/JobIntentService$CompatWorkItem;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    const/4 p1, 0x2

    return p1
.end method

.method public onStopCurrentWork()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .registers 3

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    goto :goto_20

    :cond_17
    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1

    :cond_25
    :goto_25
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    return-void
.end method
