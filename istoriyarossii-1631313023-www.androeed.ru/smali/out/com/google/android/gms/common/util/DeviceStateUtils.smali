.class public final Lcom/google/android/gms/common/util/DeviceStateUtils;
.super Ljava/lang/Object;


# static fields
.field private static final filter:Landroid/content/IntentFilter;

.field private static zzzw:J

.field private static zzzx:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/util/DeviceStateUtils;->filter:Landroid/content/IntentFilter;

    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceState(Landroid/content/Context;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_38

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/util/DeviceStateUtils;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_20

    :cond_1a
    const-string v3, "plugged"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_20
    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    const/4 v2, 0x1

    :cond_26
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_31

    return v0

    :cond_31
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceStateUtils;->isInteractive(Landroid/os/PowerManager;)Z

    move-result p0

    shl-int/2addr p0, v3

    or-int/2addr p0, v2

    return p0

    :cond_38
    :goto_38
    return v0
.end method

.method public static declared-synchronized getPowerPercentage(Landroid/content/Context;)F
    .registers 7

    const-class v0, Lcom/google/android/gms/common/util/DeviceStateUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzw:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_1d

    sget v1, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1d

    sget p0, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_46

    monitor-exit v0

    return p0

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/common/util/DeviceStateUtils;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3c

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    sput v1, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F

    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzw:J

    sget p0, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_46

    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasConsentedNlp(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "network_location_opt_in"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/stable/zzg;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isCallActive(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static isInteractive(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceStateUtils;->isInteractive(Landroid/os/PowerManager;)Z

    move-result p0

    return p0
.end method

.method public static isInteractive(Landroid/os/PowerManager;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public static isUserSetupComplete(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v2, "user_setup_complete"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    return v1
.end method

.method public static declared-synchronized resetForTest()V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/util/DeviceStateUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_5
    sput-wide v1, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzw:J

    const/high16 v1, 0x7fc00000    # Float.NaN

    sput v1, Lcom/google/android/gms/common/util/DeviceStateUtils;->zzzx:F
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method
