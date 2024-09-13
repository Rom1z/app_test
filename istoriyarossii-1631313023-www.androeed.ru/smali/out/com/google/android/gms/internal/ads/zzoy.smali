.class public final Lcom/google/android/gms/internal/ads/zzoy;
.super Lcom/google/android/gms/internal/ads/zzpd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private zzbit:Lcom/google/android/gms/internal/ads/zzxz;

.field private zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

.field private zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

.field private final zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

.field private zzbix:Lcom/google/android/gms/internal/ads/zzoz;

.field private zzbiy:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzpb;)V
    .registers 14

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzpd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzacm;Lcom/google/android/gms/internal/ads/zzci;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzpb;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiy:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzpb;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzpb;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzpb;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzpb;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyf;Lcom/google/android/gms/internal/ads/zzpb;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzpb;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    return-void
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->cancelUnconfirmedClick()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzoz;->setClickConfirmingView(Landroid/view/View;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3c

    return-object p1

    :cond_d
    const/4 p1, 0x0

    :try_start_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p2, :cond_17

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzyf;->zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    goto :goto_30

    :cond_17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz p2, :cond_20

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzxz;->zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    goto :goto_30

    :cond_20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p2, :cond_2f

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzyc;->zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_28} :catch_29
    .catchall {:try_start_e .. :try_end_28} :catchall_3c

    goto :goto_30

    :catch_29
    move-exception p2

    :try_start_2a
    const-string v1, "Failed to call getAdChoicesContent"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    move-object p2, p1

    :goto_30
    if-eqz p2, :cond_3a

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    monitor-exit v0

    return-object p1

    :cond_3a
    monitor-exit v0

    return-object p1

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpd;->zzbjd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_18

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpa;->recordImpression()V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_59

    goto :goto_57

    :cond_18
    :try_start_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyf;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyf;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    :goto_29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpa;->recordImpression()V

    goto :goto_57

    :cond_2d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxz;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxz;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    goto :goto_29

    :cond_3f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p1, :cond_57

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyc;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyc;->recordImpression()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_50} :catch_51
    .catchall {:try_start_18 .. :try_end_50} :catchall_59

    goto :goto_29

    :catch_51
    move-exception p1

    :try_start_52
    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/os/Bundle;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_15

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpa;->onAdClicked()V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_62

    goto :goto_60

    :cond_15
    :try_start_15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzyf;->getOverrideClickHandling()Z

    move-result p2

    if-nez p2, :cond_2e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    :goto_2a
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpa;->onAdClicked()V

    goto :goto_60

    :cond_2e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz p2, :cond_44

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzxz;->getOverrideClickHandling()Z

    move-result p2

    if-nez p2, :cond_44

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    goto :goto_2a

    :cond_44
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p2, :cond_60

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzyc;->getOverrideClickHandling()Z

    move-result p2

    if-nez p2, :cond_60

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzyc;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_59} :catch_5a
    .catchall {:try_start_15 .. :try_end_59} :catchall_62

    goto :goto_2a

    :catch_5a
    move-exception p1

    :try_start_5b
    const-string p2, "Failed to call performClick"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_62

    throw p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter p4

    const/4 p5, 0x1

    :try_start_4
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiy:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzoy;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzoy;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_67

    :try_start_e
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz p5, :cond_22

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyf;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_62

    :cond_22
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz p5, :cond_3f

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzxz;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_62

    :cond_3f
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz p5, :cond_62

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzyc;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzyc;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_5b} :catch_5c
    .catchall {:try_start_e .. :try_end_5b} :catchall_67

    goto :goto_62

    :catch_5c
    move-exception p1

    :try_start_5d
    const-string p2, "Failed to call prepareAd"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiy:Z

    monitor-exit p4

    return-void

    :catchall_67
    move-exception p1

    monitor-exit p4
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_67

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzro;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Lcom/google/android/gms/internal/ads/zzro;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiv:Lcom/google/android/gms/internal/ads/zzyf;

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_2f

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbit:Lcom/google/android/gms/internal/ads/zzxz;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_2f

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiu:Lcom/google/android/gms/internal/ads/zzyc;

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzyc;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_26} :catch_29
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception p1

    goto :goto_31

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v0, "Failed to call untrackView"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    monitor-exit p2

    return-void

    :goto_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzoz;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzcr()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzcr()V

    :cond_7
    return-void
.end method

.method public final zzcs()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzcs()V

    :cond_7
    return-void
.end method

.method public final zzkj()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->zzkj()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpa;->zzcu()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final zzkk()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->zzkk()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiw:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpa;->zzcv()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final zzkl()V
    .registers 3

    const-string v0, "recordDownloadedImpression must be called on main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbje:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->zzkl()V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final zzkm()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbiy:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzkn()Lcom/google/android/gms/internal/ads/zzoz;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoy;->zzbix:Lcom/google/android/gms/internal/ads/zzoz;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzko()Lcom/google/android/gms/internal/ads/zzaqw;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzkp()V
    .registers 1

    return-void
.end method

.method public final zzkq()V
    .registers 1

    return-void
.end method
