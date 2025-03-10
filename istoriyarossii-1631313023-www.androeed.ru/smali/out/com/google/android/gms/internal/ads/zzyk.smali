.class public final Lcom/google/android/gms/internal/ads/zzyk;
.super Lcom/google/android/gms/internal/ads/zzxr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

.field private zzbut:Lcom/google/android/gms/internal/ads/zzyl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    if-eqz p1, :cond_43

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

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

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_42
    move-object v0, p1

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of p1, p1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p1, :cond_57

    const-string p1, "adJson"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_57

    const-string p1, "tagForChildDirectedTreatment"

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_57
    .catchall {:try_start_19 .. :try_end_57} :catchall_58

    :cond_57
    return-object v0

    :catchall_58
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzapz:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamu;->zzsg()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getInterstitialAdapterInfo()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatm;

    if-nez v1, :cond_2d

    const-string v1, "Not a v2 MediationInterstitialAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_2d
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatm;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

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

.method public final getView()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v1, :cond_2d

    const-string v1, "Not a MediationBannerAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    :try_start_2d
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    return-object v0

    :catchall_38
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isInitialized()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    const-string v1, "Not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Check if adapter is initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->isInitialized()Z

    move-result v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3b

    return v0

    :catchall_3b
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final resume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final setImmersiveMode(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-nez v1, :cond_29

    const-string p1, "Not an OnImmersiveModeUpdatedListener: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdj(Ljava/lang/String;)V

    return-void

    :cond_29
    :try_start_29
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v1, :cond_2d

    const-string v1, "Not a MediationInterstitialAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Showing interstitial from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final showVideo()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2d

    const-string v1, "Not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_2d
    const-string v0, "Show rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->showVideo()V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaic;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzaic;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2e

    const-string p1, "Not an InitializableMediationRewardedVideoAdAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_1f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_2e
    const-string v0, "Initialize rewarded video adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_40
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_55
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaif;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Lcom/google/android/gms/internal/ads/zzaic;)V

    invoke-interface {v0, p1, p3, v1}, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Ljava/util/List;)V
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception p1

    const-string p2, "Could not initialize rewarded video adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaic;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v3, v2, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v3, :cond_32

    const-string v0, "Not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_32
    const-string v2, "Initialize rewarded video adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_37
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    const/4 v2, 0x0

    move-object/from16 v4, p5

    invoke-direct {v1, v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v0, :cond_90

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    if-eqz v4, :cond_52

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v4

    goto :goto_53

    :cond_52
    move-object v12, v2

    :goto_53
    new-instance v4, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-nez v7, :cond_5f

    move-object v10, v2

    goto :goto_67

    :cond_5f
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v10, v5

    :goto_67
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object v9, v4

    move/from16 v16, v5

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v5, :cond_8d

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v9, v0

    goto :goto_8e

    :cond_8d
    move-object v9, v2

    :goto_8e
    move-object v5, v4

    goto :goto_92

    :cond_90
    move-object v5, v2

    move-object v9, v5

    :goto_92
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaif;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Lcom/google/android/gms/internal/ads/zzaic;)V

    move-object/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_a5
    .catchall {:try_start_37 .. :try_end_a5} :catchall_a6

    return-void

    :catchall_a6
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v3, v2, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v3, :cond_31

    const-string v0, "Not a MediationInterstitialAdapter: "

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_22
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_31
    const-string v2, "Requesting interstitial ad from adapter."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_36
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v2, :cond_49

    new-instance v2, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    goto :goto_4a

    :cond_49
    move-object v9, v4

    :goto_4a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v7, -0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_56

    move-object v7, v4

    goto :goto_5e

    :cond_56
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v7, v5

    :goto_5e
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v5, :cond_80

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_80
    move-object v8, v4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct {p0, v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_9a
    .catchall {:try_start_36 .. :try_end_9a} :catchall_9b

    return-void

    :catchall_9b
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzjj;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzxt;",
            "Lcom/google/android/gms/internal/ads/zzpl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v3, v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v3, :cond_32

    const-string v0, "Not a MediationNativeAdapter: "

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_32
    :try_start_32
    check-cast v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    new-instance v3, Ljava/util/HashSet;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    goto :goto_43

    :cond_42
    move-object v9, v4

    :goto_43
    new-instance v3, Lcom/google/android/gms/internal/ads/zzyo;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v7, -0x1

    cmp-long v10, v5, v7

    if-nez v10, :cond_4f

    move-object v7, v4

    goto :goto_57

    :cond_4f
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v7, v5

    :goto_57
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v11

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object v6, v3

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzpl;Ljava/util/List;Z)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v5, :cond_7d

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_7d
    new-instance v5, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct {v1, v7, v0, v8}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v0

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    :try_end_a5
    .catchall {:try_start_32 .. :try_end_a5} :catchall_a6

    return-void

    :catchall_a6
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v4, v3, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v4, :cond_33

    const-string v0, "Not a MediationBannerAdapter: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_33
    const-string v3, "Requesting banner ad from adapter."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_38
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/util/HashSet;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v10, v3

    goto :goto_4c

    :cond_4b
    move-object v10, v5

    :goto_4c
    new-instance v3, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v8, -0x1

    cmp-long v11, v6, v8

    if-nez v11, :cond_58

    move-object v8, v5

    goto :goto_60

    :cond_58
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v8, v6

    :goto_60
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v12

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v14, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v6, :cond_82

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_82
    move-object v10, v5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzyl;

    move-object/from16 v7, p6

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzyl;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct {p0, v7, v2, v8}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-static {v2, v8, v0}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v8

    move-object v9, v3

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_a6
    .catchall {:try_start_38 .. :try_end_a6} :catchall_a7

    return-void

    :catchall_a7
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    if-nez v1, :cond_2e

    const-string p1, "Not a MediationRewardedVideoAdAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_1f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :cond_2e
    const-string v0, "Requesting rewarded video ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v1

    goto :goto_46

    :cond_45
    move-object v6, v2

    :goto_46
    new-instance v1, Lcom/google/android/gms/internal/ads/zzyj;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    const-wide/16 v7, -0x1

    cmp-long v5, v3, v7

    if-nez v5, :cond_52

    move-object v4, v2

    goto :goto_5a

    :cond_52
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object v4, v3

    :goto_5a
    iget v5, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzm(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v8

    iget v9, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v10, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    if-eqz v3, :cond_7c

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_7c
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;->loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_83
    .catchall {:try_start_33 .. :try_end_83} :catchall_84

    return-void

    :catchall_84
    move-exception p1

    const-string p2, ""

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zza(Lcom/google/android/gms/internal/ads/zzjj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    check-cast v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;->onContextChanged(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p1

    const-string v0, "Failed"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzmo()Lcom/google/android/gms/internal/ads/zzxz;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/zzym;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzym;-><init>(Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmp()Lcom/google/android/gms/internal/ads/zzyc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    if-eqz v1, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyn;

    check-cast v0, Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzyn;-><init>(Lcom/google/android/gms/ads/mediation/NativeContentAdMapper;)V

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmq()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatl;

    if-nez v1, :cond_2d

    const-string v1, "Not a v2 MediationBannerAdapter: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_2d
    check-cast v0, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatl;->zzmq()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzmr()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzms()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbus:Lcom/google/android/gms/ads/mediation/MediationAdapter;

    instance-of v0, v0, Lcom/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter;

    return v0
.end method

.method public final zzmt()Lcom/google/android/gms/internal/ads/zzqs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmz()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzku()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzmu()Lcom/google/android/gms/internal/ads/zzyf;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyk;->zzbut:Lcom/google/android/gms/internal/ads/zzyl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyl;->zzmy()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method
