.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/util/CrashUtils$ErrorDialogData;
    }
.end annotation


# static fields
.field private static final zzzc:[Ljava/lang/String;

.field private static zzzd:Landroid/os/DropBoxManager;

.field private static zzze:Z

.field private static zzzf:Z

.field private static zzzg:Z

.field private static zzzh:I

.field private static zzzi:I

.field private static zzzj:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "android."

    const-string v1, "com.android."

    const-string v2, "dalvik."

    const-string v3, "java."

    const-string v4, "javax."

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzc:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzd:Landroid/os/DropBoxManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzze:Z

    const/4 v1, -0x1

    sput v1, Lcom/google/android/gms/common/util/CrashUtils;->zzzh:I

    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzi:I

    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzj:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .registers 3

    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addErrorToDropBoxInternal(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method public static addErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static addErrorToDropBoxInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static addErrorToDropBoxInternal(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .registers 7

    const-string v0, "CrashUtils"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->isPackageSide()Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->zzdb()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {p1}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, p2, p1}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    return p0

    :catch_2a
    move-exception p0

    :try_start_2b
    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->zzdb()Z

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    move-exception p1

    const-string p2, "Error determining which process we\'re running in!"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_37
    if-nez p1, :cond_3f

    const-string p1, "Error adding exception to DropBox!"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_3f
    throw p0
.end method

.method private static isPackageSide()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzze:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzf:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemClassPrefixInternal(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzc:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    return v1
.end method

.method public static declared-synchronized setTestVariables(Landroid/os/DropBoxManager;ZZI)V
    .registers 6

    const-class v0, Lcom/google/android/gms/common/util/CrashUtils;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/common/util/CrashUtils;->zzze:Z

    sput-object p0, Lcom/google/android/gms/common/util/CrashUtils;->zzzd:Landroid/os/DropBoxManager;

    sput-boolean p1, Lcom/google/android/gms/common/util/CrashUtils;->zzzg:Z

    sput-boolean p2, Lcom/google/android/gms/common/util/CrashUtils;->zzzf:Z

    sput p3, Lcom/google/android/gms/common/util/CrashUtils;->zzzh:I

    const/4 p0, 0x0

    sput p0, Lcom/google/android/gms/common/util/CrashUtils;->zzzi:I

    sput p0, Lcom/google/android/gms/common/util/CrashUtils;->zzzj:I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const-class v0, Lcom/google/android/gms/common/util/CrashUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/android/gms/common/util/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Package: com.google.android.gms"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0xbdfcc1

    const-string v2, "12.4.51 (020308-{{cl}})"

    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->zzdb()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_18b

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    :try_start_2c
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget p2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_49

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_40} :catch_41
    .catchall {:try_start_2c .. :try_end_40} :catchall_18b

    goto :goto_49

    :catch_41
    move-exception v3

    :try_start_42
    const-string v5, "CrashUtils"

    const-string v6, "Error while trying to get the package information! Using static version."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    const-string v3, " v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_90

    const-string p2, "("

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_83

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_83

    const-string p2, "-"

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_79

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "111111111"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_79
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_83
    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Build: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p2

    if-eqz p2, :cond_af

    const-string p2, "Debugger: Connected\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    if-eqz p3, :cond_be

    const-string p2, "DD-EDD: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_be
    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_cc

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cc
    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->zzdb()Z

    move-result p1

    if-eqz p1, :cond_e2

    const-string p1, "logcat_for_system_app_crash"

    sget p2, Lcom/google/android/gms/common/util/CrashUtils;->zzzh:I

    if-ltz p2, :cond_d9

    goto :goto_e3

    :cond_d9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    goto :goto_e3

    :cond_e2
    const/4 p2, 0x0

    :goto_e3
    if-lez p2, :cond_185

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ea
    .catchall {:try_start_42 .. :try_end_ea} :catchall_18b

    const/4 p0, 0x0

    :try_start_eb
    new-instance p1, Ljava/lang/ProcessBuilder;

    const/16 p3, 0xd

    new-array p3, p3, [Ljava/lang/String;

    const-string v2, "/system/bin/logcat"

    aput-object v2, p3, v4

    const-string v2, "-v"

    const/4 v3, 0x1

    aput-object v2, p3, v3

    const/4 v2, 0x2

    const-string v5, "time"

    aput-object v5, p3, v2

    const/4 v2, 0x3

    const-string v5, "-b"

    aput-object v5, p3, v2

    const/4 v2, 0x4

    const-string v5, "events"

    aput-object v5, p3, v2

    const/4 v2, 0x5

    const-string v5, "-b"

    aput-object v5, p3, v2

    const/4 v2, 0x6

    const-string v5, "system"

    aput-object v5, p3, v2

    const/4 v2, 0x7

    const-string v5, "-b"

    aput-object v5, p3, v2

    const/16 v2, 0x8

    const-string v5, "main"

    aput-object v5, p3, v2

    const/16 v2, 0x9

    const-string v5, "-b"

    aput-object v5, p3, v2

    const/16 v2, 0xa

    const-string v5, "crash"

    aput-object v5, p3, v2

    const/16 v2, 0xb

    const-string v5, "-t"

    aput-object v5, p3, v2

    const/16 v2, 0xc

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-direct {p1, p3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_143} :catch_170
    .catchall {:try_start_eb .. :try_end_143} :catchall_16e

    :try_start_143
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_14a} :catch_14a
    .catchall {:try_start_143 .. :try_end_14a} :catchall_16e

    :catch_14a
    :try_start_14a
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_151} :catch_151
    .catchall {:try_start_14a .. :try_end_151} :catchall_16e

    :catch_151
    :try_start_151
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_15a} :catch_170
    .catchall {:try_start_151 .. :try_end_15a} :catchall_16e

    const/16 p0, 0x2000

    :try_start_15c
    new-array p0, p0, [C

    :goto_15e
    invoke-virtual {p2, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result p1

    if-lez p1, :cond_168

    invoke-virtual {v1, p0, v4, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_167} :catch_16c
    .catchall {:try_start_15c .. :try_end_167} :catchall_17d

    goto :goto_15e

    :cond_168
    :goto_168
    :try_start_168
    invoke-virtual {p2}, Ljava/io/InputStreamReader;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_185
    .catchall {:try_start_168 .. :try_end_16b} :catchall_18b

    goto :goto_185

    :catch_16c
    move-exception p0

    goto :goto_173

    :catchall_16e
    move-exception p1

    goto :goto_17f

    :catch_170
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    :goto_173
    :try_start_173
    const-string p1, "CrashUtils"

    const-string p3, "Error running logcat"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17a
    .catchall {:try_start_173 .. :try_end_17a} :catchall_17d

    if-eqz p2, :cond_185

    goto :goto_168

    :catchall_17d
    move-exception p1

    move-object p0, p2

    :goto_17f
    if-eqz p0, :cond_184

    :try_start_181
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_18b

    :catch_184
    :cond_184
    :try_start_184
    throw p1

    :catch_185
    :cond_185
    :goto_185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_189
    .catchall {:try_start_184 .. :try_end_189} :catchall_18b

    monitor-exit v0

    return-object p0

    :catchall_18b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zza(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 15

    const-class v0, Lcom/google/android/gms/common/util/CrashUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_8
    if-eqz p0, :cond_12

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_8

    :cond_12
    const/4 p0, 0x0

    const/4 v2, 0x0

    move-object v4, p0

    const/4 v3, 0x0

    :goto_16
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_98

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/lang/StackTraceElement;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "<filtered>"

    const-string v10, "<filtered>"

    const/4 v11, 0x1

    invoke-direct {v8, v5, v9, v10, v11}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v5, v6

    const/4 v8, 0x0

    :goto_42
    if-ge v8, v5, :cond_79

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5e

    const-string v13, ":com.google.android.gms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5e

    const/4 v12, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v12, 0x0

    :goto_5f
    or-int/2addr v3, v12

    if-nez v12, :cond_73

    invoke-static {v10}, Lcom/google/android/gms/common/util/CrashUtils;->isSystemClassPrefixInternal(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_73

    new-instance v9, Ljava/lang/StackTraceElement;

    const-string v10, "<filtered>"

    const-string v12, "<filtered>"

    const-string v13, "<filtered>"

    invoke-direct {v9, v10, v12, v13, v11}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_73
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    :cond_79
    if-nez v4, :cond_83

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "<filtered>"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_8b

    :cond_83
    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "<filtered>"

    invoke-direct {v5, v6, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    :goto_8b
    new-array v5, v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_9d

    goto/16 :goto_16

    :cond_98
    monitor-exit v0

    if-nez v3, :cond_9c

    return-object p0

    :cond_9c
    return-object v4

    :catchall_9d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)Z
    .registers 9

    const-class v0, Lcom/google/android/gms/common/util/CrashUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/common/util/CrashUtils;->isPackageSide()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_55

    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-nez p4, :cond_1d

    sget p4, Lcom/google/android/gms/common/util/CrashUtils;->zzzj:I

    goto :goto_21

    :cond_1d
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p4

    :goto_21
    sget v3, Lcom/google/android/gms/common/util/CrashUtils;->zzzi:I

    if-ne v3, v1, :cond_2b

    sget v3, Lcom/google/android/gms/common/util/CrashUtils;->zzzj:I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_57

    if-ne v3, p4, :cond_2b

    monitor-exit v0

    return v2

    :cond_2b
    :try_start_2b
    sput v1, Lcom/google/android/gms/common/util/CrashUtils;->zzzi:I

    sput p4, Lcom/google/android/gms/common/util/CrashUtils;->zzzj:I

    sget-object p4, Lcom/google/android/gms/common/util/CrashUtils;->zzzd:Landroid/os/DropBoxManager;

    if-eqz p4, :cond_34

    goto :goto_3c

    :cond_34
    const-string p4, "dropbox"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/DropBoxManager;

    :goto_3c
    if-eqz p4, :cond_53

    const-string v1, "system_app_crash"

    invoke-virtual {p4, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_53

    :cond_47
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "system_app_crash"

    invoke-virtual {p4, p1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_57

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_53
    :goto_53
    monitor-exit v0

    return v2

    :cond_55
    :goto_55
    monitor-exit v0

    return v2

    :catchall_57
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzdb()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzze:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzzg:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
