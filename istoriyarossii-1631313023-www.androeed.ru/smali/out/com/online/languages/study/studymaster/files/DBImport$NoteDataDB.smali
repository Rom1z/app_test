.class public Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/files/DBImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteDataDB"
.end annotation


# instance fields
.field public noteContent:Ljava/lang/String;

.field public noteCreated:Ljava/lang/String;

.field public noteFilter:Ljava/lang/String;

.field public noteIcon:Ljava/lang/String;

.field public noteId:Ljava/lang/String;

.field public noteInfo:Ljava/lang/String;

.field public noteOrder:Ljava/lang/String;

.field public noteParams:Ljava/lang/String;

.field public noteParent:Ljava/lang/String;

.field public notePrimaryKey:Ljava/lang/String;

.field public noteStatus:Ljava/lang/String;

.field public noteTitle:Ljava/lang/String;

.field public noteType:Ljava/lang/String;

.field public noteUpdated:Ljava/lang/String;

.field public noteUpdatedSort:Ljava/lang/String;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/files/DBImport;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/files/DBImport;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$NoteDataDB;->this$0:Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
