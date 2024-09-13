.class Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;
.super Ljava/lang/Object;
.source "NotesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->onBindViewHolder(Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

.field final synthetic val$note:Lcom/online/languages/study/studymaster/data/NoteData;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v0, "last"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->fragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$1;->val$note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->onNoteClick(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_15
    return-void
.end method
