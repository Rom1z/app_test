.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzacn:Lcom/google/android/gms/internal/ads/zzajv;

.field private zzcif:Z

.field private final zzcot:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzajk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcou:Ljava/lang/String;

.field private final zzcov:Ljava/lang/String;

.field private zzcow:J

.field private zzcox:J

.field private zzcoy:J

.field private zzcoz:J

.field private zzcpa:J

.field private zzcpb:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzajv;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcow:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcox:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcif:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoy:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcou:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcov:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcot:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzep()Lcom/google/android/gms/internal/ads/zzajv;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Lcom/google/android/gms/internal/ads/zzajv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcou:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcov:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcif:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpa:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcox:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoy:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoz:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcow:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcot:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajk;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_66
    const-string v3, "tclick"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public final zzh(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final zzi(J)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcow:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpa:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzajv;->zzb(Lcom/google/android/gms/internal/ads/zzjj;J)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final zzpm()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1c

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcox:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcox:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajv;->zzpm()V

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final zzpn()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_29

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajk;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajk;->zzpr()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcot:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoz:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoz:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajv;->zzpn()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public final zzpo()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcot:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcot:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajk;->zzpp()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajk;->zzpq()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public final zzy(Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcoy:J

    if-nez p1, :cond_1a

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcox:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final zzz(Z)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcpb:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzcif:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzacn:Lcom/google/android/gms/internal/ads/zzajv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajj;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method
