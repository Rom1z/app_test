.class Landroidx/recyclerview/widget/AsyncListUtil$2;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mFirstRequiredTileStart:I

.field private mGeneration:I

.field private mItemCount:I

.field private mLastRequiredTileStart:I

.field final mLoadedTiles:Landroid/util/SparseBooleanArray;

.field private mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .registers 2

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private acquireTile()Landroidx/recyclerview/widget/TileList$Tile;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    return-object v0

    :cond_9
    new-instance v0, Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method private addTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    iget v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    return-void
.end method

.method private flushTileCache(I)V
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result v0

    :goto_8
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-lt v1, v0, :cond_3f

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    sub-int/2addr v3, v1

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    sub-int v5, v2, v5

    if-lez v3, :cond_35

    if-ge v3, v5, :cond_31

    const/4 v6, 0x2

    if-ne p1, v6, :cond_35

    :cond_31
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    goto :goto_8

    :cond_35
    if-lez v5, :cond_3f

    if-lt v3, v5, :cond_3b

    if-ne p1, v4, :cond_3f

    :cond_3b
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->removeTile(I)V

    goto :goto_8

    :cond_3f
    return-void
.end method

.method private getTileStart(I)I
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private isTileLoaded(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BKGR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncListUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeTile(I)V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    return-void
.end method

.method private requestTiles(IIIZ)V
    .registers 8

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_17

    if-eqz p4, :cond_9

    add-int v1, p2, p1

    sub-int/2addr v1, v0

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v2, v1, p3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_17
    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .registers 7

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->isTileLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->acquireTile()Landroidx/recyclerview/widget/TileList$Tile;

    move-result-object v0

    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget v3, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {p1, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->flushTileCache(I)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->addTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    return-void
.end method

.method public recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iget-object v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v0, p1, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mRecycledRoot:Landroidx/recyclerview/widget/TileList$Tile;

    return-void
.end method

.method public refresh(I)V
    .registers 4

    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLoadedTiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->refreshData()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mGeneration:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mItemCount:I

    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    return-void
.end method

.method public updateRange(IIIII)V
    .registers 7

    if-le p1, p2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result p1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result p2

    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    invoke-direct {p0, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->getTileStart(I)I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_2b

    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    invoke-direct {p0, p1, p2, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mLastRequiredTileStart:I

    invoke-direct {p0, p2, p1, p5, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    goto :goto_38

    :cond_2b
    invoke-direct {p0, p1, p3, p5, p4}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->mFirstRequiredTileStart:I

    iget-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$2;->this$0:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p3, p3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    sub-int/2addr p1, p3

    invoke-direct {p0, p2, p1, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$2;->requestTiles(IIIZ)V

    :goto_38
    return-void
.end method
