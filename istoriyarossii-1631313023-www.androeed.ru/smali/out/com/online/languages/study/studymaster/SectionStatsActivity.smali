.class public Lcom/online/languages/study/studymaster/SectionStatsActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "SectionStatsActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

.field dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

.field easy_mode:Ljava/lang/Boolean;

.field errorsCard:Landroid/view/View;

.field familiarProgress:Landroid/widget/TextView;

.field full_version:Ljava/lang/Boolean;

.field navSection:Lcom/online/languages/study/studymaster/data/NavSection;

.field navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field placePicutre:Landroid/widget/ImageView;

.field recentErrorsTxt:Landroid/widget/TextView;

.field recentErrorsTxt2:Landroid/widget/TextView;

.field section:Lcom/online/languages/study/studymaster/data/Section;

.field sectionDesc:Landroid/widget/TextView;

.field sectionFamiliarCountTxt:Landroid/widget/TextView;

.field sectionNum:I

.field sectionProgress:Landroid/widget/TextView;

.field sectionStudiedCountTxt:Landroid/widget/TextView;

.field sectionTitle:Landroid/widget/TextView;

.field sectionUnknownCountTxt:Landroid/widget/TextView;

.field studiedProgress:Landroid/widget/TextView;

.field tSectionID:Ljava/lang/String;

.field testResult:Landroid/widget/TextView;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, "01010"

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    return-void
.end method

