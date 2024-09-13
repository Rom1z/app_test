.class public Lcom/online/languages/study/studymaster/data/NoteData;
.super Ljava/lang/Object;
.source "NoteData.java"


# instance fields
.field public content:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public time_created:J

.field public time_updated:J

.field public time_updated_sort:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->info:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->params:Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->parent:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->time_created:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated:J

    iput-wide v0, p0, Lcom/online/languages/study/studymaster/data/NoteData;->time_updated_sort:J

    return-void
.end method
