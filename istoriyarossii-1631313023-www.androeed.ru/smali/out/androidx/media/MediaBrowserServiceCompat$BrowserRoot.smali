.class public final Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrowserRoot"
.end annotation


# static fields
.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "android.service.media.extra.OFFLINE"

.field public static final EXTRA_RECENT:Ljava/lang/String; = "android.service.media.extra.RECENT"

.field public static final EXTRA_SUGGESTED:Ljava/lang/String; = "android.service.media.extra.SUGGESTED"

.field public static final EXTRA_SUGGESTION_KEYWORDS:Ljava/lang/String; = "android.service.media.extra.SUGGESTION_KEYWORDS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;->mRootId:Ljava/lang/String;

    return-object v0
.end method
