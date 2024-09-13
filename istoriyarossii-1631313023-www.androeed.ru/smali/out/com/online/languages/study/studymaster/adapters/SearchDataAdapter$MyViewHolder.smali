.class public Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public desc:Landroid/widget/TextView;

.field gIcon:Landroid/widget/ImageView;

.field iIcon:Landroid/widget/ImageView;

.field image:Landroid/widget/ImageView;

.field noteIcon:Landroid/widget/ImageView;

.field star:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

.field public title:Landroid/widget/TextView;

.field wrapper:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902dc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0900c3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    const p1, 0x7f090159

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->image:Landroid/widget/ImageView;

    const p1, 0x7f09018c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->star:Landroid/widget/ImageView;

    const p1, 0x7f090139

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->gIcon:Landroid/widget/ImageView;

    const p1, 0x7f09014e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->iIcon:Landroid/widget/ImageView;

    const p1, 0x7f0901d8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->noteIcon:Landroid/widget/ImageView;

    const p1, 0x7f09030e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/SearchDataAdapter$MyViewHolder;->wrapper:Landroid/view/View;

    return-void
.end method
