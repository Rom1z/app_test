.class public final Lcom/squareup/picasso/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Request$Builder;
    }
.end annotation


# static fields
.field private static final TOO_LONG_LOG:J


# instance fields
.field public final centerCrop:Z

.field public final centerInside:Z

.field public final config:Landroid/graphics/Bitmap$Config;

.field public final hasRotationPivot:Z

.field id:I

.field networkPolicy:I

.field public final onlyScaleDown:Z

.field public final priority:Lcom/squareup/picasso/Picasso$Priority;

.field public final resourceId:I

.field public final rotationDegrees:F

.field public final rotationPivotX:F

.field public final rotationPivotY:F

.field public final stableKey:Ljava/lang/String;

.field started:J

.field public final targetHeight:I

.field public final targetWidth:I

.field public final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;IIZZZFFFZ",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/squareup/picasso/Picasso$Priority;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    iput p2, p0, Lcom/squareup/picasso/Request;->resourceId:I

    iput-object p3, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    goto :goto_15

    :cond_f
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    :goto_15
    iput p5, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    iput p6, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    iput-boolean p7, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    iput-boolean p8, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    iput-boolean p9, p0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    iput p10, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    iput p11, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    iput p12, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    iput-boolean p13, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    iput-object p14, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    iput-object p15, p0, Lcom/squareup/picasso/Request;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/squareup/picasso/Request$Builder;
    .registers 3

    new-instance v0, Lcom/squareup/picasso/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/Request$Builder;-><init>(Lcom/squareup/picasso/Request;Lcom/squareup/picasso/Request$1;)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget v0, p0, Lcom/squareup/picasso/Request;->resourceId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasCustomTransformations()Z
    .registers 2

    iget-object v0, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasSize()Z
    .registers 2

    iget v0, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method logId()Ljava/lang/String;
    .registers 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/squareup/picasso/Request;->started:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/squareup/picasso/Request;->TOO_LONG_LOG:J

    const/16 v4, 0x2b

    cmp-long v5, v0, v2

    if-lez v5, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->plainId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsMatrixTransform()Z
    .registers 3

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasSize()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method needsTransformation()Z
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method plainId()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/squareup/picasso/Request;->resourceId:I

    if-lez v1, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_f
    iget-object v1, p0, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_14
    iget-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    const/16 v2, 0x20

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/picasso/Transformation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_3d
    iget-object v1, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    const/16 v3, 0x29

    if-eqz v1, :cond_50

    const-string v1, " stableKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/picasso/Request;->stableKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_50
    iget v1, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    const/16 v4, 0x2c

    if-lez v1, :cond_6b

    const-string v1, " resize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6b
    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v1, :cond_74

    const-string v1, " centerCrop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz v1, :cond_7d

    const-string v1, " centerInside"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    iget v1, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_a7

    const-string v1, " rotation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v1, :cond_a4

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a7
    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_b3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/picasso/Request;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
