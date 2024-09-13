.class public final Lcom/google/android/gms/internal/ads/zzahm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private zzadr:Ljava/lang/String;

.field private final zzclj:Lcom/google/android/gms/internal/ads/zzagz;

.field private final zzclk:Lcom/google/android/gms/internal/ads/zzahj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzagz;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahj;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclk:Lcom/google/android/gms/internal/ads/zzahj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzlw;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    return-void

    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahm;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlw;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahk;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzagz;->zza(Lcom/google/android/gms/internal/ads/zzahk;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18
    .catchall {:try_start_9 .. :try_end_17} :catchall_20

    goto :goto_1e

    :catch_18
    move-exception p1

    :try_start_19
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw p1
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahm;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public final destroy(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclk:Lcom/google/android/gms/internal/ads/zzahj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzahj;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v1, :cond_f

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    return-void

    :cond_f
    :try_start_f
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzagz;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17
    .catchall {:try_start_f .. :try_end_16} :catchall_1f

    goto :goto_1d

    :catch_17
    move-exception p1

    :try_start_18
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagz;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclk:Lcom/google/android/gms/internal/ads/zzahj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahj;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzadr:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isLoaded()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    return v2

    :cond_a
    :try_start_a
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagz;->isLoaded()Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_10
    .catchall {:try_start_a .. :try_end_e} :catchall_18

    :try_start_e
    monitor-exit v0

    return v1

    :catch_10
    move-exception v1

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3

    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzay()Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzlw;)V

    return-void
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahm;->pause(Landroid/content/Context;)V

    return-void
.end method

.method public final pause(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    return-void

    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzagz;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11
    .catchall {:try_start_9 .. :try_end_10} :catchall_19

    goto :goto_17

    :catch_11
    move-exception p1

    :try_start_12
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahm;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public final resume(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    return-void

    :cond_9
    :try_start_9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzagz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11
    .catchall {:try_start_9 .. :try_end_10} :catchall_19

    goto :goto_17

    :catch_11
    move-exception p1

    :try_start_12
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public final setImmersiveMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-eqz v1, :cond_11

    :try_start_7
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzagz;->setImmersiveMode(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_13

    goto :goto_11

    :catch_b
    move-exception p1

    :try_start_c
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclk:Lcom/google/android/gms/internal/ads/zzahj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzahj;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1a

    if-eqz p1, :cond_18

    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclk:Lcom/google/android/gms/internal/ads/zzahj;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zza(Lcom/google/android/gms/internal/ads/zzahe;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    goto :goto_18

    :catch_12
    move-exception p1

    :try_start_13
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzadr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_15

    if-eqz v1, :cond_13

    :try_start_9
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzagz;->setUserId(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final show()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->zzclj:Lcom/google/android/gms/internal/ads/zzagz;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagz;->show()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    goto :goto_13

    :catch_d
    move-exception v1

    :try_start_e
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method
