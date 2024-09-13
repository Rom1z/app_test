.class public Lcom/online/languages/study/studymaster/data/UserStatsData;
.super Ljava/lang/Object;
.source "UserStatsData.java"


# instance fields
.field public allDataCount:I

.field public allUniqueIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public errorsWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public familiarDataCount:I

.field public familiarWords:Ljava/lang/String;

.field public idsToCheck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public knownWords:Ljava/lang/String;

.field public mostErrorsWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public recentWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public reviseWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public sectionsDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/Section;",
            ">;"
        }
    .end annotation
.end field

.field public seenWords:Ljava/lang/String;

.field public studiedDataCount:I

.field public studiedWords:Ljava/lang/String;

.field public studiedWordsSize:I

.field public uniqueCats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/NavCategory;",
            ">;"
        }
    .end annotation
.end field

.field public unknownDataCount:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedWordsSize:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedWords:Ljava/lang/String;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->knownWords:Ljava/lang/String;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarWords:Ljava/lang/String;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->seenWords:Ljava/lang/String;

    iput v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->allDataCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->recentWords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->errorsWords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->mostErrorsWords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->allUniqueIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->idsToCheck:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/UserStatsData;->sectionsDataList:Ljava/util/ArrayList;

    return-void
.end method
