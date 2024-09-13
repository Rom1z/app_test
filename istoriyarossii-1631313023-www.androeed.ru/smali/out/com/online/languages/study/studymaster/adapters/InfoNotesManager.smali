.class public Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;
.super Ljava/lang/Object;
.source "InfoNotesManager.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->context:Landroid/content/Context;

    return-void
.end method

.method private postNote(Lcom/online/languages/study/studymaster/DBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NoteData;-><init>()V

    iput-object p3, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iput-object p4, v0, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iput-object p5, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/online/languages/study/studymaster/DBHelper;->createNote(Landroid/database/sqlite/SQLiteDatabase;Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method


# virtual methods
.method public postStartNotes(Lcom/online/languages/study/studymaster/DBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->context:Landroid/content/Context;

    const v1, 0x7f110095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->context:Landroid/content/Context;

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "info.png"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->postNote(Lcom/online/languages/study/studymaster/DBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public postUpdateNotes(Lcom/online/languages/study/studymaster/DBHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 11

    const/16 v0, 0x3f

    if-ne p3, v0, :cond_1e

    iget-object p3, p0, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->context:Landroid/content/Context;

    const v0, 0x7f110095

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->context:Landroid/content/Context;

    const v0, 0x7f110094

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "info.png"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/adapters/InfoNotesManager;->postNote(Lcom/online/languages/study/studymaster/DBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
