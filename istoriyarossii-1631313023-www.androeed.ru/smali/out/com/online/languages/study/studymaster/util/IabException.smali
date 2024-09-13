.class public Lcom/online/languages/study/studymaster/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/online/languages/study/studymaster/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(Lcom/online/languages/study/studymaster/util/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/online/languages/study/studymaster/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(Lcom/online/languages/study/studymaster/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/util/IabResult;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/online/languages/study/studymaster/util/IabException;-><init>(Lcom/online/languages/study/studymaster/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/online/languages/study/studymaster/util/IabResult;Ljava/lang/Exception;)V
    .registers 4

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/util/IabException;->mResult:Lcom/online/languages/study/studymaster/util/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/online/languages/study/studymaster/util/IabResult;
    .registers 2

    iget-object v0, p0, Lcom/online/languages/study/studymaster/util/IabException;->mResult:Lcom/online/languages/study/studymaster/util/IabResult;

    return-object v0
.end method
