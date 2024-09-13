.class public Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field private static final zzvf:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzvg:Ljavax/net/ssl/SSLSocketFactory;

.field private zzvh:Ljavax/net/ssl/SSLSocketFactory;

.field private zzvi:[Ljavax/net/ssl/TrustManager;

.field private zzvj:[Ljavax/net/ssl/KeyManager;

.field private zzvk:[B

.field private zzvl:[B

.field private zzvm:Ljava/security/PrivateKey;

.field private final zzvn:I

.field private final zzvo:Z

.field private final zzvp:Z

.field private final zzvq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/google/android/gms/common/net/zza;

    invoke-direct {v1}, Lcom/google/android/gms/common/net/zza;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvf:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvg:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvi:[Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvj:[Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvo:Z

    iput-boolean p4, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvp:Z

    iput-object p5, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvq:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Landroid/content/Context;I)Ljavax/net/SocketFactory;
    .registers 9

    new-instance v6, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(Landroid/content/Context;IZZLjava/lang/String;)V

    return-object v6
.end method

.method public static getDefaultWithCacheDir(ILandroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 10

    new-instance v6, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p1

    move v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(Landroid/content/Context;IZZLjava/lang/String;)V

    return-object v6
.end method

.method public static getDefaultWithSessionCache(ILandroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 9

    new-instance v6, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(Landroid/content/Context;IZZLjava/lang/String;)V

    return-object v6
.end method

.method public static getInsecure(Landroid/content/Context;IZ)Ljavax/net/ssl/SSLSocketFactory;
    .registers 10

    new-instance v6, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(Landroid/content/Context;IZZLjava/lang/String;)V

    return-object v6
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_3e

    check-cast p0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-nez p0, :cond_35

    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v0, "Cannot verify hostname: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_2c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_31
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    return-void

    :cond_36
    new-instance p0, Ljavax/net/ssl/SSLException;

    const-string p1, "Cannot verify SSL socket without session"

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempt to verify non-SSL socket"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Ljava/net/Socket;I)V
    .registers 8

    if-eqz p0, :cond_81

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHandshakeTimeout"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1f} :catch_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1f} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_81

    :catch_20
    move-exception p1

    goto :goto_23

    :catch_22
    move-exception p1

    :goto_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement setSocketHandshakeTimeout"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_58

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setSocketHandshakeTimeout on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_81
    :goto_81
    return-void
.end method

.method private static zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V
    .registers 8

    if-eqz p0, :cond_7d

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setChannelIdPrivateKey"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/security/PrivateKey;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_7d

    :catch_1c
    move-exception p1

    goto :goto_1f

    :catch_1e
    move-exception p1

    :goto_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement setChannelIdPrivateKey"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_54

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setChannelIdPrivateKey on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7d
    :goto_7d
    return-void
.end method

.method private static zza(Ljava/net/Socket;[B)V
    .registers 8

    if-eqz p0, :cond_7d

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setNpnProtocols"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_7d

    :catch_1c
    move-exception p1

    goto :goto_1f

    :catch_1e
    move-exception p1

    :goto_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement setNpnProtocols"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_54

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setNpnProtocols on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7d
    :goto_7d
    return-void
.end method

.method private static varargs zza([[B)[B
    .registers 11

    array-length v0, p0

    if-eqz v0, :cond_56

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_34

    aget-object v4, p0, v2

    array-length v5, v4

    if-eqz v5, :cond_1a

    array-length v5, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1a

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length v0, v4

    const/16 v1, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "s.length == 0 || s.length > 255: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-array v0, v3, [B

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_39
    if-ge v3, v2, :cond_55

    aget-object v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    array-length v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    array-length v4, v5

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v4, :cond_51

    aget-byte v8, v5, v7

    add-int/lit8 v9, v6, 0x1

    aput-byte v8, v0, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_45

    :cond_51
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_39

    :cond_55
    return-object v0

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.length == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/net/Socket;[B)V
    .registers 8

    if-eqz p0, :cond_7d

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAlpnProtocols"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_1b} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_7d

    :catch_1c
    move-exception p1

    goto :goto_1f

    :catch_1e
    move-exception p1

    :goto_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement setAlpnProtocols"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_54

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setAlpnProtocols on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7d
    :goto_7d
    return-void
.end method

.method private final declared-synchronized zzcx()Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvp:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvg:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_22

    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->getInstance()Lcom/google/android/gms/common/net/SocketFactoryCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvj:[Ljavax/net/ssl/KeyManager;

    sget-object v3, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvf:[Ljavax/net/ssl/TrustManager;

    iget-boolean v4, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvo:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->makeSocketFactory(Landroid/content/Context;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvg:Ljavax/net/ssl/SSLSocketFactory;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvg:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_5a

    monitor-exit p0

    return-object v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvq:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_56

    invoke-static {}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->getInstance()Lcom/google/android/gms/common/net/SocketFactoryCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvj:[Ljavax/net/ssl/KeyManager;

    iget-object v3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvi:[Ljavax/net/ssl/TrustManager;

    iget-object v4, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->makeSocketFactoryWithCacheDir(Landroid/content/Context;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_3e
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_56

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_56

    invoke-static {}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->getInstance()Lcom/google/android/gms/common/net/SocketFactoryCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvj:[Ljavax/net/ssl/KeyManager;

    iget-object v3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvi:[Ljavax/net/ssl/TrustManager;

    iget-boolean v4, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvo:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/net/SocketFactoryCreator;->makeSocketFactory(Landroid/content/Context;[Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_3e

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_58
    .catchall {:try_start_26 .. :try_end_58} :catchall_5a

    monitor-exit p0

    return-object v0

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {p2, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {p2, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {p2, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {p2, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvp:Z

    if-eqz v0, :cond_23

    invoke-static {p2, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_23
    return-object p2
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {p2, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {p2, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {p2, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {p2, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    iget-boolean p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvp:Z

    if-eqz p3, :cond_23

    invoke-static {p2, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_23
    return-object p2
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object p2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    invoke-static {p1, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;[B)V

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    invoke-static {p1, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzb(Ljava/net/Socket;[B)V

    iget p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvn:I

    invoke-static {p1, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;I)V

    iget-object p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    invoke-static {p1, p3}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza(Ljava/net/Socket;Ljava/security/PrivateKey;)V

    iget-boolean p3, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvp:Z

    if-eqz p3, :cond_23

    invoke-static {p1, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_23
    return-object p1
.end method

.method public getAlpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAlpnSelectedProtocol"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement getAlpnSelectedProtocol"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_4e

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_4e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to invoke getAlpnSelectedProtocol on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNpnSelectedProtocol"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement getNpnSelectedProtocol"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_4e

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_4e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to invoke getNpnSelectedProtocol on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzcx()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlpnProtocols([[B)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza([[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvl:[B

    return-void
.end method

.method public setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvm:Ljava/security/PrivateKey;

    return-void
.end method

.method public setHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHostname"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_19} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p2

    goto :goto_1d

    :catch_1c
    move-exception p2

    :goto_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement setHostname"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_46
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_52

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setHostname on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvj:[Ljavax/net/ssl/KeyManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvg:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setNpnProtocols([[B)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zza([[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvk:[B

    return-void
.end method

.method public setSoWriteTimeout(Ljava/net/Socket;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setSoWriteTimeout"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p2

    goto :goto_21

    :catch_20
    move-exception p2

    :goto_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement setSoWriteTimeout"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4a
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/net/SocketException;

    if-nez v1, :cond_83

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5a

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setSoWriteTimeout on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_83
    check-cast v0, Ljava/net/SocketException;

    throw v0
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvi:[Ljavax/net/ssl/TrustManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->zzvh:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUseSessionTickets(Ljava/net/Socket;Z)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1d} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p2

    goto :goto_21

    :catch_20
    move-exception p2

    :goto_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement setUseSessionTickets"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4a
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_56

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to invoke setUseSessionTickets on "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
