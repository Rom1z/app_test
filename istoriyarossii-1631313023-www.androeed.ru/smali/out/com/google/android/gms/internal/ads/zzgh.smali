.class final Lcom/google/android/gms/internal/ads/zzgh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private zzahr:Z

.field private zzahs:Z

.field private final zzaht:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzgj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzgw;",
            ">;"
        }
    .end annotation
.end field

.field private zzahv:Ljava/lang/Runnable;

.field private zzahw:J

.field private zzzv:Z


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahs:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaht:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahu:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzzv:Z

    return-void
.end method

.method private final setActivity(Landroid/app/Activity;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->mActivity:Landroid/app/Activity;

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgh;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzgh;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahr:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzgh;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahr:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzgh;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahs:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzgh;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaht:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->mActivity:Landroid/app/Activity;

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgw;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_40

    :try_start_24
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_40

    goto :goto_18

    :catch_2e
    move-exception v2

    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_40

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgh;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgw;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_4a

    :try_start_18
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzgw;->onActivityPaused(Landroid/app/Activity;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_4a

    goto :goto_c

    :catch_1c
    move-exception v2

    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityPaused"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_4a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahs:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahv:Ljava/lang/Runnable;

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahv:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Lcom/google/android/gms/internal/ads/zzgh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahv:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahw:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgh;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahs:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahr:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahr:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahv:Ljava/lang/Runnable;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahv:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahu:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgw;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_66

    :try_start_2c
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzgw;->onActivityResumed(Landroid/app/Activity;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30
    .catchall {:try_start_2c .. :try_end_2f} :catchall_66

    goto :goto_20

    :catch_30
    move-exception v4

    :try_start_31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v5

    const-string v6, "AppActivityTracker.ActivityListener.onActivityResumed"

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v5, ""

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_40
    if-eqz v0, :cond_5f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaht:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgj;
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_66

    :try_start_54
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgj;->zzh(Z)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_66

    goto :goto_48

    :catch_58
    move-exception v0

    :try_start_59
    const-string v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_5f
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_64
    monitor-exit v2

    return-void

    :catchall_66
    move-exception p1

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgh;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final zza(Landroid/app/Application;Landroid/content/Context;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzzv:Z

    if-nez v0, :cond_27

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_10

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgh;->setActivity(Landroid/app/Activity;)V

    :cond_10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzayh:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzahw:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzzv:Z

    :cond_27
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaht:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
