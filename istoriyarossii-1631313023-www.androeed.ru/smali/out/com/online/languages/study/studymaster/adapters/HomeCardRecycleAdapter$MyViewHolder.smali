.class public Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeCardRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public desc:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public imageWrapper:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902dc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0900c3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->desc:Landroid/widget/TextView;

    const p1, 0x7f090140

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f09015c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/HomeCardRecycleAdapter$MyViewHolder;->imageWrapper:Landroid/widget/LinearLayout;

    return-void
.end method
