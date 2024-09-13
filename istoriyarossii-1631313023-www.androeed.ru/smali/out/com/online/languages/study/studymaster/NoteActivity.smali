.class public Lcom/online/languages/study/studymaster/NoteActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "NoteActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field content:Landroid/widget/TextView;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field folder:Ljava/lang/String;

.field note:Lcom/online/languages/study/studymaster/data/NoteData;

.field noteIcon:Landroid/widget/ImageView;

.field noteId:Ljava/lang/String;

.field note_pics:[Ljava/lang/String;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field source:Ljava/lang/String;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field titleNopic:Landroid/widget/TextView;

.field titleWrap:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->source:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note_pics:[Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->folder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/NoteActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->deleteNote()V

    return-void
.end method

.method private checkImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note_pics:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v2, 0x1

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    if-nez v2, :cond_1c

    const-string p1, "none"

    :cond_1c
    return-object p1
.end method

.method private deleteNote()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->deleteNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->finish()V

    return-void
.end method

.method private editNote()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/online/languages/study/studymaster/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    const-string v2, "note_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "note_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/online/languages/study/studymaster/NoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private emptyImage(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "empty.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private setNote()V
    .registers 6

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getNote(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NoteData;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleNopic:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NoteActivity;->checkImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NoteActivity;->emptyImage(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleNopic:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    :cond_47
    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleNopic:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_56
    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v2, v2, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NoteActivity;->emptyImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleWrap:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_73

    :cond_6e
    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleWrap:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_73
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:///android_asset/pics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/online/languages/study/studymaster/NoteActivity;->folder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method private showInfo()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b3

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->simpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteConfirmDialog()V
    .registers 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f11004e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/NoteActivity$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/NoteActivity$1;-><init>(Lcom/online/languages/study/studymaster/NoteActivity;)V

    const v2, 0x7f11004c

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/online/languages/study/studymaster/NoteActivity$2;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/NoteActivity$2;-><init>(Lcom/online/languages/study/studymaster/NoteActivity;)V

    const v2, 0x7f110035

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public finish()V
    .registers 5

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->source:Ljava/lang/String;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/online/languages/study/studymaster/NoteActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "position"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_21
    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->setNote()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "note_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->source:Ljava/lang/String;

    if-nez p1, :cond_4a

    const-string p1, ""

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->source:Ljava/lang/String;

    :cond_4a
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->note_pics:[Ljava/lang/String;

    const p1, 0x7f11011b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->folder:Ljava/lang/String;

    const p1, 0x7f0c0030

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->setContentView(I)V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f110118

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->setTitle(I)V

    const p1, 0x7f0901d9

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->title:Landroid/widget/TextView;

    const p1, 0x7f0901da

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleNopic:Landroid/widget/TextView;

    const p1, 0x7f0902e1

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->titleWrap:Landroid/view/View;

    const p1, 0x7f0901d7

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->content:Landroid/widget/TextView;

    const p1, 0x7f0901d8

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->noteIcon:Landroid/widget/ImageView;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->setNote()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->source:Ljava/lang/String;

    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_22

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->showInfo()V

    return v1

    :sswitch_11
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->editNote()V

    return v1

    :sswitch_15
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->deleteConfirmDialog()V

    return v1

    :sswitch_19
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteActivity;->finish()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->pageBackTransition()V

    return v1

    :sswitch_data_22
    .sparse-switch
        0x102002c -> :sswitch_19
        0x7f0900c0 -> :sswitch_15
        0x7f0900e8 -> :sswitch_11
        0x7f090165 -> :sswitch_d
    .end sparse-switch
.end method
