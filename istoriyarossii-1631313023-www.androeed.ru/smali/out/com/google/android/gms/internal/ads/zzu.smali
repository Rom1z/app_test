.class public final enum Lcom/google/android/gms/internal/ads/zzu;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzu;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum zzav:Lcom/google/android/gms/internal/ads/zzu;

.field public static final enum zzaw:Lcom/google/android/gms/internal/ads/zzu;

.field private static final enum zzax:Lcom/google/android/gms/internal/ads/zzu;

.field private static final enum zzay:Lcom/google/android/gms/internal/ads/zzu;

.field private static final synthetic zzaz:[Lcom/google/android/gms/internal/ads/zzu;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzu;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzu;->zzav:Lcom/google/android/gms/internal/ads/zzu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzu;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Lcom/google/android/gms/internal/ads/zzu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzu;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzu;->zzax:Lcom/google/android/gms/internal/ads/zzu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzu;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzu;->zzay:Lcom/google/android/gms/internal/ads/zzu;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzu;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzu;->zzaz:[Lcom/google/android/gms/internal/ads/zzu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzu;

    return-object v0
.end method
