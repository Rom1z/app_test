.class Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;
.super Ljava/lang/Object;
.source "NotesArchiveAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

.field final synthetic val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Lcom/online/languages/study/studymaster/data/DataObject;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-static {p1}, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;->access$000(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;)Lcom/online/languages/study/studymaster/NotesArchiveActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$1;->val$dataObject:Lcom/online/languages/study/studymaster/data/DataObject;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/NotesArchiveActivity;->openMyCat(Lcom/online/languages/study/studymaster/data/DataObject;)V

    return-void
.end method
