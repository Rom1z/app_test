.class public final Lcom/google/android/gms/internal/ads/zzbfp;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfp;",
        ">;"
    }
.end annotation


# instance fields
.field private zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

.field public zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

.field private zzedb:[B

.field private zzedc:[B

.field private zzedd:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfo;->zzagt()[Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzebt:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
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

    if-eqz v0, :cond_85

    const/16 v1, 0xa

    if-eq v0, v1, :cond_73

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_33

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    goto :goto_0

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    goto :goto_0

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    goto :goto_0

    :cond_3a
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    const/4 v2, 0x0

    if-nez v1, :cond_45

    const/4 v3, 0x0

    goto :goto_46

    :cond_45
    array-length v3, v1

    :goto_46
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v3, :cond_4e

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_64

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    goto :goto_0

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-nez v0, :cond_7e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    :cond_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :cond_85
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    if-eqz v0, :cond_28

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_3c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    if-eqz v1, :cond_32

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    return v0
.end method
