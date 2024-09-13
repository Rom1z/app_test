.class public final Lcom/google/android/gms/internal/ads/zzij;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzij;",
        ">;"
    }
.end annotation


# instance fields
.field private zzanq:Ljava/lang/String;

.field private zzanr:Ljava/lang/Integer;

.field private zzans:[I

.field private zzant:Lcom/google/android/gms/internal/ads/zzis;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanr:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzeby:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzebt:I

    return-void
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzij;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_c0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9c

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_33

    const/16 v1, 0x22

    if-eq v0, v1, :cond_22

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbr(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzagn()I

    move-result v4

    if-lez v4, :cond_4c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_4c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    if-nez v1, :cond_55

    const/4 v4, 0x0

    goto :goto_56

    :cond_55
    array-length v4, v1

    :goto_56
    add-int/2addr v3, v4

    new-array v5, v3, [I

    if-eqz v4, :cond_5e

    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5e
    :goto_5e
    if-ge v4, v3, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_69
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbs(I)V

    goto :goto_0

    :cond_6f
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    if-nez v1, :cond_79

    const/4 v3, 0x0

    goto :goto_7a

    :cond_79
    array-length v3, v1

    :goto_7a
    add-int/2addr v0, v3

    new-array v4, v0, [I

    if-eqz v3, :cond_82

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_82
    :goto_82
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_92

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    aput v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    goto/16 :goto_0

    :cond_9c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_a0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanr:Ljava/lang/Integer;
    :try_end_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_ae} :catch_b0

    goto/16 :goto_0

    :catch_b0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :cond_b8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanq:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c0
    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzij;->zzl(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzij;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanq:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanr:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    if-eqz v0, :cond_2a

    array-length v0, v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2a

    const/4 v2, 0x3

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_32

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_32
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanq:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzanr:Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    if-eqz v1, :cond_39

    array-length v1, v1

    if-lez v1, :cond_39

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzij;->zzans:[I

    array-length v5, v4

    if-ge v1, v5, :cond_34

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzce(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_34
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_43

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_43
    return v0
.end method
