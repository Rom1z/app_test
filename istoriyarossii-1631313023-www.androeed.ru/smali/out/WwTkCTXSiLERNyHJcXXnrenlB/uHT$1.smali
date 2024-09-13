.class final LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;
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

    iput-object p1, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "aHR0cHM6Ly93d3cuYW5kcm9lZWQucnUv"

    invoke-static {v2}, LWwTkCTXSiLERNyHJcXXnrenlB/uHT;->QiYVFNcWFCKkKeQXxsEBNuGjjsIjgEaOzruVrqpsgEQTaDSF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_11
    iget-object v1, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_24

    :catch_17
    move-exception v1

    iget-object v2, p0, LWwTkCTXSiLERNyHJcXXnrenlB/uHT$1;->val$context:Landroid/content/Context;

    const-string v3, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u044f \u0441\u0441\u044b\u043b\u043a\u0438"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_24
    return-void
.end method
