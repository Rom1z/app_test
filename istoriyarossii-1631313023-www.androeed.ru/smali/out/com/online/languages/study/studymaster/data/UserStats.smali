.class public Lcom/online/languages/study/studymaster/data/UserStats;
.super Ljava/lang/Object;
.source "UserStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;,
        Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;,
        Lcom/online/languages/study/studymaster/data/UserStats$TimeDownComparator;,
        Lcom/online/languages/study/studymaster/data/UserStats$TimeComparator;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataFromJson:Lcom/online/languages/study/studymaster/data/DataFromJson;

.field private dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field private dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field private navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field showWorld:Ljava/lang/Boolean;

.field public uniqueCats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation
.end field

.field public userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataFromJson;

    invoke-direct {v0, p1}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dataFromJson:Lcom/online/languages/study/studymaster/data/DataFromJson;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/data/UserStatsData;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getSectionsData()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getErrorsData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavStructure;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "world_section"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->showWorld:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    new-instance p1, Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-direct {p1}, Lcom/online/languages/study/studymaster/data/UserStatsData;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getUniqueCats()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->uniqueCats:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getStatsStructure()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/data/UserStats;->getCatIds(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkDataItemsStats()V
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p0}, Lcom/online/languages/study/studymaster/DBHelper;->getAllDataItemsStats(Lcom/online/languages/study/studymaster/data/UserStats;)Lcom/online/languages/study/studymaster/data/UserStats;

    return-void
.end method

.method private getCatIds(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->allUniqueIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->idsToCheck:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/Section;->type:Ljava/lang/String;

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->idsToCheck:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->allUniqueIds:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/Section;->allCatIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_3f
    return-void
.end method

.method private getErrorsData()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getErrorsData(Lcom/online/languages/study/studymaster/data/UserStatsData;)Lcom/online/languages/study/studymaster/data/UserStatsData;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->sortUserStatsLists()V

    return-void
.end method

.method private getSectionsData()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dataFromJson:Lcom/online/languages/study/studymaster/data/DataFromJson;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getSectionsList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getSectionsDataFromDB()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/Section;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/data/Section;->calculateProgress()V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    iget v4, v1, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    iget v4, v1, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->unknownDataCount:I

    iget v1, v1, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->unknownDataCount:I

    goto :goto_15

    :cond_40
    return-void
.end method

.method private getSectionsDataDB()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->checkAppStatsDB(Lcom/online/languages/study/studymaster/data/UserStatsData;)Lcom/online/languages/study/studymaster/data/UserStatsData;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    return-void
.end method

.method private getSectionsDataFromDB()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/DBHelper;->checkSectionsStats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private getStatsStructure()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavStructure;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavSection;->spec:Ljava/lang/String;

    const-string v3, "world"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->showWorld:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    invoke-direct {v3, v1, v4}, Lcom/online/languages/study/studymaster/data/Section;-><init>(Lcom/online/languages/study/studymaster/data/NavSection;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_35
    iget-object v2, v1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/data/UserStats;->context:Landroid/content/Context;

    invoke-direct {v3, v1, v4}, Lcom/online/languages/study/studymaster/data/Section;-><init>(Lcom/online/languages/study/studymaster/data/NavSection;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_4e
    return-void
.end method

.method private sortSectionErrors(Lcom/online/languages/study/studymaster/data/Section;)V
    .registers 5

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    new-instance v0, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;

    invoke-direct {v0, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortUserStatsLists()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->recentWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$TimeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$TimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->mostErrorsWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsTimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->mostErrorsWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$ErrorsCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getAllDataFromJson()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v3, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->idsToCheck:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Lcom/online/languages/study/studymaster/DBHelper;->selectSimpleDataItemsByIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/online/languages/study/studymaster/data/UserStatsData;->allWords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->allWords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOldestLIst()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStats;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v2, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->allUniqueIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/online/languages/study/studymaster/DBHelper;->getOldestFromDB(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->reviseWords:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->reviseWords:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/UserStats$TimeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/UserStats$TimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/UserStats;Lcom/online/languages/study/studymaster/data/UserStats$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->reviseWords:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStats;->userStatsData:Lcom/online/languages/study/studymaster/data/UserStatsData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/UserStatsData;->reviseWords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public updateData()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getSectionsDataDB()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->getErrorsData()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/UserStats;->checkDataItemsStats()V

    return-void
.end method
