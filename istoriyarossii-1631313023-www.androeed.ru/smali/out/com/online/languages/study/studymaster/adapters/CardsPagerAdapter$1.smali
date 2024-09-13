.class Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;
.super Ljava/lang/Object;
.source "CardsPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

.field final synthetic val$answer:Landroid/widget/TextView;

.field final synthetic val$showMsg:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 4

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;->this$0:Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;->val$showMsg:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;->val$answer:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;->val$showMsg:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/CardsPagerAdapter$1;->val$answer:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
