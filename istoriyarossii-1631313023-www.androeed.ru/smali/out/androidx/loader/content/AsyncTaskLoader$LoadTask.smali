.class final Landroidx/loader/content/AsyncTaskLoader$LoadTask;
.super Landroidx/loader/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/ModernAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroidx/loader/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroidx/loader/content/AsyncTaskLoader;)V
    .registers 3

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroidx/loader/content/ModernAsyncTask;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {p1}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Landroidx/core/os/OperationCanceledException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    throw p1
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnCancelled(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroidx/loader/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroidx/loader/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object p1, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p1

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->waiting:Z

    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->this$0:Landroidx/loader/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroidx/loader/content/AsyncTaskLoader;->executePendingTask()V

    return-void
.end method

.method public waitForLoader()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroidx/loader/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
