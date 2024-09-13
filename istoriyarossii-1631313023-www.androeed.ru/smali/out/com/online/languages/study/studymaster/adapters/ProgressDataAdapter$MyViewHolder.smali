.class public Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProgressDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field knownTxt:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field progressBarKnown:Landroid/widget/ProgressBar;

.field sudiedTxt:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902dc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0901f8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0901f9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->progressBarKnown:Landroid/widget/ProgressBar;

    const p1, 0x7f09017b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->knownTxt:Landroid/widget/TextView;

    const p1, 0x7f0902a3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ProgressDataAdapter$MyViewHolder;->sudiedTxt:Landroid/widget/TextView;

    return-void
.end method
