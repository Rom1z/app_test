.class public final Lcom/google/android/gms/internal/ads/zzil;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzil;",
        ">;"
    }
.end annotation


# instance fields
.field private zzant:Lcom/google/android/gms/internal/ads/zzis;

.field private zzanu:Ljava/lang/Integer;

.field private zzanv:Lcom/google/android/gms/internal/ads/zzij;

.field private zzanw:[Lcom/google/android/gms/internal/ads/zzir;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzir;->zzhs()[Lcom/google/android/gms/internal/ads/zzir;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanu:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzebt:I

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzil;
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

    if-eqz v0, :cond_90

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_45

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    goto :goto_8b

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanu:Ljava/lang/Integer;
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_3d} :catch_3e

    goto :goto_0

    :catch_3e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_45
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

    const/4 v2, 0x0

    if-nez v1, :cond_50

    const/4 v3, 0x0

    goto :goto_51

    :cond_50
    array-length v3, v1

    :goto_51
    add-int/2addr v0, v3

    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzir;

    if-eqz v3, :cond_59

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_59
    :goto_59
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzir;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_6f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzir;-><init>()V

    aput-object v0, v4, v3

    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_0

    :cond_7e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    if-nez v0, :cond_89

    new-instance v0, Lcom/google/android/gms/internal/ads/zzij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzij;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    :cond_89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    :goto_8b
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :cond_90
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzil;->zzn(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzil;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanu:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_34
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanv:Lcom/google/android/gms/internal/ads/zzij;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanw:[Lcom/google/android/gms/internal/ads/zzir;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzanu:Ljava/lang/Integer;

    if-eqz v1, :cond_36

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzant:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_40

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    return v0
.end method
