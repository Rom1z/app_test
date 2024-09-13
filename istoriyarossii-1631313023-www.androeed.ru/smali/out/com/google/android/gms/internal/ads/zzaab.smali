.class public final Lcom/google/android/gms/internal/ads/zzaab;
.super Lcom/google/android/gms/internal/ads/zzaal;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzbvy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

.field private final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzbvp:Landroid/app/Activity;

.field private zzbvz:Ljava/lang/String;

.field private zzbwa:Z

.field private zzbwb:I

.field private zzbwc:I

.field private zzbwd:I

.field private zzbwe:I

.field private zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

.field private zzbwg:Landroid/widget/ImageView;

.field private zzbwh:Landroid/widget/LinearLayout;

.field private zzbwi:Landroid/widget/PopupWindow;

.field private zzbwj:Landroid/widget/RelativeLayout;

.field private zzbwk:Landroid/view/ViewGroup;

.field private zzuq:I

.field private zzur:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvy:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqw;Lcom/google/android/gms/internal/ads/zzaam;)V
    .registers 5

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzto()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    return-void
.end method

.method private final zza(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaal;->zzb(IIII)V

    return-void
.end method

.method private final zzne()[I
    .registers 10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v6, 0x2

    const/16 v7, 0x32

    if-lt v5, v7, :cond_ef

    if-le v5, v3, :cond_25

    goto/16 :goto_ef

    :cond_25
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-lt v8, v7, :cond_ec

    if-le v8, v0, :cond_2d

    goto/16 :goto_ec

    :cond_2d
    if-ne v8, v0, :cond_35

    if-ne v5, v3, :cond_35

    const-string v0, "Cannot resize to a full-screen ad."

    goto/16 :goto_f1

    :cond_35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_154

    goto :goto_88

    :sswitch_47
    const-string v8, "top-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_88

    :cond_50
    const/4 v5, 0x5

    goto :goto_88

    :sswitch_52
    const-string v8, "bottom-center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_88

    :cond_5b
    const/4 v5, 0x4

    goto :goto_88

    :sswitch_5d
    const-string v8, "bottom-right"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_88

    :cond_66
    const/4 v5, 0x3

    goto :goto_88

    :sswitch_68
    const-string v8, "bottom-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto :goto_88

    :cond_71
    const/4 v5, 0x2

    goto :goto_88

    :sswitch_73
    const-string v8, "top-left"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto :goto_88

    :cond_7c
    const/4 v5, 0x1

    goto :goto_88

    :sswitch_7e
    const-string v8, "center"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_88

    :cond_87
    const/4 v5, 0x0

    :goto_88
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    packed-switch v5, :pswitch_data_16e

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_c1

    :pswitch_95
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_c1

    :pswitch_9f
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    goto :goto_b4

    :pswitch_a9
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v7

    goto :goto_b4

    :pswitch_b1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    :goto_b4
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    goto :goto_db

    :pswitch_be
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    :goto_c1
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    goto :goto_db

    :pswitch_c7
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v0, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    div-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x19

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    div-int/2addr v8, v6

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    :goto_db
    if-ltz v0, :cond_f4

    add-int/2addr v0, v7

    if-gt v0, v3, :cond_f4

    aget v0, v1, v2

    if-lt v5, v0, :cond_f4

    add-int/2addr v5, v7

    aget v0, v1, v4

    if-le v5, v0, :cond_ea

    goto :goto_f4

    :cond_ea
    const/4 v0, 0x1

    goto :goto_f5

    :cond_ec
    :goto_ec
    const-string v0, "Height is too small or too large."

    goto :goto_f1

    :cond_ef
    :goto_ef
    const-string v0, "Width is too small or too large."

    :goto_f1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_f4
    :goto_f4
    const/4 v0, 0x0

    :goto_f5
    if-nez v0, :cond_f9

    const/4 v0, 0x0

    return-object v0

    :cond_f9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-eqz v0, :cond_10e

    new-array v0, v6, [I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v1, v2

    aput v1, v0, v4

    return-object v0

    :cond_10e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzh(Landroid/app/Activity;)[I

    move-result-object v1

    aget v0, v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    add-int/2addr v5, v7

    if-gez v3, :cond_132

    const/4 v3, 0x0

    goto :goto_13a

    :cond_132
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    add-int v8, v3, v7

    if-le v8, v0, :cond_13a

    sub-int v3, v0, v7

    :cond_13a
    :goto_13a
    aget v0, v1, v2

    if-ge v5, v0, :cond_141

    aget v5, v1, v2

    goto :goto_14d

    :cond_141
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    add-int v7, v5, v0

    aget v8, v1, v4

    if-le v7, v8, :cond_14d

    aget v1, v1, v4

    sub-int v5, v1, v0

    :cond_14d
    :goto_14d
    new-array v0, v6, [I

    aput v3, v0, v2

    aput v5, v0, v4

    return-object v0

    :sswitch_data_154
    .sparse-switch
        -0x514d33ab -> :sswitch_7e
        -0x3c587281 -> :sswitch_73
        -0x27103597 -> :sswitch_68
        0x455fe3fa -> :sswitch_5d
        0x4ccee637 -> :sswitch_52
        0x68a23bcd -> :sswitch_47
    .end sparse-switch

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_be
        :pswitch_b1
        :pswitch_a9
        :pswitch_9f
        :pswitch_95
    .end packed-switch
.end method


# virtual methods
.method public final zza(IIZ)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_47

    if-eqz p3, :cond_47

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_44

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v4, p1, p2

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {p3, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    aget p3, p1, v2

    aget p1, p1, p2

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    goto :goto_47

    :cond_44
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final zzb(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwc:I

    return-void
.end method

.method public final zzk(Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuj()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    :cond_62
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    :cond_81
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwd:I

    :cond_a0
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakk;->zzcv(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwe:I

    :cond_bf
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    :cond_db
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_f7

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    if-ltz v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x0

    :goto_f8
    if-nez v0, :cond_101

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_101
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_317

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_111

    goto/16 :goto_317

    :cond_111
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaab;->zzne()[I

    move-result-object v5

    if-nez v5, :cond_11e

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_11e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_310

    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_310

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-nez v9, :cond_181

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzakk;->zzs(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_184

    :cond_181
    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_184
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwa:Z

    if-nez v9, :cond_1b5

    const/4 v9, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v9, 0x0

    :goto_1b6
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvz:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    sparse-switch v11, :sswitch_data_322

    goto :goto_230

    :sswitch_1f5
    const-string v11, "top-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x1

    goto :goto_230

    :sswitch_1ff
    const-string v11, "bottom-center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x4

    goto :goto_230

    :sswitch_209
    const-string v11, "bottom-right"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x5

    goto :goto_230

    :sswitch_213
    const-string v11, "bottom-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x3

    goto :goto_230

    :sswitch_21d
    const-string v11, "top-left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x0

    goto :goto_230

    :sswitch_227
    const-string v11, "center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    const/4 v10, 0x2

    :cond_230
    :goto_230
    const/16 v9, 0x9

    const/16 v11, 0xa

    if-eqz v10, :cond_266

    const/16 v4, 0xe

    if-eq v10, v3, :cond_262

    if-eq v10, v15, :cond_25c

    const/16 v15, 0xc

    if-eq v10, v14, :cond_255

    if-eq v10, v13, :cond_251

    const/16 v4, 0xb

    if-eq v10, v12, :cond_24d

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_249
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26a

    :cond_24d
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_249

    :cond_251
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_249

    :cond_255
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_258
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26a

    :cond_25c
    const/16 v4, 0xd

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_26a

    :cond_262
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_249

    :cond_266
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_258

    :goto_26a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_282
    .catchall {:try_start_7 .. :try_end_282} :catchall_31e

    :try_start_282
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    const/4 v9, 0x0

    aget v10, v5, v9

    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbvp:Landroid/app/Activity;

    aget v10, v5, v3

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_2a3
    .catch Ljava/lang/RuntimeException; {:try_start_282 .. :try_end_2a3} :catch_2ca
    .catchall {:try_start_282 .. :try_end_2a3} :catchall_31e

    :try_start_2a3
    aget v0, v5, v10

    aget v4, v5, v3

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz v8, :cond_2b2

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzuq:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzur:I

    invoke-interface {v8, v0, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzaam;->zza(IIII)V

    :cond_2b2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzasi;->zzi(II)Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    const/4 v0, 0x0

    aget v0, v5, v0

    aget v3, v5, v3

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzaab;->zza(II)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_2ca
    move-exception v0

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e5

    :cond_2e0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30e

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_30e
    monitor-exit v2

    return-void

    :cond_310
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_317
    :goto_317
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_31e
    move-exception v0

    monitor-exit v2
    :try_end_320
    .catchall {:try_start_2a3 .. :try_end_320} :catchall_31e

    throw v0

    nop

    :sswitch_data_322
    .sparse-switch
        -0x514d33ab -> :sswitch_227
        -0x3c587281 -> :sswitch_21d
        -0x27103597 -> :sswitch_213
        0x455fe3fa -> :sswitch_209
        0x4ccee637 -> :sswitch_1ff
        0x68a23bcd -> :sswitch_1f5
    .end sparse-switch
.end method

.method public final zzm(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwf:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    :cond_30
    if-eqz p1, :cond_3e

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbmy:Lcom/google/android/gms/internal/ads/zzaam;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaam;->zzcq()V

    :cond_3e
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwj:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwk:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwh:Landroid/widget/LinearLayout;

    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public final zznf()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaab;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzbwi:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
