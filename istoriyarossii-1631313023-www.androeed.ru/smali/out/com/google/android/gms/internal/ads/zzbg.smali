.class public final Lcom/google/android/gms/internal/ads/zzbg;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbg;",
        ">;"
    }
.end annotation


# instance fields
.field public zzfe:Ljava/lang/Integer;

.field private zzff:Ljava/lang/Integer;

.field public zzgq:[B

.field public zzgv:[[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfl;->zzece:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgq:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzebt:I

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbg;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_7e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_51

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x18

    if-eq v0, v1, :cond_30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaz;->zzf(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzfe:Ljava/lang/Integer;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2f} :catch_43

    goto :goto_0

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaz;->zze(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzff:Ljava/lang/Integer;
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_42} :catch_43

    goto :goto_0

    :catch_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_4a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgq:[B

    goto :goto_0

    :cond_51
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_5c

    const/4 v3, 0x0

    goto :goto_5d

    :cond_5c
    array-length v3, v1

    :goto_5d
    add-int/2addr v0, v3

    new-array v4, v0, [[B

    if-eqz v3, :cond_65

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_65
    :goto_65
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_75

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    :cond_75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    goto :goto_0

    :cond_7e
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbg;->zzd(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbg;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgq:[B

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzff:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzfe:Ljava/lang/Integer;

    if-eqz v0, :cond_38

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_38
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    if-eqz v1, :cond_25

    array-length v1, v1

    if-lez v1, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgv:[[B

    array-length v5, v4

    if-ge v1, v5, :cond_21

    aget-object v4, v4, v1

    if-eqz v4, :cond_1e

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzv([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_21
    add-int/2addr v0, v2

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :cond_25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzgq:[B

    if-eqz v1, :cond_2f

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzff:Ljava/lang/Integer;

    if-eqz v1, :cond_3d

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbg;->zzfe:Ljava/lang/Integer;

    if-eqz v1, :cond_4b

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4b
    return v0
.end method
