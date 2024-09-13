.class Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field mapImage:Landroid/widget/ImageView;

.field sectionDesc:Landroid/widget/TextView;

.field sectionItemBox:Landroid/view/View;

.field setDivider:Landroid/view/View;

.field taggedView:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/GalleryAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090257

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->sectionItemBox:Landroid/view/View;

    const p1, 0x7f0900d7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->setDivider:Landroid/view/View;

    const p1, 0x7f09025d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f090255

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->sectionDesc:Landroid/widget/TextView;

    const p1, 0x7f090191

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->mapImage:Landroid/widget/ImageView;

    const p1, 0x7f0902b3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/GalleryAdapter$MyViewHolder;->taggedView:Landroid/view/View;

    return-void
.end method
