.class public final enum Lcom/google/android/gms/internal/ads/zzawy;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzawy;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbr;"
    }
.end annotation


# static fields
.field private static final zzall:Lcom/google/android/gms/internal/ads/zzbbs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbs<",
            "Lcom/google/android/gms/internal/ads/zzawy;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzdjy:Lcom/google/android/gms/internal/ads/zzawy;

.field private static final enum zzdjz:Lcom/google/android/gms/internal/ads/zzawy;

.field public static final enum zzdka:Lcom/google/android/gms/internal/ads/zzawy;

.field public static final enum zzdkb:Lcom/google/android/gms/internal/ads/zzawy;

.field public static final enum zzdkc:Lcom/google/android/gms/internal/ads/zzawy;

.field public static final enum zzdkd:Lcom/google/android/gms/internal/ads/zzawy;

.field private static final synthetic zzdke:[Lcom/google/android/gms/internal/ads/zzawy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v1, "UNKNOWN_CURVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzdjy:Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v3, "NIST_P224"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzawy;->zzdjz:Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v5, "NIST_P256"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzawy;->zzdka:Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v7, "NIST_P384"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzawy;->zzdkb:Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v9, "NIST_P521"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzawy;->zzdkc:Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzawy;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzawy;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzawy;->zzdkd:Lcom/google/android/gms/internal/ads/zzawy;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/ads/zzawy;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/ads/zzawy;->zzdke:[Lcom/google/android/gms/internal/ads/zzawy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzall:Lcom/google/android/gms/internal/ads/zzbbs;

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

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzawy;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzawy;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzdke:[Lcom/google/android/gms/internal/ads/zzawy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzawy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzawy;

    return-object v0
.end method

.method public static zzat(I)Lcom/google/android/gms/internal/ads/zzawy;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawy;->zzdkc:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawy;->zzdkb:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawy;->zzdka:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawy;->zzdjz:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzawy;->zzdjy:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p0
.end method


# virtual methods
.method public final zzhq()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzdkd:Lcom/google/android/gms/internal/ads/zzawy;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
