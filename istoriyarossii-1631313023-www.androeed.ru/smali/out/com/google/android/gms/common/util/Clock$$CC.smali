.class public synthetic Lcom/google/android/gms/common/util/Clock$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static currentThreadTimeMillis(Lcom/google/android/gms/common/util/Clock;)J
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
