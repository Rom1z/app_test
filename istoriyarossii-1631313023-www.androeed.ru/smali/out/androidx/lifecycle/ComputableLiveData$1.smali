.class Landroidx/lifecycle/ComputableLiveData$1;
.super Landroidx/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .registers 3

    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v0, v0, Landroidx/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
