.class public Landroidx/recyclerview/widget/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;,
        Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    }
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
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_25

    :cond_21
    sget-object p1, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    :goto_25
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    return-void
.end method

.method private onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_6

    :cond_18
    if-eqz p2, :cond_1d

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public addListListener(Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    invoke-direct {p0, v0, p3}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeListListener(Landroidx/recyclerview/widget/AsyncListDiffer$ListListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v3, :cond_10

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_2b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v2, v1, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_2b
    if-nez v3, :cond_42

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v1, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_42
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroidx/recyclerview/widget/AsyncListDiffer$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/AsyncListDiffer$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
