.class public Lcom/online/languages/study/studymaster/adapters/ColorProgress;
.super Ljava/lang/Object;
.source "ColorProgress.java"


# instance fields
.field context:Landroid/content/Context;

.field private progressColors:[I

.field private progressColorsTxt:[I

.field public statusBg:[I

.field private statusColors:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_22

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusColors:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusBg:[I

    return-void

    :array_22
    .array-data 4
        0x7f04010b
        0x7f040143
        0x7f0400be
        0x7f0400f9
        0x7f040145
        0x7f0400fb
    .end array-data

    :array_32
    .array-data 4
        0x7f04010b
        0x7f040144
        0x7f0400bf
        0x7f0400fa
        0x7f040146
        0x7f0400fc
    .end array-data

    :array_42
    .array-data 4
        0x7f040140
        0x7f040106
        0x7f040136
    .end array-data

    :array_4c
    .array-data 4
        0x7f080138
        0x7f080139
        0x7f08013d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_24

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    iput-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusColors:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusBg:[I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->context:Landroid/content/Context;

    return-void

    :array_24
    .array-data 4
        0x7f04010b
        0x7f040143
        0x7f0400be
        0x7f0400f9
        0x7f040145
        0x7f0400fb
    .end array-data

    :array_34
    .array-data 4
        0x7f04010b
        0x7f040144
        0x7f0400bf
        0x7f0400fa
        0x7f040146
        0x7f0400fc
    .end array-data

    :array_44
    .array-data 4
        0x7f040140
        0x7f040106
        0x7f040136
    .end array-data

    :array_4e
    .array-data 4
        0x7f080138
        0x7f080139
        0x7f08013d
    .end array-data
.end method

.method private defineCatColorByResult(I)I
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_43

    :cond_9
    if-lez p1, :cond_14

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_14

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    aget p1, p1, v0

    goto :goto_43

    :cond_14
    const/16 v0, 0x1d

    if-le p1, v0, :cond_22

    const/16 v0, 0x32

    if-ge p1, v0, :cond_22

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_43

    :cond_22
    const/16 v0, 0x31

    if-le p1, v0, :cond_30

    const/16 v0, 0x50

    if-ge p1, v0, :cond_30

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    goto :goto_43

    :cond_30
    const/16 v0, 0x4f

    if-le p1, v0, :cond_3e

    const/16 v0, 0x60

    if-ge p1, v0, :cond_3e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    goto :goto_43

    :cond_3e
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColorsTxt:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :goto_43
    return p1
.end method

.method private defineColorByResult(I)I
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    goto :goto_43

    :cond_9
    if-lez p1, :cond_14

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_14

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    aget p1, p1, v0

    goto :goto_43

    :cond_14
    const/16 v0, 0x1d

    if-le p1, v0, :cond_22

    const/16 v0, 0x32

    if-ge p1, v0, :cond_22

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    const/4 v0, 0x2

    aget p1, p1, v0

    goto :goto_43

    :cond_22
    const/16 v0, 0x31

    if-le p1, v0, :cond_30

    const/16 v0, 0x50

    if-ge p1, v0, :cond_30

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    const/4 v0, 0x3

    aget p1, p1, v0

    goto :goto_43

    :cond_30
    const/16 v0, 0x4f

    if-le p1, v0, :cond_3e

    const/16 v0, 0x60

    if-ge p1, v0, :cond_3e

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    const/4 v0, 0x4

    aget p1, p1, v0

    goto :goto_43

    :cond_3e
    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->progressColors:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :goto_43
    return p1
.end method

.method private defineStatusColorByResult(I)I
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusColors:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-lez p1, :cond_a

    const/4 v1, 0x1

    aget v1, v0, v1

    :cond_a
    const/4 v2, 0x2

    if-le p1, v2, :cond_f

    aget v1, v0, v2

    :cond_f
    return v1
.end method


# virtual methods
.method public defineStatusBGByResult(I)I
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->statusBg:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-le p1, v2, :cond_b

    aget v1, v0, v2

    goto :goto_10

    :cond_b
    if-lez p1, :cond_10

    const/4 p1, 0x1

    aget v1, v0, p1

    :cond_10
    :goto_10
    return v1
.end method

.method public getColorFromAttr(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->defineColorByResult(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1
.end method

.method public getStatusColorFromAttr(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->defineStatusColorByResult(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1
.end method

.method public setCatColorFromAttr(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->defineCatColorByResult(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1
.end method

.method public setStatusColorFromAttr(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->defineStatusColorByResult(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1
.end method

.method public setStatusColors(Landroid/widget/TextView;I)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->setStatusColorFromAttr(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
