.class Landroidx/media/MediaSessionManagerImplApi21;
.super Landroidx/media/MediaSessionManagerImplBase;
.source "MediaSessionManagerImplApi21.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/media/MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplApi21;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasMediaControlPermission(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 5

    invoke-virtual {p0}, Landroidx/media/MediaSessionManagerImplApi21;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v1

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result p1

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method


# virtual methods
.method public isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroidx/media/MediaSessionManagerImplApi21;->hasMediaControlPermission(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroidx/media/MediaSessionManagerImplBase;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
