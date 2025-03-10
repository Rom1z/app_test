.class public Lcom/google/android/gms/internal/ads/zzaqx;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final zzdbo:[Ljava/lang/String;

.field private static final zzdbp:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzaek:Z

.field private zzapt:Lcom/google/android/gms/internal/ads/zzjd;

.field private zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

.field private zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

.field private zzbmu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private zzbmw:Lcom/google/android/gms/ads/internal/zzx;

.field private zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

.field private zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

.field private zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

.field private zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field private zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzdbq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

.field private zzdbs:Lcom/google/android/gms/internal/ads/zzase;

.field private zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

.field private zzdbu:Z

.field private zzdbv:Z

.field private zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private zzdby:Z

.field private final zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

.field private zzdca:Lcom/google/android/gms/internal/ads/zzasg;

.field private zzdcb:Z

.field private zzdcc:Z

.field private zzdcd:I

.field private zzdce:Landroid/view/View$OnAttachStateChangeListener;

.field protected zzxd:Lcom/google/android/gms/internal/ads/zzait;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-string v0, "UNKNOWN"

    const-string v1, "HOST_LOOKUP"

    const-string v2, "UNSUPPORTED_AUTH_SCHEME"

    const-string v3, "AUTHENTICATION"

    const-string v4, "PROXY_AUTHENTICATION"

    const-string v5, "CONNECT"

    const-string v6, "IO"

    const-string v7, "TIMEOUT"

    const-string v8, "REDIRECT_LOOP"

    const-string v9, "UNSUPPORTED_SCHEME"

    const-string v10, "FAILED_SSL_HANDSHAKE"

    const-string v11, "BAD_URL"

    const-string v12, "FILE"

    const-string v13, "FILE_NOT_FOUND"

    const-string v14, "TOO_MANY_REQUESTS"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbo:[Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    const-string v2, "EXPIRED"

    const-string v3, "ID_MISMATCH"

    const-string v4, "UNTRUSTED"

    const-string v5, "DATE_INVALID"

    const-string v6, "INVALID"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbp:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzua()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzmw;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmw;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;ZLcom/google/android/gms/internal/ads/zzaak;Lcom/google/android/gms/internal/ads/zzaab;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;ZLcom/google/android/gms/internal/ads/zzaak;Lcom/google/android/gms/internal/ads/zzaab;)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzaek:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V
    .registers 6

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzait;->zzph()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p3, :cond_1d

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzait;->zzr(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzait;->zzph()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqz;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zznf()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzei()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_2d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v0, :cond_28

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v1, :cond_28

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->url:Ljava/lang/String;

    :cond_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzait;->zzcf(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaqx;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    return-void
.end method

.method private final zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzazy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_37

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_37

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    goto :goto_39

    :cond_37
    const-string p2, ""

    :goto_39
    const-string p3, "host"

    invoke-virtual {v5, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v4, "gmob-apps"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_ec

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_3d
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_e4

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzamy;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v5, v3, :cond_dc

    const/16 v3, 0x190

    if-ge v5, v3, :cond_dc

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d4

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_89

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-object v4

    :cond_89
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    const-string v6, "https"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    const-string p1, "Unsupported scheme: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b0

    :cond_aa
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_b0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-object v4

    :cond_b4
    const-string v0, "Redirecting to "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c5

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cb

    :cond_c5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_cb
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v5

    goto/16 :goto_7

    :cond_d4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dc
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzb(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_e4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ec
    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzi(Landroid/net/Uri;)V
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_96

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "Received GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    goto :goto_3d

    :cond_7f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzv;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_83

    :cond_95
    return-void

    :cond_96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    return-void
.end method

.method private final zzuy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzvd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcb:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcd:I

    if-lez v1, :cond_10

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcc:Z

    if-eqz v1, :cond_1a

    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcc:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzasd;->zze(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzup()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_38

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzi(Landroid/net/Uri;)V

    :cond_38
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqw;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuk()V

    monitor-exit p1

    return-void

    :cond_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_29

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcb:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzase;->zzly()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    :cond_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzvd()V

    return-void

    :catchall_29
    move-exception p2

    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-gez p2, :cond_d

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbo:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_d

    aget-object v0, v1, v0

    goto :goto_11

    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbp:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v0, v1, v0

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzakq;->zza(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssl_err"

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public final reset()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzait;->zzpj()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzaek:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbv:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdby:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v2, :cond_38

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 14

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzi(Landroid/net/Uri;)V

    goto/16 :goto_118

    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_8b

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5e

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v1, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v1, 0x1

    :goto_5f
    if-eqz v1, :cond_8b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz v0, :cond_86

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_83

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzait;->zzcf(Ljava/lang/String;)V

    :cond_83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    :cond_86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_fe

    :try_start_97
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object p1

    if-eqz p1, :cond_d8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzci;->zzb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_bb
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_97 .. :try_end_bb} :catch_bd

    move-object v0, p1

    goto :goto_d8

    :catch_bd
    nop

    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_cf

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d5

    :cond_cf
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_d5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_d8
    :goto_d8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    if-eqz p1, :cond_e9

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->zzcy()Z

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_e9

    :cond_e3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzx;->zzs(Ljava/lang/String;)V

    goto :goto_118

    :cond_e9
    :goto_e9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_118

    :cond_fe
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_115

    :cond_10f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_115
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :goto_118
    return v2
.end method

.method public final zza(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaak;->zzc(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaab;->zza(IIZ)V

    :cond_c
    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbv:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuo()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v3, v1

    goto :goto_1c

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    move-object v3, v2

    :goto_1c
    if-eqz v0, :cond_20

    move-object v4, v1

    goto :goto_23

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    move-object v4, v0

    :goto_23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbr:Lcom/google/android/gms/internal/ads/zzasd;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzase;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbs:Lcom/google/android/gms/internal/ads/zzase;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdca:Lcom/google/android/gms/internal/ads/zzasg;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;ZLcom/google/android/gms/ads/internal/gmsg/zzz;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaam;Lcom/google/android/gms/internal/ads/zzait;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move-object/from16 v1, p10

    if-nez p8, :cond_1c

    new-instance v2, Lcom/google/android/gms/ads/internal/zzx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/ads/internal/zzx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzait;Lcom/google/android/gms/internal/ads/zzael;)V

    move-object v11, v2

    goto :goto_1e

    :cond_1c
    move-object/from16 v11, p8

    :goto_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaab;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-direct {v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaam;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzayf:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zza;

    invoke-direct {v1, v12}, Lcom/google/android/gms/ads/internal/gmsg/zza;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzb;)V

    const-string v2, "/adMetadata"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_45
    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzc;

    invoke-direct {v1, v13}, Lcom/google/android/gms/ads/internal/gmsg/zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzd;)V

    const-string v2, "/appEvent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblx:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/backButton"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbly:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/refresh"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblo:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/canOpenURLs"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblp:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/canOpenIntents"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblq:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/click"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblr:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbls:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/customClose"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmb:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/instrument"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmd:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/delayPageLoaded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbme:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/delayPageClosed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmf:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/getLocationInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblt:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/httpTrack"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblu:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/log"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzac;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {v1, v11, v2, v15}, Lcom/google/android/gms/ads/internal/gmsg/zzac;-><init>(Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzaam;)V

    const-string v2, "/mraid"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbz:Lcom/google/android/gms/internal/ads/zzaak;

    const-string v2, "/mraidLoaded"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    new-instance v10, Lcom/google/android/gms/ads/internal/gmsg/zzad;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    move-object v1, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v16, v9

    move-object/from16 v9, p3

    move-object v15, v10

    move-object v10, v11

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/ads/internal/gmsg/zzad;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaab;)V

    const-string v1, "/open"

    invoke-virtual {v0, v1, v15}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaql;-><init>()V

    const-string v2, "/precache"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblw:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/touch"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzblz:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/video"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbma:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    const-string v2, "/videoMeta"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12d

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzab;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;-><init>(Landroid/content/Context;)V

    const-string v2, "/logScionEvent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_12d
    if-eqz v14, :cond_139

    new-instance v1, Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-direct {v1, v14}, Lcom/google/android/gms/ads/internal/gmsg/zzy;-><init>(Lcom/google/android/gms/ads/internal/gmsg/zzz;)V

    const-string v2, "/setInterstitialProperties"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_139
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    move-object/from16 v2, v17

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmu:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public final zza(ZI)V
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    :goto_1a
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzarb;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object v3, v2

    goto :goto_1c

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    :goto_1c
    if-eqz v1, :cond_20

    move-object v4, v2

    goto :goto_2a

    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzarb;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    move-object v4, v1

    :goto_2a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->zztq()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzaqw;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzang;)V

    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzah(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    return-void
.end method

.method public final zzb(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzb(II)V

    :cond_7
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbq:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method protected final zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhl;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhl;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeq()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhl;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzhi()Z

    move-result v3

    if-eqz v3, :cond_38

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzhj()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzazn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zze(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_58
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_54} :catch_56

    return-object p1

    :cond_55
    return-object v1

    :catch_56
    move-exception p1

    goto :goto_59

    :catch_58
    move-exception p1

    :goto_59
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzfz()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzaek:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zznk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbu:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzaek:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final zzut()Lcom/google/android/gms/ads/internal/zzx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    return-object v0
.end method

.method public final zzuu()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbv:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzuv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbw:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzuw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbx:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzux()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdby:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzuz()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzait;I)V

    return-void

    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuy()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzara;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzara;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Lcom/google/android/gms/internal/ads/zzait;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdce:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2b
    return-void
.end method

.method public final zzva()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdby:Z

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcd:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzvd()V

    return-void

    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public final zzvb()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcd:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzvd()V

    return-void
.end method

.method public final zzvc()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdcc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzvd()V

    return-void
.end method

.method public final zzve()Lcom/google/android/gms/internal/ads/zzasg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdca:Lcom/google/android/gms/internal/ads/zzasg;

    return-object v0
.end method

.method public final zzvf()Lcom/google/android/gms/internal/ads/zzait;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    return-object v0
.end method

.method final synthetic zzvg()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznk()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasf;->zzdb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zzdbt:Lcom/google/android/gms/internal/ads/zzasf;

    :cond_1a
    return-void
.end method
