.class Lcom/online/languages/study/studymaster/adapters/NotesAdapter$4;
.super Ljava/lang/Object;
.source "NotesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->manageMoreView(Landroid/view/View;Lcom/online/languages/study/studymaster/data/NoteData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$4;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$4;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/adapters/NotesAdapter;->fragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/fragments/NotesFragment;->openCompleteList()V

    return-void
.end method
