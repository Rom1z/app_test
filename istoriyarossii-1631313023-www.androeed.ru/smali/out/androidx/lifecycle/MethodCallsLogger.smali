.class public Landroidx/lifecycle/MethodCallsLogger;
.super Ljava/lang/Object;
.source "MethodCallsLogger.java"


# instance fields
.field private mCalledMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public approveCall(Ljava/lang/String;I)Z
    .registers 7

    iget-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    and-int v2, v0, p2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    iget-object v2, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    or-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p1, v1, 0x1

    return p1
.end method
