.class public Lcom/online/languages/study/studymaster/NoteEditActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "NoteEditActivity.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field content:Landroid/widget/TextView;

.field private contentCharCounter:Landroid/widget/TextView;

.field contentCharMax:I

.field private contentEditText:Landroid/widget/EditText;

.field private final contentEditorWatcher:Landroid/text/TextWatcher;

.field dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

.field folder:Ljava/lang/String;

.field imgPickerAdapter:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

.field imgPickerDialog:Landroidx/appcompat/app/AlertDialog;

.field note:Lcom/online/languages/study/studymaster/data/NoteData;

.field noteAction:Ljava/lang/String;

.field noteIcon:Landroid/widget/ImageView;

.field noteId:Ljava/lang/String;

.field openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

.field picIndex:I

.field pics:[Ljava/lang/String;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field private titleCharCounter:Landroid/widget/TextView;

.field titleCharMax:I

.field private titleEditText:Landroid/widget/EditText;

.field private final titleEditorWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharMax:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentCharMax:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->folder:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/NoteEditActivity$1;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/NoteEditActivity$1;-><init>(Lcom/online/languages/study/studymaster/NoteEditActivity;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditorWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/online/languages/study/studymaster/NoteEditActivity$2;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/NoteEditActivity$2;-><init>(Lcom/online/languages/study/studymaster/NoteEditActivity;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditorWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/online/languages/study/studymaster/NoteEditActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/online/languages/study/studymaster/NoteEditActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentCharCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method private static dpToPixels(Landroid/content/Context;F)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private editNote()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/data/NoteData;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/NoteData;-><init>()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteId:Ljava/lang/String;

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->textSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    iget v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_32

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    goto :goto_38

    :cond_32
    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    :goto_38
    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, v0, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11014d

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f11005a

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->simpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_65
    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteAction:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->updateNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_76
    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteAction:Ljava/lang/String;

    const-string v2, "create"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    invoke-virtual {v1, v0}, Lcom/online/languages/study/studymaster/DBHelper;->createNote(Lcom/online/languages/study/studymaster/data/NoteData;)V

    :cond_87
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->finish()V

    return-void
.end method

.method private getIconIndex(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_13

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method private getNote()V
    .registers 3

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/DataManager;->dbHelper:Lcom/online/languages/study/studymaster/DBHelper;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/online/languages/study/studymaster/DBHelper;->getNote(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/NoteData;

    move-result-object v0

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditText:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v1, v1, Lcom/online/languages/study/studymaster/data/NoteData;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setIconImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->note:Lcom/online/languages/study/studymaster/data/NoteData;

    iget-object v0, v0, Lcom/online/languages/study/studymaster/data/NoteData;->image:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getIconIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    return-void
.end method

.method private setIconImage(Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/pics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/RoundedCornersTransformation;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method private showInfo()V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100b3

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1100b2

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->simpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private textSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildDialog(Landroid/view/View;)V
    .registers 7

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090222

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    iget-object v3, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    iget v4, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    invoke-direct {v2, p0, v3, v4}, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->imgPickerAdapter:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->imgPickerAdapter:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/online/languages/study/studymaster/NoteEditActivity$3;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/NoteEditActivity$3;-><init>(Lcom/online/languages/study/studymaster/NoteEditActivity;)V

    const v1, 0x7f110035

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->imgPickerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public checkPic(Landroid/view/View;)V
    .registers 5

    const v0, 0x7f09014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->imgPickerAdapter:Lcom/online/languages/study/studymaster/adapters/ImgPickerAdapter;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/online/languages/study/studymaster/NoteEditActivity$4;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/NoteEditActivity$4;-><init>(Lcom/online/languages/study/studymaster/NoteEditActivity;)V

    const-wide/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    iget v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setIconImage(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/online/languages/study/studymaster/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->openActivity:Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0c0031

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "note_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteAction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "note_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteId:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->dataManager:Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    const p1, 0x7f11011b

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->folder:Ljava/lang/String;

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0902dd

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharCounter:Landroid/widget/TextView;

    const p1, 0x7f0900ad

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentCharCounter:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharCounter:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleCharMax:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentCharCounter:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentCharMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900e7

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditText:Landroid/widget/EditText;

    const p1, 0x7f0900e5

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditText:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->titleEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->contentEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0900e6

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->pics:[Ljava/lang/String;

    iget v0, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->picIndex:I

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/NoteEditActivity;->setIconImage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/NoteEditActivity;->noteAction:Ljava/lang/String;

    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_113

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getNote()V

    :cond_113
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_21

    const v1, 0x7f090165

    if-eq v0, v1, :cond_1d

    const v1, 0x7f090239

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_19
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->editNote()V

    return v2

    :cond_1d
    invoke-direct {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->showInfo()V

    return v2

    :cond_21
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/NoteEditActivity;->finish()V

    return v2
.end method
