.class public final Lcom/google/android/gms/internal/ads/zzadk;
.super Lcom/google/android/gms/internal/ads/zzajx;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

.field private zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

.field private zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

.field private zzbzg:Ljava/lang/Runnable;

.field private final zzbzh:Ljava/lang/Object;

.field private final zzccf:Lcom/google/android/gms/internal/ads/zzadj;

.field private final zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

.field private final zzcch:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzcci:Lcom/google/android/gms/internal/ads/zzhx;

.field zzccj:Lcom/google/android/gms/internal/ads/zzalc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaeg;Lcom/google/android/gms/internal/ads/zzadj;Lcom/google/android/gms/internal/ads/zzhx;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajx;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzh:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccf:Lcom/google/android/gms/internal/ads/zzadj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcci:Lcom/google/android/gms/internal/ads/zzhx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(Lcom/google/android/gms/internal/ads/zzhx;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzadl;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(Lcom/google/android/gms/internal/ads/zzadk;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzht;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaeg;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzang;->zzcve:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/zzit;->zzaot:Ljava/lang/Integer;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaeg;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzang;->zzcvf:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/zzit;->zzaou:Ljava/lang/Integer;

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzaeg;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-boolean p4, p4, Lcom/google/android/gms/internal/ads/zzang;->zzcvg:Z

    if-eqz p4, :cond_42

    const/4 p4, 0x0

    goto :goto_43

    :cond_42
    const/4 p4, 0x2

    :goto_43
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/zzit;->zzaov:Ljava/lang/Integer;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzadm;

    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/zzadm;-><init>(Lcom/google/android/gms/internal/ads/zzit;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzht;)V

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzaeg;->zzccw:Landroid/content/pm/PackageInfo;

    if-eqz p3, :cond_5d

    new-instance p3, Lcom/google/android/gms/internal/ads/zzadn;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(Lcom/google/android/gms/internal/ads/zzadk;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzht;)V

    :cond_5d
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaeg;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarc:Z

    if-eqz p3, :cond_73

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    const-string p4, "interstitial_mb"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_73

    sget-object p2, Lcom/google/android/gms/internal/ads/zzado;->zzccm:Lcom/google/android/gms/internal/ads/zzht;

    :goto_6f
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzht;)V

    goto :goto_92

    :cond_73
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarc:Z

    if-eqz p3, :cond_84

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    const-string p4, "reward_mb"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_84

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadp;->zzccm:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_6f

    :cond_84
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzare:Z

    if-nez p3, :cond_8f

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarc:Z

    if-nez p2, :cond_8f

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadq;->zzccm:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_6f

    :cond_8f
    sget-object p2, Lcom/google/android/gms/internal/ads/zzadr;->zzccm:Lcom/google/android/gms/internal/ads/zzht;

    goto :goto_6f

    :goto_92
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzakj:Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzjn;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzadu;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzadn:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzadn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    if-eqz v0, :cond_23

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbte:Z

    if-nez v0, :cond_23

    const/4 p1, 0x0

    return-object p1

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->zzarf:Z

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v3, :cond_44

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-eqz v6, :cond_41

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzjn;[Lcom/google/android/gms/internal/ads/zzjn;)V

    return-object v0

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_79

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_6f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_75
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_79
    :try_start_79
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_85} :catch_eb

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_8b
    if-ge v5, v4, :cond_ca

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a6

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_a8

    :cond_a6
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    :goto_a8
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_b3

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_b5

    :cond_b3
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    :goto_b5
    if-ne v3, v8, :cond_c7

    if-ne v0, v7, :cond_c7

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-nez v7, :cond_c7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzjn;[Lcom/google/android/gms/internal/ads/zzjn;)V

    return-object v0

    :cond_c7
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    :cond_ca
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e7

    :cond_e1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_e7
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_eb
    nop

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_103

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    :cond_103
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_109
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_10d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzadk;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzh:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzadk;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadk;->zzc(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzadk;)Lcom/google/android/gms/internal/ads/zzaeg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzadk;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzg:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final zzc(ILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    move/from16 v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_e

    const/4 v1, -0x1

    if-ne v6, v1, :cond_a

    goto :goto_e

    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_11

    :cond_e
    :goto_e
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    :goto_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(I)V

    goto :goto_24

    :cond_1b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    invoke-direct {v1, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(IJ)V

    :goto_24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    if-eqz v1, :cond_2b

    goto :goto_38

    :cond_2b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    move-object v2, v1

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzaej;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzhs;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadk;->zzccf:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/zzadj;->zza(Lcom/google/android/gms/internal/ads/zzaji;)V

    return-void
.end method


# virtual methods
.method public final onStop()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccj:Lcom/google/android/gms/internal/ads/zzalc;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzalc;->cancel()V

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

.method final zza(Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzaol;)Lcom/google/android/gms/internal/ads/zzalc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzang;",
            "Lcom/google/android/gms/internal/ads/zzaol<",
            "Lcom/google/android/gms/internal/ads/zzaef;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzalc;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzadw;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzang;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaol;Lcom/google/android/gms/internal/ads/zzadx;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadz;->zznt()Ljava/lang/Object;

    return-object p1

    :cond_1b
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbe(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaed;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzaed;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzaol;Lcom/google/android/gms/internal/ads/zzadx;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaej;)V
    .registers 15

    const-string v0, "Received ad response."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzh:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccj:Lcom/google/android/gms/internal/ads/zzalc;

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_217

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcdr:Z

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzae(Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzayy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzced:Z

    if-eqz p1, :cond_4d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzacp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzcp(Ljava/lang/String;)V

    goto :goto_5c

    :cond_4d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzacp:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zzcq(Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->errorCode:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq p1, v1, :cond_8c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->errorCode:I

    if-ne p1, v2, :cond_6b

    goto :goto_8c

    :cond_6b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->errorCode:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->errorCode:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->errorCode:I

    const/4 v1, 0x0

    if-eq p1, v2, :cond_13b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_132

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzcdd:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzakd;->zzab(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z
    :try_end_b0
    .catch Lcom/google/android/gms/internal/ads/zzadu; {:try_start_5c .. :try_end_b0} :catch_20a

    if-eqz p1, :cond_f0

    :try_start_b2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzwy;->zzbss:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzaa(Z)V
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_c8} :catch_c9
    .catch Lcom/google/android/gms/internal/ads/zzadu; {:try_start_b2 .. :try_end_c8} :catch_20a

    goto :goto_fb

    :catch_c9
    move-exception p1

    :try_start_ca
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzceo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e6

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_ec

    :cond_e6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_ec
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_f0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzbss:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzaa(Z)V

    :goto_fb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzcds:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13b

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbdj:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13b

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzakq;->zzax(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_13b

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcds:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13b

    :cond_132
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_13b
    :goto_13b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p1
    :try_end_149
    .catch Lcom/google/android/gms/internal/ads/zzadu; {:try_start_ca .. :try_end_149} :catch_20a

    move-object v4, p1

    goto :goto_14c

    :cond_14b
    move-object v4, v0

    :goto_14c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzcfa:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzakd;->zzac(Z)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqh()Lcom/google/android/gms/internal/ads/zzakd;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzcfm:Z

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzakd;->zzad(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzcey:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_185

    :try_start_174
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzcey:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17d} :catch_17f

    move-object v10, p1

    goto :goto_186

    :catch_17f
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_185
    move-object v10, v0

    :goto_186
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfo:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1cd

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v2, :cond_19d

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    goto :goto_1a2

    :cond_19d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1a2
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1b9

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1c8

    :cond_1b9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_1c8
    const-string v2, "render_test_label"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1cd
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfo:I

    if-ne p1, v3, :cond_1d7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1d7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaej;->zzcfo:I

    if-nez p1, :cond_1eb

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamm;->zzo(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_1ec

    :cond_1eb
    move-object v12, v0

    :goto_1ec
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzf:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbtj:Lcom/google/android/gms/internal/ads/zzwy;

    const/4 v5, -0x2

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzaej;->zzceu:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzaej;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzhs;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccf:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadj;->zza(Lcom/google/android/gms/internal/ads/zzaji;)V

    :goto_202
    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzg:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_20a
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadu;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadu;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadk;->zzc(ILjava/lang/String;)V

    goto :goto_202

    :catchall_217
    move-exception v0

    :try_start_218
    monitor-exit p1
    :try_end_219
    .catchall {:try_start_218 .. :try_end_219} :catchall_217

    throw v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzii;)V
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeg;->zzccw:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzig;->zzamu:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzii;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeg;->zzcdi:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    return-void
.end method

.method public final zzdn()V
    .registers 10

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzg:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbzg:Ljava/lang/Runnable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzban:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbak:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeg;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaeg;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v0}, Lcom/google/android/gms/internal/ads/zzafs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaef;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaej;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzaej;)V

    return-void

    :cond_6a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaop;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzaol;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaki;->zzb(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzanz;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzaiy;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzccg:Lcom/google/android/gms/internal/ads/zzaeg;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzbuc:Lcom/google/android/gms/internal/ads/zzaef;

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzaol;->zzk(Ljava/lang/Object;)V

    return-void
.end method
