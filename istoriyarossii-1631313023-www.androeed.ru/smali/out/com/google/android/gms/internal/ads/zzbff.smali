.class final Lcom/google/android/gms/internal/ads/zzbff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:Ljava/lang/Object;

.field private zzebq:Lcom/google/android/gms/internal/ads/zzbfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbfd<",
            "**>;"
        }
    .end annotation
.end field

.field private zzebr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbfk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    return-void
.end method

.method private final toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbff;->zzr()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzu([B)Lcom/google/android/gms/internal/ads/zzbfa;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-object v0
.end method

.method private final zzagp()Lcom/google/android/gms/internal/ads/zzbff;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbff;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    goto :goto_16

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v1, :cond_a3

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfi;

    :goto_26
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    goto/16 :goto_a3

    :cond_2a
    instance-of v2, v1, [B

    if-eqz v2, :cond_35

    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_35
    instance-of v2, v1, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    check-cast v1, [[B

    array-length v2, v1

    new-array v2, v2, [[B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    :goto_41
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    aget-object v4, v1, v3

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_51
    instance-of v2, v1, [Z

    if-eqz v2, :cond_5c

    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_5c
    instance-of v2, v1, [I

    if-eqz v2, :cond_67

    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_67
    instance-of v2, v1, [J

    if-eqz v2, :cond_72

    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_72
    instance-of v2, v1, [F

    if-eqz v2, :cond_7d

    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_7d
    instance-of v2, v1, [D

    if-eqz v2, :cond_88

    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_26

    :cond_88
    instance-of v2, v1, [Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v2, :cond_a3

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzbfi;

    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    :goto_93
    array-length v4, v1

    if-ge v3, v4, :cond_a3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbfi;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbfi;

    aput-object v4, v2, v3
    :try_end_a0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_a0} :catch_a4

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_a3
    :goto_a3
    return-object v0

    :catch_a4
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbff;->zzagp()Lcom/google/android/gms/internal/ads/zzbff;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbff;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbff;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    if-eq v0, v2, :cond_1b

    return v1

    :cond_1b
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfd;->zzebl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_3d

    check-cast v0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3d
    instance-of v1, v0, [I

    if-eqz v1, :cond_4c

    check-cast v0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_4c
    instance-of v1, v0, [J

    if-eqz v1, :cond_5b

    check-cast v0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_5b
    instance-of v1, v0, [F

    if-eqz v1, :cond_6a

    check-cast v0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_6a
    instance-of v1, v0, [D

    if-eqz v1, :cond_79

    check-cast v0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    :cond_79
    instance-of v1, v0, [Z

    if-eqz v1, :cond_88

    check-cast v0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    return p1

    :cond_88
    check-cast v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v0, :cond_a0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v1, :cond_a0

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a0
    :try_start_a0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_ad

    return p1

    :catch_ad
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_b

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfk;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbfk;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzde(I)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzw([B)V

    goto :goto_a

    :cond_21
    return-void

    :cond_22
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v1, :cond_39

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzi([BII)Lcom/google/android/gms/internal/ads/zzbez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v1

    array-length p1, p1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzce(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ne v1, p1, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    return-void

    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->zzagq()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p1

    throw p1

    :cond_39
    instance-of v0, v0, [Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_46

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_46
    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zzr()I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfk;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzbfk;->tag:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcl(I)I

    move-result v4

    add-int/2addr v4, v1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    array-length v3, v3

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_c

    :cond_25
    return v2

    :cond_26
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
