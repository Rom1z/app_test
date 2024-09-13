.class public Lcom/google/android/gms/internal/stable/zze$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/stable/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static zzagq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/stable/zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/stable/zzh;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/stable/zzh;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/android/gms/internal/stable/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/stable/zzh;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/stable/zze$zza;->zzagq:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/stable/zzf;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/stable/zzf;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/stable/zzh;)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_3a

    :cond_1f
    iget-object p0, v0, Lcom/google/android/gms/internal/stable/zzh;->zzagu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_3a

    monitor-enter v0

    :try_start_29
    iget-object p0, v0, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    monitor-exit v0

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method protected static zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-class v0, Lcom/google/android/gms/internal/stable/zze$zza;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/stable/zzh;

    move-result-object v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8a

    monitor-enter v1

    :try_start_9
    iget-object v0, v1, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object p0, v1, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v1

    return-object p0

    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_87

    const/4 v2, 0x0

    :try_start_1f
    const-string v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "name=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v8, v3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_34} :catch_5d
    .catchall {:try_start_1f .. :try_end_34} :catchall_5b

    if-eqz p0, :cond_4a

    :try_start_36
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_4a

    :cond_3d
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Landroid/database/SQLException; {:try_start_36 .. :try_end_44} :catch_56
    .catchall {:try_start_36 .. :try_end_44} :catchall_53

    if-eqz p0, :cond_80

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_80

    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-static {v1, v0, p2, v2}, Lcom/google/android/gms/internal/stable/zze$zza;->zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/database/SQLException; {:try_start_4a .. :try_end_4d} :catch_56
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    if-eqz p0, :cond_52

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_52
    return-object v2

    :catchall_53
    move-exception p1

    move-object v2, p0

    goto :goto_81

    :catch_56
    move-exception v0

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_5f

    :catchall_5b
    move-exception p1

    goto :goto_81

    :catch_5d
    move-exception v0

    move-object p0, v2

    :goto_5f
    :try_start_5f
    const-string v1, "GoogleSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_5b

    if-eqz v2, :cond_7f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7f
    move-object v2, p0

    :cond_80
    :goto_80
    return-object v2

    :goto_81
    if-eqz v2, :cond_86

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_86
    throw p1

    :catchall_87
    move-exception p0

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    :catchall_8a
    move-exception p0

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/stable/zzh;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/stable/zzh;->zzagt:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/stable/zzh;->zzags:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method
