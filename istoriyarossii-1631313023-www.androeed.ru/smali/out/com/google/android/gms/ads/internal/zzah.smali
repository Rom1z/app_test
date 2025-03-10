.class public final Lcom/google/android/gms/ads/internal/zzah;
.super Lcom/google/android/gms/internal/ads/zzkl;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzwc:Lcom/google/android/gms/ads/internal/zzw;

.field private final zzwh:Lcom/google/android/gms/internal/ads/zzxn;

.field private final zzxs:Lcom/google/android/gms/internal/ads/zzkh;

.field private final zzxt:Lcom/google/android/gms/internal/ads/zzqw;

.field private final zzxu:Lcom/google/android/gms/internal/ads/zzrl;

.field private final zzxv:Lcom/google/android/gms/internal/ads/zzqz;

.field private final zzxw:Lcom/google/android/gms/internal/ads/zzri;

.field private final zzxx:Lcom/google/android/gms/internal/ads/zzjn;

.field private final zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private final zzxz:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzya:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzyb:Lcom/google/android/gms/internal/ads/zzpl;

.field private final zzyc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzyd:Lcom/google/android/gms/internal/ads/zzlg;

.field private final zzye:Ljava/lang/String;

.field private final zzyf:Lcom/google/android/gms/internal/ads/zzang;

.field private zzyg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzrl;Lcom/google/android/gms/internal/ads/zzqz;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Lcom/google/android/gms/internal/ads/zzpl;Lcom/google/android/gms/internal/ads/zzlg;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzri;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzxn;",
            "Lcom/google/android/gms/internal/ads/zzang;",
            "Lcom/google/android/gms/internal/ads/zzkh;",
            "Lcom/google/android/gms/internal/ads/zzqw;",
            "Lcom/google/android/gms/internal/ads/zzrl;",
            "Lcom/google/android/gms/internal/ads/zzqz;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrf;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzrc;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzpl;",
            "Lcom/google/android/gms/internal/ads/zzlg;",
            "Lcom/google/android/gms/ads/internal/zzw;",
            "Lcom/google/android/gms/internal/ads/zzri;",
            "Lcom/google/android/gms/internal/ads/zzjn;",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzah;->mLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzah;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzye:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    move-object v2, p5

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    move-object v2, p8

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxv:Lcom/google/android/gms/internal/ads/zzqz;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxt:Lcom/google/android/gms/internal/ads/zzqw;

    move-object v2, p7

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    move-object v2, p9

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxz:Landroidx/collection/SimpleArrayMap;

    move-object v2, p10

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzya:Landroidx/collection/SimpleArrayMap;

    move-object v2, p11

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzdg()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzyc:Ljava/util/List;

    move-object v2, p12

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzyd:Lcom/google/android/gms/internal/ads/zzlg;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxw:Lcom/google/android/gms/internal/ads/zzri;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxx:Lcom/google/android/gms/internal/ads/zzjn;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzah;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzah;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzah;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzah;->zze(Lcom/google/android/gms/internal/ads/zzjj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzah;->zzb(Lcom/google/android/gms/internal/ads/zzjj;I)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzjj;I)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbcg:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v0, :cond_1b

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzah;->zzi(I)V

    return-void

    :cond_1b
    new-instance v7, Lcom/google/android/gms/ads/internal/zzbc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzah;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzjn;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzah;->zzye:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzah;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzbc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyg:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxt:Lcom/google/android/gms/internal/ads/zzqw;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxv:Lcom/google/android/gms/internal/ads/zzqz;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxz:Landroidx/collection/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/ads/zzkh;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzya:Landroidx/collection/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroidx/collection/SimpleArrayMap;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzdg()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzbc;->zzd(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbc;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyd:Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/ads/zzlg;)V

    invoke-virtual {v7, p2}, Lcom/google/android/gms/ads/internal/zzbc;->zzj(I)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzah;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzde()Z

    move-result p0

    return p0
.end method

.method private final zzde()Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaym:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxw:Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private final zzdf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxt:Lcom/google/android/gms/internal/ads/zzqw;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxv:Lcom/google/android/gms/internal/ads/zzqz;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxz:Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method private final zzdg()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxv:Lcom/google/android/gms/internal/ads/zzqz;

    if-eqz v1, :cond_e

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxt:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v1, :cond_17

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v1, :cond_20

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxz:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2d

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-object v0
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbcg:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v0, :cond_1b

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzah;->zzi(I)V

    return-void

    :cond_1b
    new-instance v7, Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzah;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxx:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzah;->zzye:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzah;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyg:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxw:Lcom/google/android/gms/internal/ads/zzri;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadm:Lcom/google/android/gms/internal/ads/zzri;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbg()Lcom/google/android/gms/internal/ads/zzla;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzbg()Lcom/google/android/gms/internal/ads/zzla;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/ads/zzla;)V

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxy:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->setManualImpressionsEnabled(Z)V

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxt:Lcom/google/android/gms/internal/ads/zzqw;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxu:Lcom/google/android/gms/internal/ads/zzrl;

    const-string v1, "setOnUnifiedNativeAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxv:Lcom/google/android/gms/internal/ads/zzqz;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxz:Landroidx/collection/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzya:Landroidx/collection/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyb:Lcom/google/android/gms/internal/ads/zzpl;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadj:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzdg()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/ads/zzkh;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyd:Lcom/google/android/gms/internal/ads/zzlg;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/ads/zzlg;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzdf()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxw:Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v1, :cond_cd

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cd
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zze(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzah;->zzdf()Z

    move-result v0

    if-eqz v0, :cond_dd

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_dd
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxw:Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v0, :cond_e8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e8
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    return-void
.end method

.method private final zzi(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzxs:Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :try_start_5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    const-string v0, "Failed calling onAdFailedToLoad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyg:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final isLoading()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyg:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zza;->isLoading()Z

    move-result v2

    :cond_14
    monitor-exit v0

    return v2

    :cond_16
    monitor-exit v0

    return v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjj;I)V
    .registers 4

    if-lez p2, :cond_b

    new-instance v0, Lcom/google/android/gms/ads/internal/zzaj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzaj;-><init>(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;I)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzah;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of ads has to be more than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzck()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzah;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzah;->zzyg:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->zzck()Ljava/lang/String;

    move-result-object v2

    :cond_14
    monitor-exit v0

    return-object v2

    :cond_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzjj;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/internal/zzai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzai;-><init>(Lcom/google/android/gms/ads/internal/zzah;Lcom/google/android/gms/internal/ads/zzjj;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzah;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
