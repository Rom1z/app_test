.class Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotesArchiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field mainWrap:Landroid/view/View;

.field settings:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

.field title:Landroid/widget/TextView;

.field wrap:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0902dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0900c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09030b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->wrap:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090265

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->settings:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesArchiveAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    return-void
.end method
