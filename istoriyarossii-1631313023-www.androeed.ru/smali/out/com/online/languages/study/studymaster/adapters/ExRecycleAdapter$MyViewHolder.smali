.class Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field desc:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field progressBox:Landroid/view/View;

.field progressTxt:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090100

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0900ff

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    const p1, 0x7f090101

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f090103

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->progressTxt:Landroid/widget/TextView;

    const p1, 0x7f090104

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ExRecycleAdapter$MyViewHolder;->progressBox:Landroid/view/View;

    return-void
.end method
