.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;


# static fields
.field private static zzaay:Landroid/content/Context;

.field private static zzaaz:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 5

    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaay:Landroid/content/Context;

    if-eqz v2, :cond_17

    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaaz:Ljava/lang/Boolean;

    if-eqz v3, :cond_17

    if-ne v2, v1, :cond_17

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_50

    monitor-exit v0

    return p0

    :cond_17
    const/4 v2, 0x0

    :try_start_18
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaaz:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    :goto_2c
    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaaz:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_50

    goto :goto_46

    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaaz:Ljava/lang/Boolean;
    :try_end_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_3f} :catch_40
    .catchall {:try_start_2f .. :try_end_3f} :catchall_50

    goto :goto_46

    :catch_40
    const/4 p0, 0x0

    :try_start_41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2c

    :goto_46
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaay:Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzaaz:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_50

    monitor-exit v0

    return p0

    :catchall_50
    move-exception p0

    monitor-exit v0

    throw p0
.end method
