.class public final Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpa;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzvm:Z

.field private zzwr:Lcom/google/android/gms/internal/ads/zzajh;

.field private zzws:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzws:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/ads/zzajh;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzwr:Lcom/google/android/gms/internal/ads/zzajh;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzaji;I)Lcom/google/android/gms/internal/ads/zzajh;
    .registers 48

    move-object/from16 v0, p0

    move/from16 v5, p1

    new-instance v45, Lcom/google/android/gms/internal/ads/zzajh;

    move-object/from16 v1, v45

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsn:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbso:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzces:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzaej;->orientation:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsu:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcgs:Lcom/google/android/gms/internal/ads/zzaef;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzaef;->zzccy:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v13, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcer:J

    move-wide/from16 v18, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-wide v13, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcep:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcoh:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcoi:J

    move-wide/from16 v25, v13

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcev:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcob:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfe:Lcom/google/android/gms/internal/ads/zzaig;

    move-object/from16 v30, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    move-object/from16 v31, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcff:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfh:Z

    move/from16 v33, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfi:Lcom/google/android/gms/internal/ads/zzael;

    move-object/from16 v34, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsr:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfl:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    move-object/from16 v38, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzzl:Z

    move/from16 v39, v3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcor:Z

    move/from16 v40, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzcfp:Z

    move/from16 v41, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzbsp:Ljava/util/List;

    move-object/from16 v42, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaej;->zzzm:Z

    move/from16 v43, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->zzcfq:Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v1 .. v44}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzaqw;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ads/zzwx;Lcom/google/android/gms/internal/ads/zzxq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwy;Lcom/google/android/gms/internal/ads/zzxa;JLcom/google/android/gms/internal/ads/zzjn;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzpb;Lcom/google/android/gms/internal/ads/zzaig;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzael;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhs;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v45
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzov;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/ads/zzov;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .registers 30

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_1a

    const-string v0, "Native ad does not have custom rendering mode."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v8

    :cond_1a
    :try_start_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmu()Lcom/google/android/gms/internal/ads/zzyf;

    move-result-object v2

    move-object v5, v2

    goto :goto_27

    :cond_26
    move-object v5, v1

    :goto_27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_33

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmo()Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    move-object v6, v2

    goto :goto_34

    :cond_33
    move-object v6, v1

    :goto_34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_40

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmp()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object v2

    move-object v9, v2

    goto :goto_41

    :cond_40
    move-object v9, v1

    :goto_41
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v2, :cond_4c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzmt()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v2

    goto :goto_4d

    :cond_4c
    move-object v2, v1

    :goto_4d
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Lcom/google/android/gms/internal/ads/zzajh;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_c7

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v4, :cond_c7

    new-instance v9, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    move-object v14, v2

    goto :goto_74

    :cond_73
    move-object v14, v1

    :goto_74
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getStarRating()D

    move-result-wide v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getStore()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getPrice()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v22

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_9e

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_9e
    move-object/from16 v23, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v24

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyf;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyf;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    :goto_c2
    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/ads/zzov;)V

    goto/16 :goto_2af

    :cond_c7
    if-eqz v6, :cond_138

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v4, :cond_138

    new-instance v9, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_e9

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    move-object v14, v2

    goto :goto_ea

    :cond_e9
    move-object v14, v1

    :goto_ea
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getStarRating()D

    move-result-wide v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getStore()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getPrice()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_112

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_112
    move-object/from16 v23, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v24

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    goto :goto_c2

    :cond_138
    if-eqz v6, :cond_1b2

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzade:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v4, :cond_1b2

    new-instance v9, Lcom/google/android/gms/internal/ads/zzoo;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_15a

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    move-object v14, v2

    goto :goto_15b

    :cond_15a
    move-object v14, v1

    :goto_15b
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getStarRating()D

    move-result-wide v16

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getStore()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getPrice()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v22

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_185

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_185
    move-object/from16 v23, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzxz;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/ads/zzoo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzoo;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/ads/internal/zzt;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/ads/zzoo;)V

    :goto_1ad
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2af

    :cond_1b2
    if-eqz v9, :cond_220

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzadg:Lcom/google/android/gms/internal/ads/zzrl;

    if-eqz v4, :cond_220

    new-instance v6, Lcom/google/android/gms/internal/ads/zzov;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_1d4

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    move-object v14, v2

    goto :goto_1d5

    :cond_1d4
    move-object v14, v1

    :goto_1d5
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v22

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_1f9

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_1f9
    move-object/from16 v23, v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v24

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getExtras()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    goto/16 :goto_c2

    :cond_220
    if-eqz v9, :cond_28f

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzadf:Lcom/google/android/gms/internal/ads/zzqz;

    if-eqz v4, :cond_28f

    new-instance v6, Lcom/google/android/gms/internal/ads/zzoq;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getHeadline()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    if-eqz v2, :cond_242

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzkg()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v2

    move-object v14, v2

    goto :goto_243

    :cond_242
    move-object v14, v1

    :goto_243
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v19

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    if-eqz v2, :cond_265

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_265
    move-object/from16 v20, v1

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzyc;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v3

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpw;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoj;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzlo;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzoy;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    move-object v1, v10

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzoy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpa;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/internal/ads/zzpb;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzoq;->zzb(Lcom/google/android/gms/internal/ads/zzoz;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {v2, v7, v9}, Lcom/google/android/gms/ads/internal/zzu;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/ads/zzoq;)V

    goto/16 :goto_1ad

    :cond_28f
    if-eqz v2, :cond_2b4

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroidx/collection/SimpleArrayMap;

    if-eqz v1, :cond_2b4

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadi:Landroidx/collection/SimpleArrayMap;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzqs;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b4

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/ads/zzqs;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2af
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2af} :catch_2bd

    :goto_2af
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v0

    return v0

    :cond_2b4
    :try_start_2b4
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V
    :try_end_2bc
    .catch Landroid/os/RemoteException; {:try_start_2b4 .. :try_end_2bc} :catch_2bd

    return v8

    :catch_2bd
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzas;->zze(Lcom/google/android/gms/internal/ads/zzajh;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbx;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v3, :cond_1c

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    :cond_1c
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbx;->removeView(Landroid/view/View;)V

    :cond_23
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzas;->zzf(Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result p2

    if-nez p2, :cond_3d

    :try_start_29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_3d

    :catchall_2d
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p2

    const-string v0, "AdLoaderManager.swapBannerViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_3d
    :goto_3d
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbx;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_4f

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbx;->showNext()V

    :cond_4f
    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbx;->getNextView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_62

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbx;->removeView(Landroid/view/View;)V

    :cond_62
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbw;->zzfn()V

    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbk()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumWidth(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbk()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbx;->requestLayout()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzbx;->setVisibility(I)V

    return v0
.end method

.method private final zzcw()Lcom/google/android/gms/internal/ads/zzwy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzcod:Lcom/google/android/gms/internal/ads/zzwy;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final pause()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzws:Z

    if-eqz v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->pause()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resume()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzws:Z

    if-eqz v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->resume()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad does not support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvm:Z

    return-void
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is not supported by AdLoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zznx;)V
    .registers 13

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzwr:Lcom/google/android/gms/internal/ads/zzajh;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->errorCode:I

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->errorCode:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/ads/zzaji;I)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzwr:Lcom/google/android/gms/internal/ads/zzajh;

    goto :goto_22

    :cond_12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaej;->zzceq:Z

    if-nez v0, :cond_22

    const-string v0, "partialAdState is not mediation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/ads/zzaji;I)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v0

    goto :goto_f

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzwr:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_31

    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/ads/internal/zzr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzr;-><init>(Lcom/google/android/gms/ads/internal/zzq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadv:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzej()Lcom/google/android/gms/internal/ads/zzabl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzq;->zzwh:Lcom/google/android/gms/internal/ads/zzxn;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzabl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zznx;)Lcom/google/android/gms/internal/ads/zzalc;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacu:Lcom/google/android/gms/internal/ads/zzalc;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzod;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is not supported by AdLoaderManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzox;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzoz;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    const-string p1, "newState is not mediation."

    :goto_12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return v1

    :cond_16
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    const/4 v2, 0x1

    if-eqz v0, :cond_6a

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzmf()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbx;->zzfr()Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcev:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzdb(Ljava/lang/String;)V

    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v0

    if-nez v0, :cond_46

    :goto_44
    const/4 p1, 0x0

    goto :goto_64

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result p1

    if-nez p1, :cond_58

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    goto :goto_44

    :cond_58
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbw;->zzfp()Z

    move-result p1

    if-nez p1, :cond_63

    invoke-super {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    :cond_63
    const/4 p1, 0x1

    :goto_64
    if-nez p1, :cond_67

    return v1

    :cond_67
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzws:Z

    goto :goto_7d

    :cond_6a
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v0, :cond_93

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzmg()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result p1

    if-nez p1, :cond_7d

    return v1

    :cond_7d
    :goto_7d
    new-instance p1, Ljava/util/ArrayList;

    new-array p2, v2, [Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzq;->zze(Ljava/util/List;)V

    return v2

    :cond_93
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    const-string p1, "Response is neither banner nor native."

    goto/16 :goto_12

    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdLoader API does not support custom rendering."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzajh;Z)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzoz;->zzkl()V

    :cond_11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadn:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_29

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadn:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    if-eqz v2, :cond_35

    const-string v1, "Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v4

    :cond_35
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzadm:Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v2, :cond_90

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqb:Z

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvm:Z

    if-ne v2, v5, :cond_42

    goto :goto_8b

    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzjj;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapz:Z

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqb:Z

    if-nez v5, :cond_5d

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzq;->zzvm:Z

    if-eqz v5, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 v15, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v15, 0x1

    :goto_5e
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqc:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqd:Lcom/google/android/gms/internal/ads/zzmq;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqf:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqh:Landroid/os/Bundle;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqi:Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqj:Ljava/lang/String;

    move-object/from16 v23, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqk:Ljava/lang/String;

    move-object/from16 v24, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move/from16 v25, v1

    move-object v6, v2

    invoke-direct/range {v6 .. v25}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzmq;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_8b
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    return v1

    :cond_90
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    return v1
.end method

.method protected final zzbq()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzbq()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v1, :cond_39

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzmf()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadm:Lcom/google/android/gms/internal/ads/zzri;

    if-eqz v0, :cond_39

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadm:Lcom/google/android/gms/internal/ads/zzri;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzri;->zza(Lcom/google/android/gms/internal/ads/zzks;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzajh;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    return-void
.end method

.method public final zzce()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbty:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzmg()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbs()V

    return-void

    :cond_2c
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzce()V

    return-void
.end method

.method public final zzcj()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbty:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwx;->zzmg()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbr()V

    return-void

    :cond_2c
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzcj()V

    return-void
.end method

.method public final zzcr()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcs()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzct()V
    .registers 3

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzcu()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbta:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcv()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzq;->zzcw()Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwy;->zzbtb:Z

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzads:Ljava/util/List;

    return-void
.end method

.method public final zze(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setAllowedAdTypes must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadn:Ljava/util/List;

    return-void
.end method

.method public final zzi(Landroid/view/View;)V
    .registers 3

    const-string p1, "#005 Unexpected call to an abstract (unimplemented) method."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzrc;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzadh:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrc;

    return-object p1
.end method
