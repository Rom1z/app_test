.class public Lcom/online/languages/study/studymaster/data/ViewSection;
.super Ljava/lang/Object;
.source "ViewSection.java"


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field public desc:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field private navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field public progress:I

.field public title:Ljava/lang/String;

.field public topCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->topCategories:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->topCategories:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->title:Ljava/lang/String;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->desc:Ljava/lang/String;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavSection;->image:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->image:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->context:Landroid/content/Context;

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p2, p1}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_54
    :goto_54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_a6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavCategory;

    new-instance p3, Lcom/online/languages/study/studymaster/data/ViewCategory;

    invoke-direct {p3, p2}, Lcom/online/languages/study/studymaster/data/ViewCategory;-><init>(Lcom/online/languages/study/studymaster/data/NavCategory;)V

    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/online/languages/study/studymaster/data/ViewSection;->countGroupByID(Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)I

    move-result v1

    iput v1, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    :cond_79
    iget-object v1, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v2, "maps_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/data/ViewSection;->countMapsByCatID(Ljava/lang/String;)I

    move-result p2

    iput p2, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    :cond_8b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/online/languages/study/studymaster/data/ViewCategory;->tag:Ljava/lang/String;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_a6
    return-void
.end method

.method private countGroupByID(Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)I
    .registers 5

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    return v0
.end method

.method private countMapsByCatID(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getMapsCount(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getCatProgress(Lcom/online/languages/study/studymaster/data/NavSection;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->catIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatProgress(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/online/languages/study/studymaster/data/ViewSection;->getViewCatsResults(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getCatsTestsArray(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavCategory;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_20

    :cond_64
    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->tests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->progress:I

    :cond_75
    iget v2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    iget v1, v1, Lcom/online/languages/study/studymaster/data/NavCategory;->progress:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    goto :goto_4

    :cond_7d
    iget p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr p2, v0

    iput p2, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->progress:I

    return-object p1
.end method

.method private getViewCatsResults(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ViewCategory;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/online/languages/study/studymaster/data/ViewCategory;->progress:I

    goto :goto_18

    :cond_43
    return-object p1
.end method


# virtual methods
.method public getProgress()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/data/ViewSection;->getCatProgress(Lcom/online/languages/study/studymaster/data/NavSection;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->topCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->topCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/data/ViewSection;->getCatProgress(Lcom/online/languages/study/studymaster/data/NavSection;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewSection;->topCategories:Ljava/util/ArrayList;

    :cond_1c
    return-void
.end method
