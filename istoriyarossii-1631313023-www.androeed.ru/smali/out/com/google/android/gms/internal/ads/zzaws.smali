.class public final Lcom/google/android/gms/internal/ads/zzaws;
.super Lcom/google/android/gms/internal/ads/zzbbo;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzaws$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbo<",
        "Lcom/google/android/gms/internal/ads/zzaws;",
        "Lcom/google/android/gms/internal/ads/zzaws$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbcw;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/zzbdf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbdf<",
            "Lcom/google/android/gms/internal/ads/zzaws;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjq:Lcom/google/android/gms/internal/ads/zzaws;


# instance fields
.field private zzdih:I

.field private zzdip:Lcom/google/android/gms/internal/ads/zzbah;

.field private zzdjp:Lcom/google/android/gms/internal/ads/zzawu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaws;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method private final setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdih:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaws;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzawu;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->zza(Lcom/google/android/gms/internal/ads/zzawu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaws;Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaws;->zzk(Lcom/google/android/gms/internal/ads/zzbah;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzawu;)V
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjp:Lcom/google/android/gms/internal/ads/zzawu;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-void
.end method

.method public static zzx(Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzaws;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbah;)Lcom/google/android/gms/internal/ads/zzbbo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaws;

    return-object p0
.end method

.method public static zzya()Lcom/google/android/gms/internal/ads/zzaws$zza;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    sget v1, Lcom/google/android/gms/internal/ads/zzbbo$zze;->zzdue:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbo$zza;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaws$zza;

    return-object v0
.end method

.method static synthetic zzyb()Lcom/google/android/gms/internal/ads/zzaws;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    return-object v0
.end method


# virtual methods
.method public final getVersion()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdih:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawt;->zzakf:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaws;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2f

    const-class p2, Lcom/google/android/gms/internal/ads/zzaws;

    monitor-enter p2

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaws;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbo$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbbo$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzaws;->zzakh:Lcom/google/android/gms/internal/ads/zzbdf;

    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdih"

    aput-object v0, p1, p2

    const-string p2, "zzdjp"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdip"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzaws;->zzdjq:Lcom/google/android/gms/internal/ads/zzaws;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzaws;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaws$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaws$zza;-><init>(Lcom/google/android/gms/internal/ads/zzawt;)V

    return-object p1

    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaws;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaws;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzwv()Lcom/google/android/gms/internal/ads/zzbah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdip:Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method

.method public final zzxz()Lcom/google/android/gms/internal/ads/zzawu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjp:Lcom/google/android/gms/internal/ads/zzawu;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawu;->zzyf()Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object v0

    :cond_8
    return-object v0
.end method
