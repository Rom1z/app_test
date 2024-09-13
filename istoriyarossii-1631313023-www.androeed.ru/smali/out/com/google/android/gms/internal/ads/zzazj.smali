.class public final Lcom/google/android/gms/internal/ads/zzazj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauk;


# instance fields
.field private zzdoj:Ljavax/crypto/Mac;

.field private final zzdok:I

.field private final zzdol:Ljava/lang/String;

.field private final zzdom:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-lt p3, v0, :cond_88

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_90

    goto :goto_33

    :sswitch_13
    const-string v1, "HMACSHA512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_33

    :cond_1c
    const/4 v0, 0x2

    goto :goto_33

    :sswitch_1e
    const-string v1, "HMACSHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_33

    :cond_27
    const/4 v0, 0x1

    goto :goto_33

    :sswitch_29
    const-string v1, "HMACSHA1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    const-string v1, "tag size too big"

    packed-switch v0, :pswitch_data_9e

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    const-string p3, "unknown Hmac algorithm: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_50
    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_54
    const/16 v0, 0x40

    if-gt p3, v0, :cond_59

    goto :goto_6e

    :cond_59
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5f
    const/16 v0, 0x20

    if-gt p3, v0, :cond_64

    goto :goto_6e

    :cond_64
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6a
    const/16 v0, 0x14

    if-gt p3, v0, :cond_82

    :goto_6e
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdol:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdok:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdom:Ljava/security/Key;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzayy;->zzdoa:Lcom/google/android/gms/internal/ads/zzayy;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzayy;->zzek(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdoj:Ljavax/crypto/Mac;

    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void

    :cond_82
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_90
    .sparse-switch
        -0x6ca99674 -> :sswitch_29
        0x176240ee -> :sswitch_1e
        0x17624bb1 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_5f
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method public final zzg([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdoj:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_18

    :catch_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayy;->zzdoa:Lcom/google/android/gms/internal/ads/zzayy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayy;->zzek(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdom:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_18
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdok:I

    new-array p1, p1, [B

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazj;->zzdok:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
