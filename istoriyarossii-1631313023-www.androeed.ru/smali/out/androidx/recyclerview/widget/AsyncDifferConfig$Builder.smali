.class public final Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public build()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1b

    sget-object v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_12

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    sget-object v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1b

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    new-instance v0, Landroidx/recyclerview/widget/AsyncDifferConfig;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-object v0
.end method

.method public setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/recyclerview/widget/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/recyclerview/widget/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