.method private checkErrors(Lcom/online/languages/study/studymaster/data/Section;)V
    .registers 7

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/DBHelper;->getSectionErrorsData(Lcom/online/languages/study/studymaster/data/Section;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/data/Section;->sortSectionErrors()V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_80

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->errorsCard:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x6

    if-le v0, v3, :cond_25

    goto :goto_2b

    :cond_25
    iget-object v0, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2b
    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    move-object v0, v1

    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    const/4 v3, 0x3

    const-string v4, "\n"

    if-ge v2, v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_72

    :cond_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/online/languages/study/studymaster/data/DataItem;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataItem;->item:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_75
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91

    :cond_80
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->errorsCard:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_91
    return-void
.end method

.method private setStatsText(Lcom/online/languages/study/studymaster/data/Section;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->checkErrors(Lcom/online/languages/study/studymaster/data/Section;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/Section;->title_short:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionDesc:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/online/languages/study/studymaster/data/Section;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ColorProgress;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionProgress:Landroid/widget/TextView;

    iget v3, p1, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    invoke-virtual {v0, v3}, Lcom/online/languages/study/studymaster/adapters/ColorProgress;->getColorFromAttr(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionStudiedCountTxt:Landroid/widget/TextView;

    iget v1, p1, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionFamiliarCountTxt:Landroid/widget/TextView;

    iget v1, p1, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionUnknownCountTxt:Landroid/widget/TextView;

    iget v1, p1, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->testResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->familiarProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->studiedProgress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/online/languages/study/studymaster/data/Section;->allDataCount:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContent()V
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "section_num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionNum:I

    new-instance v0, Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/online/languages/study/studymaster/data/Section;-><init>(Lcom/online/languages/study/studymaster/data/NavSection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->checkSectionStatsDB(Lcom/online/languages/study/studymaster/data/Section;)Lcom/online/languages/study/studymaster/data/Section;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/pics/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v3, v3, Lcom/online/languages/study/studymaster/data/Section;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;

    invoke-direct {v1, v2, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedTransformation;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->placePicutre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->themeTitle:Ljava/lang/String;

    const-string v1, "westworld"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->placePicutre:Landroid/widget/ImageView;

    const/16 v1, 0xff

    const/16 v2, 0x32

    const/16 v3, 0xf0

    invoke-static {v1, v2, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_72
    return-void
.end method


# virtual methods
.method public displayEmtySection()V
    .registers 5

    const v0, 0x7f110111

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionTitle:Landroid/widget/TextView;

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

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->updateContent()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->setStatsText(Lcom/online/languages/study/studymaster/data/Section;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->themeTitle:Ljava/lang/String;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v0, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->setContentView(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->full_version:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "data_mode"

    const-string v1, "2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->easy_mode:Ljava/lang/Boolean;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nav_structure"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/NavStructure;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v0, p1}, Lcom/online/languages/study/studymaster/data/NavStructure;->getNavSectionByID(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NavSection;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    new-instance p1, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    const p1, 0x7f09025d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionTitle:Landroid/widget/TextView;

    const p1, 0x7f090255

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionDesc:Landroid/widget/TextView;

    const p1, 0x7f09025a

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionProgress:Landroid/widget/TextView;

    const p1, 0x7f09025b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionStudiedCountTxt:Landroid/widget/TextView;

    const p1, 0x7f090256

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionFamiliarCountTxt:Landroid/widget/TextView;

    const p1, 0x7f09025e

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->sectionUnknownCountTxt:Landroid/widget/TextView;

    const p1, 0x7f0900f0

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->errorsCard:Landroid/view/View;

    const p1, 0x7f09021d

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt:Landroid/widget/TextView;

    const p1, 0x7f09021e

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->recentErrorsTxt2:Landroid/widget/TextView;

    const p1, 0x7f0902bb

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->testResult:Landroid/widget/TextView;

    const p1, 0x7f0902a1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->familiarProgress:Landroid/widget/TextView;

    const p1, 0x7f090185

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->studiedProgress:Landroid/widget/TextView;

    const p1, 0x7f09008c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->placePicutre:Landroid/widget/ImageView;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f1101e9

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f090259

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09025c

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v2, "simple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_153

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_153
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->full_version:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_164

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-boolean p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->unlocked:Z

    if-nez p1, :cond_164

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_164
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->updateContent()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->setStatsText(Lcom/online/languages/study/studymaster/data/Section;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d001a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0900e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090293

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->easy_mode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_28
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090293

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->showInfoDialog()V

    return v2

    :cond_1d
    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->dataModeDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->openEasyModeDialog()V

    return v2

    :cond_23
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v2
.end method

.method public openCat(I)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openCatActivity(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v0, "simple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/Category;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/CatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v2, p1, Lcom/online/languages/study/studymaster/data/Category;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/online/languages/study/studymaster/data/Category;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Category;->spec:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openCat(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_2a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    const-string v3, "root"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->openSection(Landroid/content/Intent;Lcom/online/languages/study/studymaster/data/NavStructure;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public openDataTypeBySections(I)V
    .registers 8

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navSection:Lcom/online/languages/study/studymaster/data/NavSection;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NavSection;->type:Ljava/lang/String;

    const-string v1, "simple"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "data_type"

    const-string v3, "section_id"

    const-string v4, "nav_structure"

    if-eqz v0, :cond_44

    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/online/languages/study/studymaster/CustomDataActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v4, v4, Lcom/online/languages/study/studymaster/data/Section;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Section;->categories:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/online/languages/study/studymaster/data/Category;

    iget-object p1, p1, Lcom/online/languages/study/studymaster/data/Category;->id:Ljava/lang/String;

    const-string v2, "cat_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    goto :goto_60

    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/online/languages/study/studymaster/SectionStatsListActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    :goto_60
    return-void
.end method

.method public openErrors(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/CustomDataListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/Section;->errorsData:Ljava/util/ArrayList;

    const-string v1, "dataItems"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "section_id"

    const-string v1, "errors"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openKnownBySection(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget p1, p1, Lcom/online/languages/study/studymaster/data/Section;->familiarDataCount:I

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->displayEmtySection()V

    goto :goto_e

    :cond_a
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openDataTypeBySections(I)V

    :goto_e
    return-void
.end method

.method public openSectionList(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openSectionTest(Landroid/view/View;)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/online/languages/study/studymaster/SectionTestActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->navStructure:Lcom/online/languages/study/studymaster/data/NavStructure;

    const-string v1, "nav_structure"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->tSectionID:Ljava/lang/String;

    const-string v1, "section_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageTransition()V

    return-void
.end method

.method public openStudiedBySection(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget p1, p1, Lcom/online/languages/study/studymaster/data/Section;->studiedDataCount:I

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->displayEmtySection()V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openDataTypeBySections(I)V

    :goto_e
    return-void
.end method

.method public openUnknownBySection(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget p1, p1, Lcom/online/languages/study/studymaster/data/Section;->unknownDataCount:I

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->displayEmtySection()V

    goto :goto_e

    :cond_a
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->openDataTypeBySections(I)V

    :goto_e
    return-void
.end method

.method public showInfo(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->showResultDialog()V

    return-void
.end method

.method public showInfoDialog()V
    .registers 5

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101d8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/online/languages/study/studymaster/SectionStatsActivity$2;

    invoke-direct {v2, p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity$2;-><init>(Lcom/online/languages/study/studymaster/SectionStatsActivity;)V

    const v3, 0x7f110053

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11015d

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public showResultDialog()V
    .registers 14

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09022e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09022a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09022c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09022d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090229

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f09022b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f1101f4

    invoke-virtual {p0, v8}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v11, v11, Lcom/online/languages/study/studymaster/data/Section;->progress:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1101f3

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v10, v10, Lcom/online/languages/study/studymaster/data/Section;->testResults:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v12

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1101de

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v8, v8, Lcom/online/languages/study/studymaster/data/Section;->knownPart:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1101ed

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v3, v3, Lcom/online/languages/study/studymaster/data/Section;->studiedPart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1101ea

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v4, v4, Lcom/online/languages/study/studymaster/data/Section;->testResult:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v4, v4, Lcom/online/languages/study/studymaster/data/Section;->knownResult:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/SectionStatsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/SectionStatsActivity;->section:Lcom/online/languages/study/studymaster/data/Section;

    iget v3, v3, Lcom/online/languages/study/studymaster/data/Section;->studiedResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110226

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/online/languages/study/studymaster/SectionStatsActivity$1;

    invoke-direct {v3, p0}, Lcom/online/languages/study/studymaster/SectionStatsActivity$1;-><init>(Lcom/online/languages/study/studymaster/SectionStatsActivity;)V

    const v4, 0x7f110053

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
