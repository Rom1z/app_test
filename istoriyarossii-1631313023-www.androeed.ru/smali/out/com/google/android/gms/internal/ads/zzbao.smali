.class Lcom/google/android/gms/internal/ads/zzbao;
.super Lcom/google/android/gms/internal/ads/zzban;


# instance fields
.field protected final zzdpw:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzban;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbah;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz v0, :cond_3d

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbao;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->zzabg()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzabg()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(Lcom/google/android/gms/internal/ads/zzbah;II)Z

    move-result p1

    return p1

    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    array-length v0, v0

    return v0
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbag;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbag;->zzb([BII)V

    return-void
.end method

.method protected zza([BIII)V
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbah;II)Z
    .registers 9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p2

    if-gt p3, p2, :cond_66

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p2

    if-gt p3, p2, :cond_41

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzbao;

    const/4 v0, 0x0

    if-eqz p2, :cond_34

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbao;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p1

    :goto_24
    if-ge p3, v2, :cond_32

    aget-byte v3, p2, p3

    aget-byte v4, v1, p1

    if-eq v3, v4, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_32
    const/4 p1, 0x1

    return p1

    :cond_34
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzbah;->zzk(II)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzbah;->zzk(II)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbah;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    const/16 v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ran off end of other: 0, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p2

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzabe()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbem;->zzf([BII)Z

    move-result v0

    return v0
.end method

.method public final zzabf()Lcom/google/android/gms/internal/ads/zzbaq;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbaq;->zza([BIIZ)Lcom/google/android/gms/internal/ads/zzbaq;

    move-result-object v0

    return-object v0
.end method

.method protected zzabh()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzbn(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final zzc(III)I
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/ads/zzbah;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzd(III)I

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    return-object p1

    :cond_e
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbak;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v1

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbak;-><init>([BII)V

    return-object p2
.end method
