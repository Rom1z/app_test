.class Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomDataListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field helperView:Landroid/view/View;

.field starIcon:Landroid/view/View;

.field statusView:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

.field translate:Landroid/widget/TextView;

.field txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09016b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090169

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->translate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090050

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090305

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09029a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomDataListAdapter$MyViewHolder;->statusView:Landroid/view/View;

    return-void
.end method
