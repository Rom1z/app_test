.class Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImgPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field emptyTxt:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field selector:Landroid/view/View;

.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->this$0:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09014f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const p1, 0x7f09015f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->selector:Landroid/view/View;

    const p1, 0x7f0900ea

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter$MyViewHolder;->emptyTxt:Landroid/view/View;

    return-void
.end method
