.class public Lcom/online/languages/study/studymaster/BackupActivity;
.super Lcom/online/languages/study/studymaster/BaseActivity;
.source "BackupActivity.java"


# static fields
.field static final FILE_RESULT_CODE:I = 0xf

.field static final MY_PERMISSIONS_REQUEST_READ_STORAGE:I = 0x2

.field static final MY_PERMISSIONS_REQUEST_WRITE_STORAGE:I = 0x1


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field infoDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

.field lastImportTxt:Landroid/widget/TextView;

.field mLaunches:Landroid/content/SharedPreferences;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BaseActivity;-><init>()V

    return-void
.end method

.method private isExternalStorageReadable()V
    .registers 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->selectCSVFile()V

    :goto_14
    return-void
.end method

.method private isExternalStorageWritable()V
    .registers 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_11

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->export()V

    :goto_14
    return-void
.end method

.method private proImportCSV(Landroid/net/Uri;)V
    .registers 4

    if-eqz p1, :cond_b

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_b
    new-instance v0, Lcom/online/languages/study/studymaster/files/DBImport;

    invoke-direct {v0, p0, p1}, Lcom/online/languages/study/studymaster/files/DBImport;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/files/DBImport;->importCSV()V

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->saveLastImportInfo()V

    return-void
.end method

.method private saveLastImportInfo()V
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->mLaunches:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_import"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->lastImportTxt:Landroid/widget/TextView;

    const v2, 0x7f1100bb

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public export()V
    .registers 3

    new-instance v0, Lcom/online/languages/study/studymaster/DBHelper;

    invoke-direct {v0, p0}, Lcom/online/languages/study/studymaster/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/files/DBExport;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/files/DBExport;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p0}, Lcom/online/languages/study/studymaster/files/DBExport;->export(Landroid/database/sqlite/SQLiteDatabase;Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public export(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->isExternalStorageWritable()V

    return-void
.end method

.method public getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11

    const-string v0, "_data"

    const/4 v1, 0x0

    :try_start_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_24

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_23
    return-object p1

    :catchall_24
    move-exception p1

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a
    throw p1
.end method

.method public importDB(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->isExternalStorageReadable()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/online/languages/study/studymaster/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1c

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1c

    const-string p1, "result_file_path"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->proImportCSV(Landroid/net/Uri;)V

    :cond_1c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->appSettings:Landroid/content/SharedPreferences;

    const-string v0, "theme"

    const-string v1, "default"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->themeTitle:Ljava/lang/String;

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/online/languages/study/studymaster/BackupActivity;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {v0}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->setContentView(I)V

    const p1, 0x7f110032

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->setTitle(I)V

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->infoDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    const-string p1, "launches"

    invoke-virtual {p0, p1, v1}, Lcom/online/languages/study/studymaster/BackupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->mLaunches:Landroid/content/SharedPreferences;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/OpenActivity;

    invoke-direct {p1, p0}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/OpenActivity;->setOrientation()V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f090162

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->lastImportTxt:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->mLaunches:Landroid/content/SharedPreferences;

    const v2, 0x7f110112

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "last_import"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/online/languages/study/studymaster/BackupActivity;->lastImportTxt:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f1100ab

    invoke-virtual {p0, v4}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string p1, "%s%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090112

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f110081

    invoke-virtual {p0, v2}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const v3, 0x7f11002e

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_35

    const v1, 0x7f090165

    if-eq v0, v1, :cond_14

    invoke-super {p0, p1}, Lcom/online/languages/study/studymaster/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_14
    const p1, 0x7f110031

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v3, 0x7f11002e

    invoke-virtual {p0, v3}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/BackupActivity;->infoDialog:Lcom/online/languages/study/studymaster/adapters/InfoDialog;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/online/languages/study/studymaster/adapters/InfoDialog;->openInfoHtmlDialog(Ljava/lang/String;Ljava/lang/Boolean;)V

    return v2

    :cond_35
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->finish()V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9

    const p2, 0x7f11010f

    invoke-virtual {p0, p2}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "</font>"

    const-string v4, "<font color=\"#ffffff\">"

    if-eq p1, v0, :cond_3f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    goto :goto_3e

    :cond_14
    array-length p1, p3

    if-lez p1, :cond_1f

    aget p1, p3, v1

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->selectCSVFile()V

    goto :goto_3e

    :cond_1f
    iget-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->lastImportTxt:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_3e
    return-void

    :cond_3f
    array-length p1, p3

    if-lez p1, :cond_4a

    aget p1, p3, v1

    if-nez p1, :cond_4a

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/BackupActivity;->export()V

    goto :goto_69

    :cond_4a
    iget-object p1, p0, Lcom/online/languages/study/studymaster/BackupActivity;->lastImportTxt:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_69
    return-void
.end method

.method public selectCSVFile()V
    .registers 6

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f11002d

    invoke-virtual {p0, v1}, Lcom/online/languages/study/studymaster/BackupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    invoke-direct {v2}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;-><init>()V

    invoke-virtual {v2, p0}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withActivity(Landroid/app/Activity;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v2

    const-class v3, Lcom/online/languages/study/studymaster/FinderDialogActivity;

    invoke-virtual {v2, v3}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withCustomActivity(Ljava/lang/Class;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withRequestCode(I)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(.*\\."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$)|(.*\\.csv$)|(.*\\.jpg$)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withFilter(Ljava/util/regex/Pattern;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withHiddenFiles(Z)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->withPath(Ljava/lang/String;)Lcom/nbsp/materialfilepicker/MaterialFilePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbsp/materialfilepicker/MaterialFilePicker;->start()V

    return-void
.end method
