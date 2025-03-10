.class public final Lcom/google/android/gms/internal/ads/zzck;
.super Ljava/lang/Object;


# static fields
.field private static zzrf:Ljavax/crypto/Cipher;

.field private static final zzrg:Ljava/lang/Object;

.field private static final zzrh:Ljava/lang/Object;


# instance fields
.field private final zzre:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->zzrg:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->zzrh:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzck;->zzre:Ljava/security/SecureRandom;

    return-void
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzck;->zzrh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzck;->zzrf:Ljavax/crypto/Cipher;

    if-nez v1, :cond_f

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzck;->zzrf:Ljavax/crypto/Cipher;

    :cond_f
    sget-object v1, Lcom/google/android/gms/internal/ads/zzck;->zzrf:Ljavax/crypto/Cipher;

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public final zza([BLjava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcl;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7f

    const/4 v0, 0x0

    :try_start_6
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Z)[B

    move-result-object p2

    array-length v0, p2

    if-le v0, v1, :cond_48

    array-length v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array v2, v1, [B

    array-length p2, p2

    sub-int/2addr p2, v1

    new-array p2, p2, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzck;->zzrg:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_2e} :catch_78
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_2e} :catch_71
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_2e} :catch_6a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_2e} :catch_63
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_2e} :catch_5c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_2e} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2e} :catch_4e

    :try_start_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzck;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzck;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_45
    move-exception p2

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_45

    :try_start_47
    throw p2

    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;)V

    throw p1
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4e} :catch_78
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_4e} :catch_71
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_47 .. :try_end_4e} :catch_6a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_47 .. :try_end_4e} :catch_63
    .catch Ljavax/crypto/BadPaddingException; {:try_start_47 .. :try_end_4e} :catch_5c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_47 .. :try_end_4e} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_55
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_5c
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_63
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_6a
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_71
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_78
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :cond_7f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;)V

    throw p1
.end method

.method public final zzb([B[B)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcl;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6b

    :try_start_5
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzck;->zzrg:Ljava/lang/Object;

    monitor-enter p1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_64
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_f} :catch_5d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_f} :catch_56
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_f} :catch_4f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_f} :catch_48

    :try_start_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzck;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzck;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzck;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_45

    :try_start_29
    array-length p1, p2

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbi;->zza([BZ)Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_44} :catch_64
    .catch Ljava/security/InvalidKeyException; {:try_start_29 .. :try_end_44} :catch_5d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_29 .. :try_end_44} :catch_56
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_29 .. :try_end_44} :catch_4f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_29 .. :try_end_44} :catch_48

    return-object p1

    :catchall_45
    move-exception p2

    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p2
    :try_end_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_48} :catch_64
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_48} :catch_5d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_47 .. :try_end_48} :catch_56
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_47 .. :try_end_48} :catch_4f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_47 .. :try_end_48} :catch_48

    :catch_48
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_4f
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_56
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_5d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :catch_64
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw p2

    :cond_6b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;)V

    throw p1
.end method

.method public final zzl(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcl;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Z)[B

    move-result-object p1

    array-length v1, p1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_23

    const/4 v1, 0x4

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_16
    if-ge v0, v2, :cond_22

    aget-byte p1, v1, v0

    xor-int/lit8 p1, p1, 0x44

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_22
    return-object v1

    :cond_23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;)V

    throw p1
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_29} :catch_29

    :catch_29
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(Lcom/google/android/gms/internal/ads/zzck;Ljava/lang/Throwable;)V

    throw v0
.end method
