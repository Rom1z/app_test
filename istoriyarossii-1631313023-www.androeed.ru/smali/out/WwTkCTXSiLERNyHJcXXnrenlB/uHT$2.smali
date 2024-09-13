.class final LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;->val$context:Landroid/content/Context;

    const-string v1, "androeed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nya"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "ru"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "ua"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "If y\u043eu want download m\u043er\u0435 proper modded g\u0430mes for Android - pl\u0435\u0430se visit www.andro\u0435\u0435d.ru!"

    goto :goto_3b

    :cond_39
    const-string v0, "\u0411\u0443\u0434\u0435\u043c \u0440\u0430\u0434\u044b, \u0435\u0441\u043b\u0438 \u0432\u044b \u0441\u043a\u0430\u0447\u0430\u0435\u0442\u0435 \u0435\u0449\u0451 \u043f\u0430\u0440\u0443 \u0438\u0433\u0440 \u0441 www.androeed.ru!"

    :goto_3b
    iget-object v1, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
