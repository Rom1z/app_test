.class public Lcom/online/languages/study/studymaster/data/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;
    }
.end annotation


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field public errorCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation
.end field

.field public errorSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation
.end field

.field private navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field public sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation
.end field

.field public testErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public unanswered:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dataItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->context:Landroid/content/Context;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/TestResult;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataFromJson;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/TestResult;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getStructure()Lcom/online/languages/study/studymaster/data/NavStructure;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->sections:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->categories:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->testErrors:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->unanswered:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorSections:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/TestResult;->getData()V

    return-void
.end method

.method private getCategoryContent(Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    if-eqz v0, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<br><br>"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<b>"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</b><br>"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->info:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_47
    return-object p2
.end method

.method private getData()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getTestDataByIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/TestResult;->testErrors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    iget v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/TestResult;->unanswered:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2f
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/TestResult;->structureData()V

    return-void
.end method

.method private getDataDirect()V
    .registers 6

    new-instance v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;-><init>(Lcom/online/languages/study/studymaster/data/TestResult;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    iget-object v3, p0, Lcom/online/languages/study/studymaster/data/TestResult;->testErrors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    iget-object v3, p0, Lcom/online/languages/study/studymaster/data/TestResult;->unanswered:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    if-eqz v3, :cond_34

    iget-object v3, v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iget-object v3, v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/online/languages/study/studymaster/data/TestResult;->getCategoryContent(Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->content:Ljava/lang/String;

    goto :goto_b

    :cond_4a
    const-string v1, "Test"

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->sections:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/data/TestResult;->getErrorCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorSections:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->categories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/data/TestResult;->getErrorCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorCategories:Ljava/util/ArrayList;

    return-void
.end method

.method private structureData()V
    .registers 12

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;-><init>(Lcom/online/languages/study/studymaster/data/TestResult;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->title:Ljava/lang/String;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/NavCategory;

    new-instance v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;

    invoke-direct {v5, p0}, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;-><init>(Lcom/online/languages/study/studymaster/data/TestResult;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    iput-object v6, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/data/TestResult;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v8, v7, Lcom/online/languages/study/studymaster/data/DataItem;->id:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    iget v8, v7, Lcom/online/languages/study/studymaster/data/DataItem;->testError:I

    if-eqz v8, :cond_83

    iget-object v8, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v8, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_8e
    iget-object v3, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2a

    invoke-direct {p0, v5, v4}, Lcom/online/languages/study/studymaster/data/TestResult;->getCategoryContent(Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/data/TestResult;->categories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_a2
    iget-object v1, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->dataItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-direct {p0, v2, v4}, Lcom/online/languages/study/studymaster/data/TestResult;->getCategoryContent(Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/TestResult;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_b7
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->sections:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/data/TestResult;->getErrorCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorSections:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->categories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/data/TestResult;->getErrorCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/TestResult;->errorCategories:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getErrorCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/TestResult$ResultCategory;->errors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method
