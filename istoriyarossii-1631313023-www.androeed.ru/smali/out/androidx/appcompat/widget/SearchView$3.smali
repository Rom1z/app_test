.class Landroidx/appcompat/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object p1, p1, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$3;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-interface {p1, v0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_f
    return-void
.end method
