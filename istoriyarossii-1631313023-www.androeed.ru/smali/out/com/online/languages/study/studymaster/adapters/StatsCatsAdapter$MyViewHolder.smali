.class Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StatsCatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field progress:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0902e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090205

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->progress:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0900c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090168

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StatsCatsAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    return-void
.end method
