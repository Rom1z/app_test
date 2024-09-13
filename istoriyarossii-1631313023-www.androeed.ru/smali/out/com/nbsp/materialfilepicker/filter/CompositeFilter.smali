.class public Lcom/nbsp/materialfilepicker/filter/CompositeFilter;
.super Ljava/lang/Object;
.source "CompositeFilter.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/FileFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/FileFilter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;->mFilters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    iget-object v0, p0, Lcom/nbsp/materialfilepicker/filter/CompositeFilter;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileFilter;

    invoke-interface {v1, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method
