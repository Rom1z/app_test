.class Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/NotesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field mainWrap:Landroid/view/View;

.field noteIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/NotesAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/NotesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901d9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0901d7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->content:Landroid/widget/TextView;

    const p1, 0x7f0901d8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->noteIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NotesAdapter$MyViewHolder;->mainWrap:Landroid/view/View;

    return-void
.end method
