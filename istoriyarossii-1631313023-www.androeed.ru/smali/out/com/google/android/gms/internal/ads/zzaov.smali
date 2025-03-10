.class public final Lcom/google/android/gms/internal/ads/zzaov;
.super Lcom/google/android/gms/internal/ads/zzapg;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzcwo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

.field private final zzcwq:Z

.field private zzcwr:I

.field private zzcws:I

.field private zzcwt:Landroid/media/MediaPlayer;

.field private zzcwu:Landroid/net/Uri;

.field private zzcwv:I

.field private zzcww:I

.field private zzcwx:I

.field private zzcwy:I

.field private zzcwz:I

.field private zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

.field private zzcxb:Z

.field private zzcxc:I

.field private zzcxd:Lcom/google/android/gms/internal/ads/zzapf;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwo:Ljava/util/Map;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_43

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_bf

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bf
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/zzapv;Lcom/google/android/gms/internal/ads/zzapx;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwr:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzaov;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwq:Z

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzapg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxd:Lcom/google/android/gms/internal/ads/zzapf;

    return-object p0
.end method

.method private final zza(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-void

    :cond_8
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void
.end method

.method private final zzag(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zztt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxl:Lcom/google/android/gms/internal/ads/zzapz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapz;->zztt()V

    goto :goto_1c

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwr:I

    if-ne v1, v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zztu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxl:Lcom/google/android/gms/internal/ads/zzapz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapz;->zztu()V

    :cond_1c
    :goto_1c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwr:I

    return-void
.end method

.method private final zzag(Z)V
    .registers 4

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzti()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    if-eqz p1, :cond_27

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    :cond_27
    return-void
.end method

.method private final zzsq()V
    .registers 7

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwu:Landroid/net/Uri;

    if-eqz v1, :cond_c9

    if-nez v0, :cond_11

    goto/16 :goto_c9

    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(Z)V

    const/4 v2, 0x1

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfb()Lcom/google/android/gms/ads/internal/overlay/zzu;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwx:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxb:Z

    if-eqz v3, :cond_6f

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzapu;->zza(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapu;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapu;->zztj()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_67

    move-object v0, v3

    goto :goto_6f

    :cond_67
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapu;->zzti()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    :cond_6f
    :goto_6f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwu:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfc()Lcom/google/android/gms/ads/internal/overlay/zzv;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9a} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_9a} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_9a} :catch_9b

    return-void

    :catch_9b
    move-exception v0

    goto :goto_a0

    :catch_9d
    move-exception v0

    goto :goto_a0

    :catch_9f
    move-exception v0

    :goto_a0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwu:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaov;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_c9
    :goto_c9
    return-void
.end method

.method private final zzsr()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwq:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_59

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzer()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzst()V

    :cond_59
    return-void
.end method

.method private final zzss()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method public final getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwx:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const-string p1, "AdMediaPlayerView completion"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoy;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaov;->zzcwo:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    sget-object p3, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/zzaov;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzaov;->zzcwo:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaov;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzaov;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    if-lez v2, :cond_83

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    if-lez v2, :cond_83

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    if-nez v2, :cond_83

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_47

    if-ne v1, v2, :cond_47

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_3c

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    goto :goto_6a

    :cond_3c
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_67

    mul-int v2, v2, p1

    div-int v1, v2, v0

    goto :goto_58

    :cond_47
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_5a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_57

    if-le v0, p2, :cond_57

    goto :goto_67

    :cond_57
    move v1, v0

    :goto_58
    move v0, p1

    goto :goto_83

    :cond_5a
    if-ne v1, v2, :cond_6c

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_69

    if-le v1, p1, :cond_69

    :cond_67
    :goto_67
    move v0, p1

    goto :goto_6a

    :cond_69
    move v0, v1

    :goto_6a
    move v1, p2

    goto :goto_83

    :cond_6c
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    if-ne v1, v3, :cond_78

    if-le v4, p2, :cond_78

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_7a

    :cond_78
    move v1, v2

    move p2, v4

    :goto_7a
    if-ne v0, v3, :cond_69

    if-le v1, p1, :cond_69

    mul-int v4, v4, p1

    div-int v1, v4, v2

    goto :goto_58

    :cond_83
    :goto_83
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaov;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz p1, :cond_8d

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzapu;->zzh(II)V

    :cond_8d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_a6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwy:I

    if-lez p1, :cond_99

    if-ne p1, v0, :cond_9f

    :cond_99
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwz:I

    if-lez p1, :cond_a2

    if-eq p1, v1, :cond_a2

    :cond_9f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzsr()V

    :cond_a2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwy:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwz:I

    :cond_a6
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapx;->zzsv()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaox;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaox;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    if-eqz p1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzapg;->seekTo(I)V

    :cond_2b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzsr()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_58

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapg;->play()V

    :cond_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapg;->zzst()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const-string p1, "AdMediaPlayerView surface created"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzsq()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzapa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzapa;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const-string p1, "AdMediaPlayerView surface destroyed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapu;->zzti()V

    :cond_1a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzapc;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string p1, "AdMediaPlayerView surface changed"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    if-ne v2, p2, :cond_18

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    if-ne v2, p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    if-eqz v0, :cond_2b

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    if-eqz p1, :cond_28

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzapg;->seekTo(I)V

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapg;->play()V

    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz p1, :cond_32

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzapu;->zzh(II)V

    :cond_32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapb;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzapb;-><init>(Lcom/google/android/gms/internal/ads/zzaov;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzapx;->zzc(Lcom/google/android/gms/internal/ads/zzapg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxk:Lcom/google/android/gms/internal/ads/zzapp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxd:Lcom/google/android/gms/internal/ads/zzapf;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzapp;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzapf;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcww:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwv:I

    if-eqz p2, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->requestLayout()V

    :cond_33
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaow;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lcom/google/android/gms/internal/ads/zzaov;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzapg;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .registers 4

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzape;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzape;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    return-void
.end method

.method public final play()V
    .registers 4

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxk:Lcom/google/android/gms/internal/ads/zzapp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzsw()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzapd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    return-void
.end method

.method public final seekTo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzss()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    return-void

    :cond_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhl;->zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhl;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzhl;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwu:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxc:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzsq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->invalidate()V

    return-void
.end method

.method public final stop()V
    .registers 2

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwt:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zzag(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcws:I

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcwp:Lcom/google/android/gms/internal/ads/zzapx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapx;->onStop()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxa:Lcom/google/android/gms/internal/ads/zzapu;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapu;->zzb(FF)V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxd:Lcom/google/android/gms/internal/ads/zzapf;

    return-void
.end method

.method final synthetic zzah(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxd:Lcom/google/android/gms/internal/ads/zzapf;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzapf;->onWindowVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public final zzsp()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxb:Z

    if-eqz v0, :cond_7

    const-string v0, " spherical"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "MediaPlayer"

    if-eqz v1, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzst()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzcxl:Lcom/google/android/gms/internal/ads/zzapz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapz;->getVolume()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(F)V

    return-void
.end method
