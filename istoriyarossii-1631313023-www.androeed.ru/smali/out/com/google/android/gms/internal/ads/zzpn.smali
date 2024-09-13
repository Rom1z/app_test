.class public final Lcom/google/android/gms/internal/ads/zzpn;
.super Lcom/google/android/gms/internal/ads/zzqb;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final zzbjs:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbij:Lcom/google/android/gms/internal/ads/zzoz;

.field private final zzbjt:Landroid/widget/FrameLayout;

.field private zzbju:Landroid/view/View;

.field private final zzbjv:Z

.field private zzbjw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzbjx:Landroid/view/View;

.field private zzbjy:Z

.field private zzbjz:Landroid/graphics/Point;

.field private zzbka:Landroid/graphics/Point;

.field private zzbkb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzfp;",
            ">;"
        }
    .end annotation
.end field

.field private zzvh:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqb;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjy:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjz:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbka:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_52

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_52

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_52
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbcd:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjv:Z

    return-void
.end method

.method private final zzkt()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjv:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjy:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-eqz v1, :cond_2a

    if-eqz v2, :cond_2a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2a

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjy:Z

    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private final zzl(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzoz;->zzl(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method private final zzv(I)I
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzoz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjz:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbka:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbju:Landroid/view/View;

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->cancelUnconfirmedClick()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbka:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbka:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpn;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    if-eqz v1, :cond_7b

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v2, :cond_74

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v1

    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    :goto_6f
    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_84

    :cond_74
    const-string v3, "1007"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    goto :goto_6f

    :cond_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-interface {v1, p1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_84
    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw p1
.end method

.method public final onGlobalLayout()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzkt()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(Landroid/view/View;Ljava/util/Map;)V

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final onScrollChanged()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(Landroid/view/View;Ljava/util/Map;)V

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzkt()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p1

    return v1

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget v3, v0, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v3, v0

    new-instance v0, Landroid/graphics/Point;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjz:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_34

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbka:Landroid/graphics/Point;

    :cond_34
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzoz;->zzd(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_4b
    move-exception p2

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p2
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzpn;->zzl(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzpd;

    if-nez v2, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_16
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjv:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2c

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjy:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v4, :cond_50

    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzbbu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzoz;->zzb(Landroid/view/View;Ljava/util/Map;)V

    :cond_50
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v5, :cond_88

    check-cast v4, Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v4, :cond_88

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpd;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_88

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaiy;->zzu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpd;->zzks()Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzx(Z)V

    :cond_79
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfp;

    if-eqz v5, :cond_88

    if-eqz v4, :cond_88

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Lcom/google/android/gms/internal/ads/zzft;)V

    :cond_88
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v5, :cond_9e

    check-cast v4, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoy;->zzkm()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Lcom/google/android/gms/internal/ads/zzoz;)V

    goto :goto_aa

    :cond_9e
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v4, p1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v4, :cond_aa

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Lcom/google/android/gms/internal/ads/zzoz;)V

    :cond_aa
    :goto_aa
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-nez v4, :cond_b0

    monitor-exit v0

    return-void

    :cond_b0
    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzbbu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_c7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzkj()Z

    move-result v4

    if-eqz v4, :cond_100

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    if-eqz v5, :cond_f8

    const-string v5, "1098"

    const-string v6, "3011"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_df
    const/4 v7, 0x2

    if-ge v6, v7, :cond_f8

    aget-object v7, v5, v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_f5

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_f9

    :cond_f5
    add-int/lit8 v6, v6, 0x1

    goto :goto_df

    :cond_f8
    move-object v5, v1

    :goto_f9
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_100

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_101

    :cond_100
    move-object v5, v1

    :goto_101
    if-eqz v4, :cond_106

    if-eqz v5, :cond_106

    goto :goto_107

    :cond_106
    const/4 v2, 0x0

    :goto_107
    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    const/4 v10, -0x1

    if-eqz v4, :cond_148

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    if-eqz v4, :cond_120

    const-string v6, "1007"

    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_120
    if-eqz v2, :cond_12b

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_148

    :cond_12b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjx:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_148

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_148
    :goto_148
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjv:Z

    if-eqz v2, :cond_181

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbju:Landroid/view/View;

    if-nez v2, :cond_170

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbju:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_170
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbju:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v2, v4, :cond_181

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbju:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_181
    .catchall {:try_start_4 .. :try_end_181} :catchall_245

    :cond_181
    :try_start_181
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzko()Lcom/google/android/gms/internal/ads/zzaqw;

    move-result-object v2
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_185} :catch_186
    .catchall {:try_start_181 .. :try_end_185} :catchall_245

    goto :goto_19c

    :catch_186
    move-exception v2

    :try_start_187
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakq;->zzrp()Z

    move-result v4

    if-eqz v4, :cond_196

    const-string v2, "Privileged processes cannot create HTML overlays."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_19b

    :cond_196
    const-string v4, "Error obtaining overlay."

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19b
    move-object v2, v1

    :goto_19c
    if-eqz v2, :cond_1a9

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzvh:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1a9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1a9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1ac
    .catchall {:try_start_187 .. :try_end_1ac} :catchall_245

    :try_start_1ac
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzpd;->zzf(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    if-eqz v4, :cond_1d0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpn;->zzbjs:[Ljava/lang/String;

    array-length v5, v4

    :goto_1b8
    if-ge v3, v5, :cond_1d0

    aget-object v6, v4, v3

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1cd

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1d0

    :cond_1cd
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b8

    :cond_1d0
    :goto_1d0
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-nez v3, :cond_1d9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzkq()V

    :goto_1d7
    monitor-exit v2

    goto :goto_1ea

    :cond_1d9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzpo;-><init>(Lcom/google/android/gms/internal/ads/zzpn;Landroid/view/View;)V

    instance-of v4, p1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v4, :cond_1e6

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzpd;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzox;)Z

    goto :goto_1d7

    :cond_1e6
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzox;)V
    :try_end_1e9
    .catchall {:try_start_1ac .. :try_end_1e9} :catchall_242

    goto :goto_1d7

    :goto_1ea
    :try_start_1ea
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzi(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpn;->zzl(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzoz;->zzj(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz v1, :cond_240

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpd;

    if-eqz p1, :cond_240

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_240

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_240

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfp;

    if-nez v1, :cond_239

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    :cond_239
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzks()Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzft;)V

    :cond_240
    monitor-exit v0
    :try_end_241
    .catchall {:try_start_1ea .. :try_end_241} :catchall_245

    return-void

    :catchall_242
    move-exception p1

    :try_start_243
    monitor-exit v2
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    :try_start_244
    throw p1

    :catchall_245
    move-exception p1

    monitor-exit v0
    :try_end_247
    .catchall {:try_start_244 .. :try_end_247} :catchall_245

    throw p1
.end method

.method public final zzak(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0

    return-object v2

    :cond_a
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_13

    goto :goto_1a

    :cond_13
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    :goto_1a
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjt:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzu(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbkb:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfp;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzgm()V

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpn;->zzkt()V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 6

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbjw:Ljava/util/Map;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    if-nez p2, :cond_15

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    :cond_15
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1098"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_3a

    :cond_2e
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_38
    monitor-exit v0

    return-void

    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzoz;->setClickConfirmingView(Landroid/view/View;)V

    return-void
.end method
