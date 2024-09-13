.class Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/fragments/NotesFragment;->deleteConfirmDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field final synthetic val$noteData:Lcom/online/languages/study/studymaster/data/NoteData;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;->val$noteData:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;->this$0:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iget-object p2, p0, Lcom/online/languages/study/studymaster/fragments/NotesFragment$3;->val$noteData:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-static {p1, p2}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->access$000(Lcom/online/languages/study/studymaster/fragments/NotesFragment;Lcom/online/languages/study/studymaster/data/NoteData;)V

    return-void
.end method
