.class public Lcom/online/languages/study/studymaster/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/data/DataManager$TimeUpdateNoteComparator;,
        Lcom/online/languages/study/studymaster/data/DataManager$TimeNoteComparator;,
        Lcom/online/languages/study/studymaster/data/DataManager$OrderComparator;,
        Lcom/online/languages/study/studymaster/data/DataManager$ScoreCountComparator;,
        Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;
    }
.end annotation


# instance fields
.field public appSettings:Landroid/content/SharedPreferences;

.field private context:Landroid/content/Context;

.field public dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field public gallerySection:Z

.field public homecards:Z

.field public navCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation
.end field

.field public simplified:Z

.field public statsSection:Z

.field public timer:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->timer:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/data/DataManager;->getParams()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->timer:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    if-ne p2, v0, :cond_29

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/DataManager;->getUniquesCats()V

    :cond_29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->timer:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/data/DataManager;->getParams()V

    :cond_22
    return-void
.end method

.method private getFilterValue(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/DataItem;->filter:Ljava/lang/String;

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const-string v1, "3000"

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_22

    aget-object v1, v3, v5

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    return-object v1
.end method

.method private getUniquesCats()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataFromJson;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getAllUniqueCats()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->navCategories:Ljava/util/ArrayList;

    return-void
.end method

.method private saveParams()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    const-string v2, "param_simplified"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    const-string v2, "param_homecards"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    const-string v2, "param_gallery"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    const-string v2, "param_stats"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public checkDataItemsData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
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

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarredList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public checkStarStatusById(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkStarred(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public chronoOrder(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    const-string v2, "chrono"

    invoke-direct {p0, v1, v2}, Lcom/online/languages/study/studymaster/data/DataManager;->getFilterValue(Lcom/online/languages/study/studymaster/data/DataItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->order:I

    goto :goto_4

    :cond_1d
    new-instance v0, Lcom/online/languages/study/studymaster/data/DataManager$OrderComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/online/languages/study/studymaster/data/DataManager$OrderComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public convertNotesToObjects(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/NoteData;

    new-instance v2, Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-direct {v2, v1}, Lcom/online/languages/study/studymaster/data/DataObject;-><init>(Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    return-object v0
.end method

.method public getCatCustomList(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/DataItem;

    const/4 v4, 0x2

    if-nez p2, :cond_2a

    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-le v3, v4, :cond_12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2a
    if-ne p2, v3, :cond_40

    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-lez v3, :cond_38

    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    const/4 v5, 0x3

    if-ge v3, v5, :cond_38

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget v3, v2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-le v3, v4, :cond_12

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_40
    if-ne p2, v4, :cond_12

    iget v4, v2, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-ge v4, v3, :cond_12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_4a
    if-ne p2, v3, :cond_4f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4f
    return-object v0
.end method

.method public getCatCustomList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getDataItemsByCats(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    const/4 v3, 0x2

    if-nez p2, :cond_27

    iget v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-le v2, v3, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    if-ne p2, v2, :cond_31

    iget v2, v1, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-lez v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_31
    if-ne p2, v3, :cond_f

    iget v3, v1, Lcom/online/languages/study/studymaster/data/DataItem;->rate:I

    if-ge v3, v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3b
    if-ne p2, v2, :cond_46

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager$ScoreCountComparator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/online/languages/study/studymaster/data/DataManager$ScoreCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_46
    return-object v0
.end method

.method public getCatDBList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
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

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getCatByTag(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCatProgress(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->checkCatProgressDB(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDataItemFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getDataItemById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DataItem;

    move-result-object p1

    return-object p1
.end method

.method public getDetailFromDB(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getDetailById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/DetailItem;

    move-result-object p1

    return-object p1
.end method

.method getMapsCount(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getCatByTag(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getNavStructure()Lcom/online/languages/study/studymaster/data/NavStructure;
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataFromJson;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getStructure()Lcom/online/languages/study/studymaster/data/NavStructure;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NoteData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/DBHelper;->getNotes()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataManager$TimeUpdateNoteComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/DataManager$TimeUpdateNoteComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getNotesForArchive()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const-string v1, "note_archive"

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getNotesListForSet(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataManager$TimeUpdateNoteComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/DataManager$TimeUpdateNoteComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->convertNotesToObjects(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParams()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "param_simplified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "param_homecards"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "param_gallery"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "param_stats"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    return-void
.end method

.method public getParamsAndSave()V
    .registers 1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/data/DataManager;->getParamsFromJSON()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/DataManager;->saveParams()V

    return-void
.end method

.method public getParamsFromJSON()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/data/DataFromJson;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/online/languages/study/studymaster/data/DataFromJson;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/DataFromJson;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "simplified"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    const-string v1, "homecards"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->homecards:Z

    const-string v1, "gallery"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->gallerySection:Z

    const-string v1, "stats"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->statsSection:Z

    return-void
.end method

.method public getScreenSize()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ": W"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getSectionDBList(Lcom/online/languages/study/studymaster/data/NavSection;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/online/languages/study/studymaster/data/NavSection;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getAllDataItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSectionsDataFromDB(Lcom/online/languages/study/studymaster/data/UserStatsData;)Lcom/online/languages/study/studymaster/data/UserStatsData;
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v3, v0, v2}, Lcom/online/languages/study/studymaster/DBHelper;->selectSectionDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/online/languages/study/studymaster/data/Section;)Lcom/online/languages/study/studymaster/data/Section;

    move-result-object v2

    invoke-virtual {v2}, Lcom/online/languages/study/studymaster/data/Section;->calculateProgress()V

    goto :goto_c

    :cond_22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p1
.end method

.method public getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "starred_sort_type"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_15

    move-object v0, v2

    :cond_15
    const/4 p2, 0x2

    if-ne p1, p2, :cond_21

    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getStarredFromDB(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_29

    :cond_21
    iget-object p1, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/DataManager;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/online/languages/study/studymaster/DBHelper;->getStarredFromDB(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_39

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;

    invoke-direct {p2, p0, v1}, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4c

    :cond_39
    const-string p2, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    new-instance p2, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;

    invoke-direct {p2, p0, v1}, Lcom/online/languages/study/studymaster/data/DataManager$TimeStarredComparator;-><init>(Lcom/online/languages/study/studymaster/data/DataManager;Lcom/online/languages/study/studymaster/data/DataManager$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_4c
    :goto_4c
    return-object p1
.end method

.method public getStarredWords(Ljava/lang/Boolean;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/data/DataManager;->getStarredWords(ILjava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/data/DataManager;->getTime(Ljava/lang/String;Z)V

    return-void
.end method

.method public getTime(Ljava/lang/String;Z)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_50

    iget-wide v2, p0, Lcom/online/languages/study/studymaster/data/DataManager;->timer:J

    sub-long v2, v0, v2

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v4, "mm:ss.SSS"

    invoke-direct {p2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dif: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_50
    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->timer:J

    const-string p2, "Timing"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeCatData(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->deleteCatResult(Ljava/lang/String;)I

    return-void
.end method
