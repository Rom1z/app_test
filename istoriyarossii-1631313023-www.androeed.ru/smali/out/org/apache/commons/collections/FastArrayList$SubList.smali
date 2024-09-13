.class Lorg/apache/commons/collections/FastArrayList$SubList;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;
    }
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private first:I

.field private last:I

.field private final synthetic this$0:Lorg/apache/commons/collections/FastArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput p2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iput p3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    iget-object p1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .registers 3

    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method private get(Ljava/util/List;)Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_11

    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    goto :goto_3a

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_28

    throw p1

    :cond_2b
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_30
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0

    :goto_3a
    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_23
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_33
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    if-eqz p1, :cond_2a

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_2a
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_26
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return v2

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public clear()V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    goto :goto_38

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2e
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    :goto_38
    return-void

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_31
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_23
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_33
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_26
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    :cond_26
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw p1

    :cond_31
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw p1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_14

    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    add-int/2addr v2, p1

    add-int/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    return-object v0

    :cond_14
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw p1
.end method
