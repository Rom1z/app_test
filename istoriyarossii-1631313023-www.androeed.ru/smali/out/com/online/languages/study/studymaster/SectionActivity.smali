.class public Lcom/online/languages/study/studymaster/SectionActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SectionActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

.field easy_mode:Ljava/lang/Boolean;

.field full_version:Ljava/lang/Boolean;

.field mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field parent:Ljava/lang/String;

.field placePicutre:Landroid/widget/ImageView;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sectionDesc:Landroid/widget/TextView;

.field sectionTitle:Landroid/widget/TextView;

.field tSectionID:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "root"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->parent:Ljava/lang/String;

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->tSectionID:Ljava/lang/String;

    return-void
.end method

.method private updateContent()V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/data/ViewSection;->getProgress()V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public notifyLocked()V
    .registers 5

    const v0, 0x7f110133

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\"#ffffff\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "Action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->updateContent()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "parent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->parent:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "section_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->tSectionID:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v1, p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance v1, Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionActivity;->parent:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v3}, Lcom/online/languages/study/studymaster/data/ViewSection;-><init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/data/NavSection;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    const p1, 0x7f09025d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->sectionTitle:Landroid/widget/TextView;

    const p1, 0x7f090255

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->sectionDesc:Landroid/widget/TextView;

    const p1, 0x7f09008c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->placePicutre:Landroid/widget/ImageView;

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f110152

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_ec

    const p1, 0x7f110153

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->setTitle(I)V

    :cond_ec
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/ViewSection;->getProgress()V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-direct {p1, p0, v1, v3}, Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CatsListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f090154

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13a

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-nez v0, :cond_13a

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13a
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/pics/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;

    invoke-direct {v0, v2, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->placePicutre:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->themeTitle:Ljava/lang/String;

    const-string v0, "westworld"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18d

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->placePicutre:Landroid/widget/ImageView;

    const/16 v0, 0xff

    const/16 v1, 0x32

    const/16 v2, 0xf0

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_18d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->sectionTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->title_short:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->sectionDesc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_25

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1f

    const v1, 0x7f090164

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->modeInfoDialog()V

    return v2

    :cond_1f
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->openEasyModeDialog()V

    return v2

    :cond_25
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCat(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SectionActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SectionActivity$1;-><init>(Lcom/online/languages/study/studymaster/SectionActivity;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openCatActivity(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->viewSection:Lcom/online/languages/study/studymaster/data/ViewSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/ViewSection;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/ViewCategory;

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->type:Ljava/lang/String;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/ViewCategory;->unlocked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->notifyLocked()V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openFromViewCat(Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Lcom/online/languages/study/studymaster/data/ViewCategory;)V

    return-void
.end method

.method public openSectionList(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->tSectionID:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openSectionTest(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionActivity;->notifyLocked()V

    return-void

    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionTestActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionActivity;->tSectionID:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openTopCat(Landroid/view/View;)V
    .registers 7

    const v0, 0x7f090095

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/data/NavCategory;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NavCategory;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->navCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/NavCategory;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/NavCategory;->parent:Ljava/lang/String;

    const-string v4, "root_top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v0, v2

    goto :goto_18

    :cond_38
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NavCategory;->id:Ljava/lang/String;

    const-string v2, "cat_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavCategory;->title:Ljava/lang/String;

    const-string v1, "cat_title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method
