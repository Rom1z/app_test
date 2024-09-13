.class public Lcom/online/languages/study/studymaster/SectionStatsListActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SectionStatsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/SectionStatsListActivity$RecyclerTouchListener;,
        Lcom/online/languages/study/studymaster/SectionStatsListActivity$ClickListener;
    }
.end annotation


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dataCountTxt:Landroid/widget/TextView;

.field dataDesc:Landroid/widget/TextView;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

.field dataTitle:Landroid/widget/TextView;

.field dataType:I

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field easy_mode:Ljava/lang/Boolean;

.field full_version:Ljava/lang/Boolean;

.field private mAdapter:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

.field mainColor:I

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field section:Lcom/online/languages/study/studymaster/data/Section;

.field tSectionID:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->mainColor:I

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->tSectionID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public notifyLocked()V
    .registers 5

    const v0, 0x7f110133

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->updateContent()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->full_version:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v2, "2"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->tSectionID:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v2, p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/online/languages/study/studymaster/data/Section;-><init>(Lcom/online/languages/study/studymaster/data/NavSection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f11021b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->setTitle(I)V

    const p1, 0x7f090254

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataCountTxt:Landroid/widget/TextView;

    const p1, 0x7f0900b5

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataTitle:Landroid/widget/TextView;

    const p1, 0x7f0900b4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "data_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const p1, 0x7f090222

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-virtual {p1, v2}, Lcom/online/languages/study/studymaster/DBHelper;->getSectionCatItemsStats(Lcom/online/languages/study/studymaster/data/Section;)Lcom/online/languages/study/studymaster/data/Section;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->setContent()V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    iget v3, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->mainColor:I

    iget v4, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;II)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setSelected(Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/online/languages/study/studymaster/SectionStatsListActivity$RecyclerTouchListener;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/online/languages/study/studymaster/SectionStatsListActivity$1;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity$1;-><init>(Lcom/online/languages/study/studymaster/SectionStatsListActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/online/languages/study/studymaster/SectionStatsListActivity$RecyclerTouchListener;-><init>(Lcom/online/languages/study/studymaster/SectionStatsListActivity;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/online/languages/study/studymaster/SectionStatsListActivity$ClickListener;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    return v1
.end method

.method public onListItemClick(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/SectionStatsListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity$2;-><init>(Lcom/online/languages/study/studymaster/SectionStatsListActivity;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1a

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/DataModeDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/DataModeDialog;->openDialog()V

    return v2

    :cond_1a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCat(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->notifyLocked()V

    return-void

    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "force_status"

    const-string v2, "always"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const-string v2, "data_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/Category;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    const-string v2, "cat_spec"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/Category;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Category;->id:Ljava/lang/String;

    const-string v2, "cat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/Category;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Category;->title:Ljava/lang/String;

    const-string v1, "cat_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openList(I)V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->notifyLocked()V

    return-void

    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CustomDataActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->tSectionID:Ljava/lang/String;

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const-string v2, "data_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/Category;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Category;->id:Ljava/lang/String;

    const-string v1, "cat_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public setContent()V
    .registers 6

    const v0, 0x7f11015e

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101f8

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v2, v2, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    iget v3, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v2, v0, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    const v0, 0x7f110159

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101f7

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2f
    iget v3, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v2, v0, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    const v0, 0x7f110163

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1101f9

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_46
    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataCountTxt:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dataDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateContent()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getSectionCatItemsStats(Lcom/online/languages/study/studymaster/data/Section;)Lcom/online/languages/study/studymaster/data/Section;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->setContent()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsListActivity;->mAdapter:Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/CustomSectionAdapter;->notifyDataSetChanged()V

    return-void
.end method
