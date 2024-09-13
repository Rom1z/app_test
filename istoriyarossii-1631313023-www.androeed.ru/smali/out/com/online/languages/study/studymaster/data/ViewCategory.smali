.class public Lcom/online/languages/study/studymaster/data/ViewCategory;
.super Ljava/lang/Object;
.source "ViewCategory.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field public progress:I

.field public spec:Ljava/lang/String;

.field public subgroup:I

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unlocked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/data/NavCategory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->subgroup:I

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->desc:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->id:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->unlocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->unlocked:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->parent:Ljava/lang/String;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->spec:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->spec:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavCategory;->image:Ljava/lang/String;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ViewCategory;->image:Ljava/lang/String;

    return-void
.end method
