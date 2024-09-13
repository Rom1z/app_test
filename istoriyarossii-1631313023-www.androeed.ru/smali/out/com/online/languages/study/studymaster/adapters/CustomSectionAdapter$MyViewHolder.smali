.class public Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomSectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public progressBox:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09025d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f090258

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter$MyViewHolder;->progressBox:Landroid/widget/TextView;

    return-void
.end method
