.class public Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;
.super Ljava/lang/Object;
.source "ExerciseDataCollect.java"


# instance fields
.field private answersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private dataFromJson:Lcom/online/languages/study/studymaster/data/DataFromJson;

.field dataTest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field exType:I

.field public options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field optionsCatData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/OptionsCatData;",
            ">;"
        }
    .end annotation
.end field

.field public optionsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field optionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private sectionTagSize:I

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;"
        }
    .end annotation
.end field

.field sectionsIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->dataTest:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->options:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsCatData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->sectionsIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->answersList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->context:Landroid/content/Context;

    iput p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0a005d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->sectionTagSize:I

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataFromJson;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->context:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->dataFromJson:Lcom/online/languages/study/studymaster/data/DataFromJson;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p3, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->context:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->data:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getCatIdsFromDataItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_3c

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    :cond_3d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private checkUniqueData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v2}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getValueForUnique(Lcom/online/languages/study/studymaster/data/DataItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-object v0
.end method

.method private collect(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_51

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v4, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v2, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->pickAddData(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17b

    iget-object v5, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v6, v0, v7}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v4, v1, :cond_4e

    goto/16 :goto_17b

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_db

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->pickAddData(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v5, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, v0, v5}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->pickAddData(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v5, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17b

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, v0, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    :cond_db
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_15b

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->pickAddData(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v5, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v6, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_124

    iget-object v5, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v1, v0, v3}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_124
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, v2, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    :cond_15b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15f

    :cond_17b
    :goto_17b
    return-void
.end method

.method private createTask(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_17

    invoke-direct {p0, p1, p3, p2}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/online/languages/study/studymaster/data/DataItem;

    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getTextByExType(Lcom/online/languages/study/studymaster/data/DataItem;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_38
    const/4 v7, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getTextByExType(Lcom/online/languages/study/studymaster/data/DataItem;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    new-instance p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;

    iget-object v8, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/online/languages/study/studymaster/data/ExerciseTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)V

    iput-object p1, p2, Lcom/online/languages/study/studymaster/data/ExerciseTask;->data:Lcom/online/languages/study/studymaster/data/DataItem;

    return-object p2
.end method

.method private createTaskWithOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTask(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object p1

    return-object p1
.end method

.method private createTaskWithOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Lcom/online/languages/study/studymaster/data/DataItem;)Lcom/online/languages/study/studymaster/data/ExerciseTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ")",
            "Lcom/online/languages/study/studymaster/data/ExerciseTask;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->createTask(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/ExerciseTask;

    move-result-object p1

    return-object p1
.end method

.method private getCatIdsFromDataItems(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsCatData:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->sectionTagSize:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsCatData:Ljava/util/ArrayList;

    new-instance v4, Lcom/online/languages/study/studymaster/data/OptionsCatData;

    invoke-direct {v4, v2}, Lcom/online/languages/study/studymaster/data/OptionsCatData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_41
    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->getDataItemsByCatIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsCatData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;

    iget-object v3, v0, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v1, v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_8a
    return-void
.end method

.method private getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->optionsCatData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;->options:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getNeighborOptions(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_43

    iget-object p1, v2, Lcom/online/languages/study/studymaster/data/OptionsCatData;->options:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->checkUniqueData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_43
    return-object v0
.end method

.method private getIndexByValue(Ljava/util/ArrayList;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_15

    move v0, v1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return v0
.end method

.method private getNeighborOptions(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_28

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v5, v5, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v4, v3

    :cond_1e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_32
    if-ge v6, v3, :cond_aa

    invoke-direct {p0, v0, v4}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getIndexByValue(Ljava/util/ArrayList;I)I

    move-result v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_40

    goto :goto_aa

    :cond_40
    if-eqz v7, :cond_75

    add-int/lit8 v7, v8, -0x1

    if-le v7, v2, :cond_5b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_5b

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    if-le v8, v2, :cond_73

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_73

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    :goto_73
    const/4 v7, 0x0

    goto :goto_a7

    :cond_75
    add-int/lit8 v7, v8, 0x1

    if-le v7, v2, :cond_8e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_8e

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_8e
    add-int/lit8 v8, v8, -0x1

    if-le v8, v2, :cond_a6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_a6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    :goto_a6
    const/4 v7, 0x1

    :goto_a7
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_aa
    :goto_aa
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_cb
    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->checkUniqueData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getOption(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Lcom/online/languages/study/studymaster/data/DataItem;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    :cond_19
    :goto_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3a

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {p0, p1, p2}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->checkOptions(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_37

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    goto :goto_3a

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_3a
    :goto_3a
    return-object v1
.end method

.method private getTextByExType(Lcom/online/languages/study/studymaster/data/DataItem;I)Ljava/lang/String;
    .registers 8

    iget v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v0, v2, :cond_13

    if-eq p2, v1, :cond_10

    if-eq p2, v2, :cond_d

    goto :goto_3a

    :cond_d
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    goto :goto_3a

    :cond_10
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    goto :goto_3a

    :cond_13
    const/4 v4, 0x3

    if-ne v0, v4, :cond_21

    if-eq p2, v1, :cond_1e

    if-eq p2, v2, :cond_1b

    goto :goto_3a

    :cond_1b
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    goto :goto_3a

    :cond_1e
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    goto :goto_3a

    :cond_21
    const/4 v4, 0x4

    if-ne v0, v4, :cond_30

    if-eq p2, v1, :cond_2c

    if-eq p2, v2, :cond_29

    goto :goto_3a

    :cond_29
    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->image:Ljava/lang/String;

    :goto_2e
    move-object v3, p1

    goto :goto_3a

    :cond_30
    if-eq p2, v1, :cond_38

    if-eq p2, v2, :cond_35

    goto :goto_3a

    :cond_35
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    :goto_3a
    return-object v3
.end method

.method private getValueForUnique(Lcom/online/languages/study/studymaster/data/DataItem;)Ljava/lang/String;
    .registers 5

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    iget v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    :cond_9
    iget v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->item_info_1:Ljava/lang/String;

    :cond_10
    iget v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->exType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    :cond_17
    return-object v0
.end method

.method private pickAddData(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataItem;

    invoke-direct {v1}, Lcom/online/languages/study/studymaster/data/DataItem;-><init>()V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->getDataItemOptions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    iget-object v5, v1, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2c

    :cond_48
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    :cond_58
    return-object v0
.end method


# virtual methods
.method public generateTasks(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->collect(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getMultiChoiceTaskList(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/data/DetailFromJson;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/data/DetailFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/DetailFromJson;->getTest(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    return-void
.end method

.method public shuffleTasks()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ExerciseDataCollect;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method
