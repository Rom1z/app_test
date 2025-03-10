.class Landroidx/transition/GhostViewPlatform;
.super Ljava/lang/Object;
.source "GhostViewPlatform.java"

# interfaces
.implements Landroidx/transition/GhostView;


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .registers 8

    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchAddGhostMethod()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    :try_start_8
    new-instance v2, Landroidx/transition/GhostViewPlatform;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object p2, v3, p0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-direct {v2, p0}, Landroidx/transition/GhostViewPlatform;-><init>(Landroid/view/View;)V
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1f} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_1f} :catch_20

    return-object v2

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2b
    :cond_2b
    return-object v1
.end method

.method private static fetchAddGhostMethod()V
    .registers 6

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :try_start_5
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "addGhost"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/GhostViewPlatform;->sAddGhostMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v1

    const-string v2, "GhostViewApi21"

    const-string v3, "Failed to retrieve addGhost method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sAddGhostMethodFetched:Z

    :cond_31
    return-void
.end method

.method private static fetchGhostViewClass()V
    .registers 3

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    if-nez v0, :cond_18

    :try_start_4
    const-string v0, "android.view.GhostView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    const-string v1, "GhostViewApi21"

    const-string v2, "Failed to retrieve GhostView class"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sGhostViewClassFetched:Z

    :cond_18
    return-void
.end method

.method private static fetchRemoveGhostMethod()V
    .registers 6

    sget-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :try_start_5
    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchGhostViewClass()V

    sget-object v1, Landroidx/transition/GhostViewPlatform;->sGhostViewClass:Ljava/lang/Class;

    const-string v2, "removeGhost"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v1

    const-string v2, "GhostViewApi21"

    const-string v3, "Failed to retrieve removeGhost method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    sput-boolean v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethodFetched:Z

    :cond_27
    return-void
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Landroidx/transition/GhostViewPlatform;->fetchRemoveGhostMethod()V

    sget-object v0, Landroidx/transition/GhostViewPlatform;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-object v0, p0, Landroidx/transition/GhostViewPlatform;->mGhostView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
