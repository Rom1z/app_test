.class public abstract Lcom/google/android/gms/internal/ads/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzce;


# static fields
.field protected static volatile zzps:Lcom/google/android/gms/internal/ads/zzcz;


# instance fields
.field protected zzpy:Landroid/view/MotionEvent;

.field protected zzpz:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzqa:J

.field protected zzqb:J

.field protected zzqc:J

.field protected zzqd:J

.field protected zzqe:J

.field protected zzqf:J

.field protected zzqg:J

.field protected zzqh:D

.field private zzqi:D

.field private zzqj:D

.field protected zzqk:F

.field protected zzql:F

.field protected zzqm:F

.field protected zzqn:F

.field private zzqo:Z

.field protected zzqp:Z

.field protected zzqq:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqe:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqg:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqp:Z

    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbay:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbk;->zzv()V

    goto :goto_3a

    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzde;->zzb(Lcom/google/android/gms/internal/ads/zzcz;)Z

    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqq:Landroid/util/DisplayMetrics;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_44

    :catchall_44
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 7

    if-eqz p3, :cond_a

    :try_start_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqo:Z

    goto :goto_f

    :cond_a
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzax;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbfi;->zzacw()I

    move-result p3

    if-nez p3, :cond_18

    goto :goto_1d

    :cond_18
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbk;->zza(Lcom/google/android/gms/internal/ads/zzba;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_1d
    :goto_1d
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_22} :catch_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_22} :catch_25
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    goto :goto_2a

    :catchall_23
    const/4 p1, 0x3

    goto :goto_26

    :catch_25
    const/4 p1, 0x7

    :goto_26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    return-object p1
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcw;
        }
    .end annotation
.end method

.method protected abstract zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzba;
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzax;)Lcom/google/android/gms/internal/ads/zzba;
.end method

.method public final zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdg;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbba:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(III)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcf;->zzpy:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcf;->zzqq:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_2f

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v1

    move/from16 v1, p2

    int-to-float v1, v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcf;->zzqq:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcf;->zzpy:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcf;->zzqp:Z

    return-void
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .registers 16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqd:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqc:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqb:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqa:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqe:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqg:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqf:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpy:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqo:Z

    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_67

    if-eq v0, v3, :cond_42

    if-eq v0, v2, :cond_42

    goto :goto_79

    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqi:D

    sub-double v8, v4, v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqj:D

    sub-double v10, v6, v10

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqh:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqh:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqi:D

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqj:D

    goto :goto_79

    :cond_67
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqh:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqi:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqj:D

    :goto_79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_119

    if-eq v0, v3, :cond_e5

    if-eq v0, v2, :cond_91

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8a

    goto/16 :goto_136

    :cond_8a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqd:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqd:J

    goto/16 :goto_136

    :cond_91
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqb:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqb:J

    :try_start_9c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf;->zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzdf;

    move-result-object p1

    if-eqz p1, :cond_ac

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzfr:Ljava/lang/Long;

    if-eqz v0, :cond_ac

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzst:Ljava/lang/Long;

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v0, 0x0

    :goto_ad
    if-eqz v0, :cond_c1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqf:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzfr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzst:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqf:J

    :cond_c1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqq:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_d0

    if-eqz p1, :cond_d0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzfp:Ljava/lang/Long;

    if-eqz v0, :cond_d0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzsu:Ljava/lang/Long;

    if-eqz v0, :cond_d0

    const/4 v1, 0x1

    :cond_d0
    if-eqz v1, :cond_136

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqg:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzfp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdf;->zzsu:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqg:J
    :try_end_e4
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_9c .. :try_end_e4} :catch_136

    goto :goto_136

    :cond_e5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpy:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_104

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzpz:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_104
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqc:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqc:J

    :try_start_109
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcf;->zza([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqe:J
    :try_end_118
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_109 .. :try_end_118} :catch_136

    goto :goto_136

    :cond_119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqk:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzql:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqm:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqn:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqa:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqa:J

    :catch_136
    :cond_136
    :goto_136
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcf;->zzqp:Z

    return-void
.end method

.method protected abstract zzb(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzdf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcw;
        }
    .end annotation
.end method

.method public zzb(Landroid/view/View;)V
    .registers 2

    return-void
.end method
