.class public final enum Lcom/google/android/gms/internal/ads/zzaxl;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzaxl;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbr;"
    }
.end annotation


# static fields
.field private static final zzall:Lcom/google/android/gms/internal/ads/zzbbs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbs<",
            "Lcom/google/android/gms/internal/ads/zzaxl;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzdld:Lcom/google/android/gms/internal/ads/zzaxl;

.field public static final enum zzdle:Lcom/google/android/gms/internal/ads/zzaxl;

.field private static final enum zzdlf:Lcom/google/android/gms/internal/ads/zzaxl;

.field private static final enum zzdlg:Lcom/google/android/gms/internal/ads/zzaxl;

.field public static final enum zzdlh:Lcom/google/android/gms/internal/ads/zzaxl;

.field private static final synthetic zzdli:[Lcom/google/android/gms/internal/ads/zzaxl;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxl;

    const-string v1, "UNKNOWN_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdld:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxl;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzdle:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaxl;

    const-string v5, "DISABLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlf:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaxl;

    const-string v7, "DESTROYED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlg:Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaxl;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzaxl;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlh:Lcom/google/android/gms/internal/ads/zzaxl;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/ads/zzaxl;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/ads/zzaxl;->zzdli:[Lcom/google/android/gms/internal/ads/zzaxl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzall:Lcom/google/android/gms/internal/ads/zzbbs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaxl;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdli:[Lcom/google/android/gms/internal/ads/zzaxl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzaxl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaxl;

    return-object v0
.end method

.method public static zzax(I)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlg:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlf:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdle:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdld:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0
.end method


# virtual methods
.method public final zzhq()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdlh:Lcom/google/android/gms/internal/ads/zzaxl;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxl;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
