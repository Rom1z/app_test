.class public Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;
.super Ljava/lang/Object;
.source "NoteActionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$TextType;
    }
.end annotation


# instance fields
.field act:Lcom/online/languages/study/studymaster/MainActivity;

.field alert:Landroidx/appcompat/app/AlertDialog;

.field context:Landroid/content/Context;

.field notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

.field setMaxHeight:Ljava/lang/Boolean;

.field small_height:Ljava/lang/Boolean;

.field textType:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$TextType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/online/languages/study/studymaster/fragments/NotesFragment;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->context:Landroid/content/Context;

    sget-object p1, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$TextType;->TEXT:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$TextType;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->textType:Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$TextType;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->small_height:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->setMaxHeight:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->notesFragment:Lcom/online/languages/study/studymaster/fragments/NotesFragment;

    return-void
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


# virtual methods
.method public createDialog(Lcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 9

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->context:Landroid/content/Context;

    const v2, 0x7f120109

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c00bf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901c0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901c1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$1;

    invoke-direct {v6, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$1;-><init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$2;-><init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;

    invoke-direct {v2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$3;-><init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$4;

    invoke-direct {v2, p0, p1}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$4;-><init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;Lcom/online/languages/study/studymaster/data/NoteData;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->alert:Landroidx/appcompat/app/AlertDialog;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public dismissDialog(ILcom/online/languages/study/studymaster/data/NoteData;)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog$5;-><init>(Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;ILcom/online/languages/study/studymaster/data/NoteData;)V

    const-wide/16 p1, 0xb4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/online/languages/study/studymaster/adapters/NoteActionDialog;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
