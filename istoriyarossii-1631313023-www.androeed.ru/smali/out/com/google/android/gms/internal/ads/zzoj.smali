.class public final Lcom/google/android/gms/internal/ads/zzoj;
.super Lcom/google/android/gms/internal/ads/zzpt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzbha:I

.field private static final zzbhb:I

.field private static final zzbhc:I

.field private static final zzbhd:I


# instance fields
.field private final mTextColor:I

.field private final zzbhe:Ljava/lang/String;

.field private final zzbhf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbhg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbhh:I

.field private final zzbhi:I

.field private final zzbhj:I

.field private final zzbhk:I

.field private final zzbhl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzoj;->zzbha:I

    const/16 v1, 0xcc

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhb:I

    sput v1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhc:I

    sput v0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhd:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpt;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhf:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhg:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhe:Ljava/lang/String;

    if-eqz p2, :cond_2f

    const/4 p1, 0x0

    :goto_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzon;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhf:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhg:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_2f
    if-eqz p3, :cond_36

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_38

    :cond_36
    sget p1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhc:I

    :goto_38
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhh:I

    if-eqz p4, :cond_41

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_43

    :cond_41
    sget p1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhd:I

    :goto_43
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->mTextColor:I

    if-eqz p5, :cond_4c

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4e

    :cond_4c
    const/16 p1, 0xc

    :goto_4e
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhi:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhj:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhk:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhl:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhh:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhe:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->mTextColor:I

    return v0
.end method

.method public final getTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhi:I

    return v0
.end method

.method public final zzjr()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzpw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhg:Ljava/util/List;

    return-object v0
.end method

.method public final zzjs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhf:Ljava/util/List;

    return-object v0
.end method

.method public final zzjt()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhj:I

    return v0
.end method

.method public final zzju()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhk:I

    return v0
.end method

.method public final zzjv()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhl:Z

    return v0
.end method
