.class Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;
.super Ljava/lang/Object;
.source "DBImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/files/DBImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportedTable"
.end annotation


# instance fields
.field columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field tableName:Ljava/lang/String;

.field tableVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/files/DBImport;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/files/DBImport;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->this$0:Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "empty"

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->tableName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->columns:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/files/DBImport$ImportedTable;->lines:Ljava/util/List;

    return-void
.end method
