.class public final Landroidx/media/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaSessionManager$RemoteUserInfo;,
        Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;,
        Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaSessionManager"

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sSessionManager:Landroidx/media/MediaSessionManager;


# instance fields
.field mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaSessionManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media/MediaSessionManager;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_11

    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28;

    invoke-direct {v0, p1}, Landroidx/media/MediaSessionManagerImplApi28;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager;->mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1f

    new-instance v0, Landroidx/media/MediaSessionManagerImplApi21;

    invoke-direct {v0, p1}, Landroidx/media/MediaSessionManagerImplApi21;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager;->mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    goto :goto_26

    :cond_1f
    new-instance v0, Landroidx/media/MediaSessionManagerImplBase;

    invoke-direct {v0, p1}, Landroidx/media/MediaSessionManagerImplBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager;->mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    :goto_26
    return-void
.end method

.method public static getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;
    .registers 3

    sget-object v0, Landroidx/media/MediaSessionManager;->sSessionManager:Landroidx/media/MediaSessionManager;

    if-nez v0, :cond_1e

    sget-object v1, Landroidx/media/MediaSessionManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroidx/media/MediaSessionManager;->sSessionManager:Landroidx/media/MediaSessionManager;

    if-nez v0, :cond_19

    new-instance v0, Landroidx/media/MediaSessionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media/MediaSessionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/media/MediaSessionManager;->sSessionManager:Landroidx/media/MediaSessionManager;

    sget-object p0, Landroidx/media/MediaSessionManager;->sSessionManager:Landroidx/media/MediaSessionManager;

    move-object v0, p0

    :cond_19
    monitor-exit v1

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    :goto_1e
    return-object v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/media/MediaSessionManager;->mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    invoke-interface {v0}, Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroidx/media/MediaSessionManager;->mImpl:Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;

    iget-object p1, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0, p1}, Landroidx/media/MediaSessionManager$MediaSessionManagerImpl;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result p1

    return p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "userInfo should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
