.class Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/NotesFragment;->performAction(ILcom/online/languages/study/studymaster/data/NoteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field final synthetic val$note:Lcom/online/languages/study/studymaster/data/NoteData;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$2;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->deleteConfirmDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method
