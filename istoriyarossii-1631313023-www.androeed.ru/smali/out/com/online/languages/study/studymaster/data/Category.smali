.class public Lcom/online/languages/study/studymaster/data/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field public allDataCount:I

.field public customItemsCount:I

.field public familiarDataCount:I

.field public id:Ljava/lang/String;

.field public knownDataCount:I

.field public spec:Ljava/lang/String;

.field public studiedDataCount:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unknownDataCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    return-void
.end method

.method constructor <init>(Lcom/online/languages/study/studymaster/data/NavCategory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Category;->id:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Category;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->studiedDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->knownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->allDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->familiarDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->unknownDataCount:I

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->customItemsCount:I

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/Category;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/data/Category;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateDataCount()V
    .registers 3

    iget v0, p0, Lcom/online/languages/study/studymaster/data/Category;->studiedDataCount:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Category;->knownDataCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/online/languages/study/studymaster/data/Category;->familiarDataCount:I

    iget v1, p0, Lcom/online/languages/study/studymaster/data/Category;->allDataCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/online/languages/study/studymaster/data/Category;->unknownDataCount:I

    return-void
.end method
