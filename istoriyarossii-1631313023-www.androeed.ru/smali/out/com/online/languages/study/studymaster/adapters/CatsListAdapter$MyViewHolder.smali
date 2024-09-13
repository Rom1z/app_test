.class Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CatsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field catGroupCount:Landroid/widget/TextView;

.field catGroupCountBox:Landroid/view/View;

.field catLockedBox:Landroid/view/View;

.field progressBox:Landroid/view/View;

.field progressCircle:Landroid/widget/ImageView;

.field progressTxt:Landroid/widget/TextView;

.field sectionDesc:Landroid/widget/TextView;

.field sectionItemBox:Landroid/view/View;

.field setDivider:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090257

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->sectionItemBox:Landroid/view/View;

    const p1, 0x7f0900d7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->setDivider:Landroid/view/View;

    const p1, 0x7f09025d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f090255

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    const p1, 0x7f090090

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressTxt:Landroid/widget/TextView;

    const p1, 0x7f09008a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catGroupCount:Landroid/widget/TextView;

    const p1, 0x7f090091

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    const p1, 0x7f09008b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catGroupCountBox:Landroid/view/View;

    const p1, 0x7f090092

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->progressCircle:Landroid/widget/ImageView;

    const p1, 0x7f09008f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter$MyViewHolder;->catLockedBox:Landroid/view/View;

    return-void
.end method
