.class public Lcom/online/languages/study/studymaster/SectionTestActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SectionTestActivity.java"


# instance fields
.field allData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field appSettings:Landroid/content/SharedPreferences;

.field basicData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field dataSelect:Ljava/lang/String;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field easy_mode:Ljava/lang/Boolean;

.field exResults:[I

.field extraData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field tSectionID:Ljava/lang/String;

.field testAllBox:Landroid/view/View;

.field testOneBox:Landroid/view/View;

.field testTwoBox:Landroid/view/View;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->basicData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->extraData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->allData:Ljava/util/ArrayList;

    return-void

    nop

    :array_26
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private deleteSectionExResults()V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_gen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->deleteExData([Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getTestsResults()V

    return-void
.end method

.method private displayTestData(Landroid/view/View;I)V
    .registers 5

    const-string v0, "testIconBox"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const-string v1, "testResultTxt"

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-lez p2, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getTestsResults()V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8a

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_gen"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/online/languages/study/studymaster/DBHelper;->getTestResult(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testOneBox:Landroid/view/View;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->displayTestData(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testTwoBox:Landroid/view/View;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    aget v1, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->displayTestData(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testAllBox:Landroid/view/View;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->exResults:[I

    aget v1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->displayTestData(Landroid/view/View;I)V

    return-void

    :array_8a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private showExtraTests()V
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object v2

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v4, "extra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_13

    :cond_2f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dataSelect:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testAllBox:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    :cond_45
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testAllBox:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4c
    return-void
.end method

.method private testAll()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ex_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_gen"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cat_tag"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->extraData:Ljava/util/ArrayList;

    const-string v3, "dataItems"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/online/languages/study/studymaster/SectionTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method private testPage(I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/ExerciseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ex_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cat_tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->basicData:Ljava/util/ArrayList;

    const-string v1, "dataItems"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method


# virtual methods
.method public getAllDataFromJson()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object v3

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v5, v4, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v6, "extra"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    iget-object v5, v4, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_39
    iget-object v5, v4, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3e
    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_44
    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v3}, Lcom/online/languages/study/studymaster/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v4, v3, v0}, Lcom/online/languages/study/studymaster/DBHelper;->selectSimpleDataItemsByIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->basicData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, v3, v2}, Lcom/online/languages/study/studymaster/DBHelper;->selectSimpleDataItemsByIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->extraData:Ljava/util/ArrayList;

    :cond_60
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, v3, v1}, Lcom/online/languages/study/studymaster/DBHelper;->selectSimpleDataItemsByIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->allData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getTestsResults()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->tSectionID:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_select"

    const-string v1, "dates"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dataSelect:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f110161

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getAllDataFromJson()V

    const p1, 0x7f0902b8

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testOneBox:Landroid/view/View;

    const p1, 0x7f0902bd

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testTwoBox:Landroid/view/View;

    const p1, 0x7f0902b6

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->testAllBox:Landroid/view/View;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->showExtraTests()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getTestsResults()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090289

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->deleteSectionExResults()V

    return v2

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionTestActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public testAll(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionTestActivity;->testAll()V

    return-void
.end method

.method public testOne(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->testPage(I)V

    return-void
.end method

.method public testTwo(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionTestActivity;->testPage(I)V

    return-void
.end method
