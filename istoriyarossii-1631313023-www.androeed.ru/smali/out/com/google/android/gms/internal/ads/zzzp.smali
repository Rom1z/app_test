.class public final Lcom/google/android/gms/internal/ads/zzzp;
.super Lcom/google/android/gms/internal/ads/zzzk;


# instance fields
.field private final zzbvi:Lcom/google/android/gms/internal/ads/zzatg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatg;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    return-void
.end method

.method private static zzbt(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    :try_start_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_43

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_41} :catch_44

    goto :goto_2e

    :cond_42
    move-object v0, p0

    :cond_43
    return-object v0

    :catch_44
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    :try_start_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final showInterstitial()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzate;->zzoy()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    return-void

    :catchall_5
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzzm;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/internal/ads/zzzp;Lcom/google/android/gms/internal/ads/zzzm;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzati;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_70

    goto :goto_42

    :sswitch_1b
    const-string v3, "interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const/4 v2, 0x1

    goto :goto_42

    :sswitch_25
    const-string v3, "rewarded"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const/4 v2, 0x2

    goto :goto_42

    :sswitch_2f
    const-string v3, "native"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const/4 v2, 0x3

    goto :goto_42

    :sswitch_39
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    const/4 v2, 0x0

    :cond_42
    :goto_42
    if-eqz v2, :cond_5b

    if-eq v2, v6, :cond_58

    if-eq v2, v5, :cond_55

    if-ne v2, v4, :cond_4d

    sget p2, Lcom/google/android/gms/internal/ads/zzath;->zzdgq:I

    goto :goto_5d

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    sget p2, Lcom/google/android/gms/internal/ads/zzath;->zzdgp:I

    goto :goto_5d

    :cond_58
    sget p2, Lcom/google/android/gms/internal/ads/zzath;->zzdgo:I

    goto :goto_5d

    :cond_5b
    sget p2, Lcom/google/android/gms/internal/ads/zzath;->zzdgn:I

    :goto_5d
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzati;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/internal/ads/zzatg;->zza(Lcom/google/android/gms/internal/ads/zzati;Lcom/google/android/gms/internal/ads/zzatj;)V
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :sswitch_data_70
    .sparse-switch
        -0x533a80d4 -> :sswitch_39
        -0x3ebdafe9 -> :sswitch_2f
        -0xe47b3f2 -> :sswitch_25
        0x240b672c -> :sswitch_1b
    .end sparse-switch
.end method

.method public final zza([BLjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzzf;Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzjn;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzzq;-><init>(Lcom/google/android/gms/internal/ads/zzzp;Lcom/google/android/gms/internal/ads/zzzf;Lcom/google/android/gms/internal/ads/zzxt;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    new-instance p6, Lcom/google/android/gms/internal/ads/zzatf;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzzp;->zzbt(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzatf;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    iget p1, p7, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    iget p2, p7, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    iget-object p3, p7, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support banner."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatd;->zzau(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception p1

    const-string p2, "Adapter failed to render banner ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zza([BLjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzzh;Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-direct {v0, p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzzr;-><init>(Lcom/google/android/gms/internal/ads/zzzp;Lcom/google/android/gms/internal/ads/zzzh;Lcom/google/android/gms/internal/ads/zzxt;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    new-instance p6, Lcom/google/android/gms/internal/ads/zzatf;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzzp;->zzbt(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p6, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzatf;-><init>(Landroid/content/Context;[BLandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " does not support interstitial."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatd;->zzau(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    const-string p2, "Adapter failed to render interstitial ad."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zznc()Lcom/google/android/gms/internal/ads/zzzt;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatg;->zzwa()Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzt;->zza(Lcom/google/android/gms/internal/ads/zzatk;)Lcom/google/android/gms/internal/ads/zzzt;

    move-result-object v0

    return-object v0
.end method

.method public final zznd()Lcom/google/android/gms/internal/ads/zzzt;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzp;->zzbvi:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatg;->zzvz()Lcom/google/android/gms/internal/ads/zzatk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzt;->zza(Lcom/google/android/gms/internal/ads/zzatk;)Lcom/google/android/gms/internal/ads/zzzt;

    move-result-object v0

    return-object v0
.end method
