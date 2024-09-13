.class public Lcom/online/languages/study/studymaster/data/Section;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/data/Section$ErrorsCountComparator;,
        Lcom/online/languages/study/studymaster/data/Section$ErrorsTimeComparator;
    }
.end annotation


# instance fields
.field public allCatIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public allDataCount:I

.field public catIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Category;",
            ">;"
        }
    .end annotation
.end field

.field public checkCatIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private check_control:I

.field public controlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public controlTests:I

.field public customItemsCount:I

.field private dataSelect:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public desc_short:Ljava/lang/String;

.field public errorsCount:I

.field public errorsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public familiarDataCount:I

.field private haveExtra:Ljava/lang/Boolean;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public knownDataCount:I

.field public knownPart:I

.field public knownResult:I

.field public progress:I

.field public stadiedCatsCount:I

.field public studiedDataCount:I

.field public studiedPart:I

.field public studiedResult:I

.field public tag:Ljava/lang/String;

.field public testResult:I

.field public testResults:I

.field public title:Ljava/lang/String;

.field public title_short:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unknownDataCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlTests:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->customItemsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->stadiedCatsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->errorsCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->catIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allCatIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->check_control:I

    const-string v0, "dates"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/data/NavSection;Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlTests:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->customItemsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->stadiedCatsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->errorsCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/Section;->catIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/Section;->allCatIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/Section;->controlMap:Ljava/util/Map;

    const/4 v1, 0x1

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Section;->check_control:I

    const-string v2, "dates"

    iput-object v2, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->id:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->title:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->title_short:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->title_short:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->desc_short:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->desc_short:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->image:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->image:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/online/languages/study/studymaster/data/Section;->type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->haveExtra:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavSection;->catIdList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->catIds:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavSection;->catIdList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allCatIds:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "control_tests"

    const-string v3, "1"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->check_control:I

    const-string v0, "data_select"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->uniqueCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a0
    :goto_a0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->haveExtra:Ljava/lang/Boolean;

    :cond_bc
    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v4, "items_list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    const-string v4, "maps_list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    goto :goto_a0

    :cond_db
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v3, Lcom/online/languages/study/studymaster/data/Category;

    invoke-direct {v3, p2}, Lcom/online/languages/study/studymaster/data/Category;-><init>(Lcom/online/languages/study/studymaster/data/NavCategory;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_fd
    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v3, Lcom/online/languages/study/studymaster/data/Category;

    invoke-direct {v3, p2}, Lcom/online/languages/study/studymaster/data/Category;-><init>(Lcom/online/languages/study/studymaster/data/NavCategory;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_10f
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/Section;->catIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlTests:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->customItemsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResult:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->stadiedCatsCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->errorsCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->catIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->checkCatIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->allCatIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->check_control:I

    const-string v0, "dates"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/Section;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/Section;->desc:Ljava/lang/String;

    return-void
.end method

.method private calculateControl()I
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->haveExtra:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    goto :goto_15

    :cond_14
    const/4 v0, 0x2

    :goto_15
    iget-object v2, p0, Lcom/online/languages/study/studymaster/data/Section;->controlMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "_gen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/online/languages/study/studymaster/data/Section;->dataSelect:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_50
    add-int/2addr v3, v4

    goto :goto_20

    :cond_52
    div-int/2addr v3, v0

    return v3
.end method


# virtual methods
.method public calculateProgress()V
    .registers 5

    iget v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Section;->knownDataCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    iget v2, p0, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    sub-int v3, v2, v1

    iput v3, p0, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v2

    iput v3, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x14

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/Section;->calculateControl()I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->controlTests:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Section;->check_control:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    if-le v0, v1, :cond_3d

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    goto :goto_3d

    :cond_38
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    :cond_3d
    :goto_3d
    iget v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    mul-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Section;->testResult:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    iget v2, p0, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    return-void
.end method

.method public sortSectionErrors()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/Section$ErrorsTimeComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/Section$ErrorsTimeComparator;-><init>(Lcom/online/languages/study/studymaster/data/Section;Lcom/online/languages/study/studymaster/data/Section$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    new-instance v1, Lcom/online/languages/study/studymaster/data/Section$ErrorsCountComparator;

    invoke-direct {v1, p0, v2}, Lcom/online/languages/study/studymaster/data/Section$ErrorsCountComparator;-><init>(Lcom/online/languages/study/studymaster/data/Section;Lcom/online/languages/study/studymaster/data/Section$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
