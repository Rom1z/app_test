.class final enum Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;
.super Ljava/lang/Enum;
.source "InfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/online/languages/study/studymaster/adapters/InfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

.field public static final enum HTML:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

.field public static final enum TEXT:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->TEXT:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    new-instance v1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    const-string v3, "HTML"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->HTML:Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;
    .registers 2

    const-class v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    return-object p0
.end method

.method public static values()[Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;
    .registers 1

    sget-object v0, Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->$VALUES:[Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    invoke-virtual {v0}, [Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/online/languages/study/studymaster/adapters/InfoDialog$TextType;

    return-object v0
.end method
