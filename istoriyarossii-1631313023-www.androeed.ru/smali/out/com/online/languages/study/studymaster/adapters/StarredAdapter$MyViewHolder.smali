.class Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StarredAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/StarredAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field public catItemWrap:Landroid/widget/RelativeLayout;

.field public helperView:Landroid/view/View;

.field image:Landroid/widget/ImageView;

.field starIcon:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/StarredAdapter;

.field public translate:Landroid/widget/TextView;

.field public txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/StarredAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/StarredAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f09016b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->txt:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090169

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->translate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090050

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->helperView:Landroid/view/View;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->catItemWrap:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090168

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090305

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/StarredAdapter$MyViewHolder;->starIcon:Landroid/view/View;

    return-void
.end method
