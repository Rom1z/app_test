.class public Landroidx/databinding/adapters/SearchViewBindingAdapter;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;,
        Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;,
        Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;,
        Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnQueryTextListener(Landroid/widget/SearchView;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    if-nez p1, :cond_f

    if-nez p2, :cond_f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_17

    :cond_f
    new-instance v0, Landroidx/databinding/adapters/SearchViewBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/SearchViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public static setOnSuggestListener(Landroid/widget/SearchView;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    if-nez p1, :cond_f

    if-nez p2, :cond_f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    goto :goto_17

    :cond_f
    new-instance v0, Landroidx/databinding/adapters/SearchViewBindingAdapter$2;

    invoke-direct {v0, p1, p2}, Landroidx/databinding/adapters/SearchViewBindingAdapter$2;-><init>(Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroidx/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    :cond_17
    :goto_17
    return-void
.end method
