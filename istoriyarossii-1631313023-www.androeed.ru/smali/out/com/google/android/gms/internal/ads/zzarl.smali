.class public final Lcom/google/android/gms/internal/ads/zzarl;
.super Lcom/google/android/gms/internal/ads/zzlp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzato:Z

.field private zzatp:Z

.field private zzatq:Z

.field private zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

.field private final zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

.field private final zzded:Z

.field private final zzdee:Z

.field private final zzdef:F

.field private zzdeg:I

.field private zzdeh:Z

.field private zzdei:Z

.field private zzdej:F

.field private zzdek:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapw;FZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzato:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdef:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzded:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdee:Z

    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_e
    const-string v0, "action"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarm;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzarm;-><init>(Lcom/google/android/gms/internal/ads/zzarl;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getPlaybackState()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarl;->isCustomControlsEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_15

    :try_start_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatq:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdee:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :catchall_13
    move-exception v0

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit v1

    return v0

    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_13

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzded:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatp:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final isMuted()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final mute(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const-string p1, "mute"

    goto :goto_7

    :cond_5
    const-string p1, "unmute"

    :goto_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .registers 3

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .registers 3

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FIZF)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdej:F

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdei:Z

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdek:F

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p4, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_26

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzapw;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_36

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzarn;

    move-object v1, p4

    move-object v2, p0

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzarn;-><init>(Lcom/google/android/gms/internal/ads/zzarl;IIZZ)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method final synthetic zza(IIZZ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    :try_start_a
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeh:Z

    if-nez v3, :cond_12

    if-ne p2, v2, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    if-eqz p1, :cond_19

    if-ne p2, v2, :cond_19

    const/4 v5, 0x1

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    if-eqz p1, :cond_21

    const/4 v6, 0x2

    if-ne p2, v6, :cond_21

    const/4 v6, 0x1

    goto :goto_22

    :cond_21
    const/4 v6, 0x0

    :goto_22
    if-eqz p1, :cond_29

    const/4 p1, 0x3

    if-ne p2, p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    if-eq p3, p4, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    if-nez v3, :cond_33

    if-eqz v4, :cond_34

    :cond_33
    const/4 v1, 0x1

    :cond_34
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdeh:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    if-nez p3, :cond_3c

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_82

    return-void

    :cond_3c
    if-eqz v4, :cond_48

    :try_start_3e
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoStart()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_82

    goto :goto_48

    :catch_42
    move-exception p3

    :try_start_43
    const-string v1, "Unable to call onVideoStart()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_82

    :cond_48
    :goto_48
    if-eqz v5, :cond_56

    :try_start_4a
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoPlay()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_50
    .catchall {:try_start_4a .. :try_end_4f} :catchall_82

    goto :goto_56

    :catch_50
    move-exception p3

    :try_start_51
    const-string v1, "Unable to call onVideoPlay()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_82

    :cond_56
    :goto_56
    if-eqz v6, :cond_64

    :try_start_58
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoPause()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e
    .catchall {:try_start_58 .. :try_end_5d} :catchall_82

    goto :goto_64

    :catch_5e
    move-exception p3

    :try_start_5f
    const-string v1, "Unable to call onVideoPause()"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_82

    :cond_64
    :goto_64
    if-eqz p1, :cond_72

    :try_start_66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoEnd()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_6c
    .catchall {:try_start_66 .. :try_end_6b} :catchall_82

    goto :goto_72

    :catch_6c
    move-exception p1

    :try_start_6d
    const-string p3, "Unable to call onVideoEnd()"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_82

    :cond_72
    :goto_72
    if-eqz p2, :cond_80

    :try_start_74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzlr;->onVideoMute(Z)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_79} :catch_7a
    .catchall {:try_start_74 .. :try_end_79} :catchall_82

    goto :goto_80

    :catch_7a
    move-exception p1

    :try_start_7b
    const-string p2, "Unable to call onVideoMute()"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_82

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlr;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzmu;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzato:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzato:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatp:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatp:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatq:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzatq:Z

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_3c

    const-string v0, "initialState"

    const-string v1, "muteStart"

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzato:Z

    if-eqz v2, :cond_1b

    const-string v2, "1"

    goto :goto_1d

    :cond_1b
    const-string v2, "0"

    :goto_1d
    const-string v3, "customControlsRequested"

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatp:Z

    if-eqz v4, :cond_26

    const-string v4, "1"

    goto :goto_28

    :cond_26
    const-string v4, "0"

    :goto_28
    const-string v5, "clickToExpandRequested"

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzmu;->zzatq:Z

    if-eqz p1, :cond_31

    const-string p1, "1"

    goto :goto_33

    :cond_31
    const-string p1, "0"

    :goto_33
    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final zzim()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdef:F

    return v0
.end method

.method public final zzin()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdej:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzio()Lcom/google/android/gms/internal/ads/zzlr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method final synthetic zzo(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzcyg:Lcom/google/android/gms/internal/ads/zzapw;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzapw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
