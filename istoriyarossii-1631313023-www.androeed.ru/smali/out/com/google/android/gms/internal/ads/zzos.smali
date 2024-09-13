.class public final Lcom/google/android/gms/internal/ads/zzos;
.super Lcom/google/android/gms/internal/ads/zzqt;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzbie:Lcom/google/android/gms/internal/ads/zzoj;

.field private zzbif:Lcom/google/android/gms/internal/ads/zzlo;

.field private zzbig:Landroid/view/View;

.field private zzbij:Lcom/google/android/gms/internal/ads/zzoz;

.field private final zzbio:Ljava/lang/String;

.field private final zzbip:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbiq:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzoj;",
            "Lcom/google/android/gms/internal/ads/zzlo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqt;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbio:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbip:Landroidx/collection/SimpleArrayMap;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbiq:Landroidx/collection/SimpleArrayMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbie:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbif:Lcom/google/android/gms/internal/ads/zzlo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbig:Landroid/view/View;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzos;)Lcom/google/android/gms/internal/ads/zzoz;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzos;Lcom/google/android/gms/internal/ads/zzoz;)Lcom/google/android/gms/internal/ads/zzoz;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    return-object p1
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzou;-><init>(Lcom/google/android/gms/internal/ads/zzos;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbif:Lcom/google/android/gms/internal/ads/zzlo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbig:Landroid/view/View;

    return-void
.end method

.method public final getAvailableAssetNames()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbip:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbiq:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbip:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_29

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbip:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbiq:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbiq:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbio:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbif:Lcom/google/android/gms/internal/ads/zzlo;

    return-object v0
.end method

.method public final performClick(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-nez v1, :cond_e

    const-string p1, "#001 Attempt to perform click before app native ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final recordImpression()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-nez v1, :cond_e

    const-string v1, "#002 Attempt to record impression before native ad initialized."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final zzao(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbiq:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzpw;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbip:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpw;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzoz;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string p1, "Attempt to call renderVideoInMediaView before ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    return v1

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbig:Landroid/view/View;

    if-nez v0, :cond_10

    return v1

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzot;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzot;-><init>(Lcom/google/android/gms/internal/ads/zzos;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzox;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzkb()Ljava/lang/String;
    .registers 2

    const-string v0, "3"

    return-object v0
.end method

.method public final zzkc()Lcom/google/android/gms/internal/ads/zzoj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbie:Lcom/google/android/gms/internal/ads/zzoj;

    return-object v0
.end method

.method public final zzkd()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbig:Landroid/view/View;

    return-object v0
.end method

.method public final zzkh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzos;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
