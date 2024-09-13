.class public Lcom/online/languages/study/studymaster/files/DBImport;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;,
        Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;,
        Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;,
        Lcom/online/languages/study/studymaster/files/DBImport$NoteDataTable;,
        Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;,
        Lcom/online/languages/study/studymaster/files/DBImport$UserItemsDataTable;,
        Lcom/online/languages/study/studymaster/files/DBImport$TestData;,
        Lcom/online/languages/study/studymaster/files/DBImport$TestsDataTable;,
        Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;,
        Lcom/online/languages/study/studymaster/files/DBImport$CatDataTable;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field private file:Ljava/io/File;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/files/DBImport;->uri:Landroid/net/Uri;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->file:Ljava/io/File;

    new-instance p2, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p2, p1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->context:Landroid/content/Context;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/files/DBImport;->file:Ljava/io/File;

    new-instance p2, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p2, p1}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    return-void
.end method

.method private parseData(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x0

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "table="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v3, v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_37

    iget-object v3, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    goto :goto_f

    :cond_4b
    if-nez v3, :cond_53

    iget-object v5, v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->columns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    :cond_53
    iget-object v5, v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_5b
    iget-object p1, v1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    const-string v3, "empty"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6a
    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_7f

    iget-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->context:Landroid/content/Context;

    const-string v0, "\u041d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u044b\u0439 \u0444\u0430\u0439\u043b."

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7f
    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/files/DBImport;->updateCatDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/files/DBImport;->updateTestsDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/files/DBImport;->updateUserItemsDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/files/DBImport;->updateNotesDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V

    return-void
.end method

.method private updateCatDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$CatDataTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$CatDataTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    const-string v4, "cat_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_28
    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;->catId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/online/languages/study/studymaster/files/DBImport$CatDataLine;->progress:Ljava/lang/String;

    iget-object v0, v1, Lcom/online/languages/study/studymaster/files/DBImport$CatDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_57
    iget-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/files/DBImport$CatDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->importCatData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private updateNotesDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    const-string v4, "notes_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_28
    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->notePrimaryKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteTitle:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteContent:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteIcon:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteInfo:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteStatus:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteType:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteParams:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteFilter:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteParent:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteOrder:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteCreated:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteUpdated:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->noteUpdatedSort:Ljava/lang/String;

    iget-object v0, v1, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_d4
    iget-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->importNotesData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private updateTestsDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$TestsDataTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$TestsDataTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    const-string v4, "tests_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_28
    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/online/languages/study/studymaster/files/DBImport$TestData;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/files/DBImport$TestData;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$TestData;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$TestData;->progress:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/online/languages/study/studymaster/files/DBImport$TestData;->testTime:Ljava/lang/String;

    iget-object v0, v1, Lcom/online/languages/study/studymaster/files/DBImport$TestsDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_60
    iget-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/files/DBImport$TestsDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->importTestsData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private updateUserItemsDataTable(Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;)V
    .registers 7

    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBImport$UserItemsDataTable;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBImport$UserItemsDataTable;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    iget-object p1, p1, Lcom/online/languages/study/studymaster/files/DBImport$ImportedDB;->tables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    const-string v4, "user_items_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_28
    iget-object p1, v0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;-><init>(Lcom/online/languages/study/studymaster/files/DBImport;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->id:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemInfo:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemProgress:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemErrors:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemScore:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemStatus:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemStarred:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemTime:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemTimeStarred:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/online/languages/study/studymaster/files/DBImport$UserItemData;->itemTimeError:Ljava/lang/String;

    iget-object v0, v1, Lcom/online/languages/study/studymaster/files/DBImport$UserItemsDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_a1
    iget-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/files/DBImport;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/files/DBImport$UserItemsDataTable;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/DBHelper;->importUserData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method


# virtual methods
.method public importCSV()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/online/languages/study/studymaster/files/DBImport;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/files/DBImport;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/opencsv/CSVReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Lcom/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_1e

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/files/DBImport;->parseData(Ljava/util/List;)V

    return-void
.end method
