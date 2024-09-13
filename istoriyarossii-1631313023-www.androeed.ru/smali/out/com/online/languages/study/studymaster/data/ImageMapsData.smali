.class public Lcom/online/languages/study/studymaster/data/ImageMapsData;
.super Ljava/lang/Object;
.source "ImageMapsData.java"


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/online/languages/study/studymaster/data/ImageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/online/languages/study/studymaster/data/ImageMapsData;->prepareData()V

    return-void
.end method

.method private prepareData()V
    .registers 9

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0421\u043b\u0430\u0432\u044f\u043d\u0441\u043a\u0438\u0435 \u043f\u043b\u0435\u043c\u0435\u043d\u0430"

    const-string v3, "https://commons.wikimedia.org/wiki/File:Slav-7-8-obrez.png"

    const-string v4, "10010510"

    const-string v5, "maps/Slav2.png"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u0440\u0430\u0441\u0441\u0435\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u0430\u0432\u044f\u043d \u0438 \u0438\u0445 \u0441\u043e\u0441\u0435\u0434\u0435\u0439 \u043d\u0430 \u043a\u043e\u043d\u0435\u0446 VIII \u0432\u0435\u043a\u0430. \u0413\u0440\u0430\u043d\u0438\u0446\u044b \u043d\u0435\u043a\u043e\u0442\u043e\u0440\u044b\u0445 \u0433\u043e\u0441\u0443\u0434\u0430\u0440\u0441\u0442\u0432 \u043f\u043e\u043a\u0430\u0437\u0430\u043d\u044b \u043d\u0430\u0447\u0438\u043d\u0430\u044f \u0441 VII \u0432. \u041e\u0441\u043d\u043e\u0432\u0430\u043d\u0430 \u0432 \u0432\u043e\u0441\u0442\u043e\u0447\u043d\u043e\u0441\u043b\u0430\u0432\u044f\u043d\u0441\u043a\u043e\u0439 \u0447\u0430\u0441\u0442\u0438 \u0432 \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u043c \u043d\u0430 \u0430\u0440\u0445\u0435\u043e\u043b\u043e\u0433\u0438\u0447\u0435\u0441\u043a\u0438\u0445 \u043a\u0430\u0440\u0442\u0430\u0445 \u0438 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u044f\u0445, \u0432 \u0447\u0430\u0441\u0442\u043d\u043e\u0441\u0442\u0438 \u0432\u0437\u044f\u0442\u044b\u0445 \u0438\u0437 \u0440\u0430\u0431\u043e\u0442 \u0412.\u0412.\u0421\u0435\u0434\u043e\u0432\u0430 (\u0432 \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u043c \u0434\u0430\u043d\u043d\u044b\u0435 \u043f\u043e \u0441\u043b\u0430\u0432\u044f\u043d\u0430\u043c) \u0438 \u0442\u043e\u043c\u0430 \u00ab\u0424\u0438\u043d\u043d\u043e-\u0443\u0433\u0440\u044b \u0438 \u0431\u0430\u043b\u0442\u044b \u0432 \u044d\u043f\u043e\u0445\u0443 \u0441\u0440\u0435\u0434\u043d\u0435\u0432\u0435\u043a\u043e\u0432\u044c\u044f\u00bb (1987) \u0438\u0437 \u0441\u0435\u0440\u0438\u0438 \u0410\u0440\u0445\u0435\u043e\u043b\u043e\u0433\u0438\u044f \u0421\u0421\u0421\u0420 (\u0432 \u043e\u0441\u043d\u043e\u0432\u043d\u043e\u043c \u0434\u0430\u043d\u043d\u044b\u0435 \u043f\u043e \u0431\u0430\u043b\u0442\u0430\u043c \u0438 \u0444\u0438\u043d\u043d\u043e-\u0443\u0433\u0440\u0430\u043c)."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0420\u0443\u0441\u044c \u0432 XI \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Rus-1015-1113.png"

    const-string v4, "10010520"

    const-string v5, "maps/rus_11v.png"

    const-string v6, "\u041a\u0438\u0435\u0432\u0441\u043a\u0430\u044f \u0420\u0443\u0441\u044c \u0432 1015-1113 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0420\u0443\u0441\u044c \u0432 XII \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Principalities_of_Kievan_Rus%27_(1054-1132)_ru2.svg"

    const-string v4, "10010530"

    const-string v5, "maps/rus_1132.png"

    const-string v6, "\u041a\u043d\u044f\u0436\u0435\u0441\u0442\u0432\u0430 \u043f\u043e\u0437\u0434\u043d\u0435\u0439 \u041a\u0438\u0435\u0432\u0441\u043a\u043e\u0439 \u0420\u0443\u0441\u0438 (\u043f\u043e\u0441\u043b\u0435 \u0441\u043c\u0435\u0440\u0442\u0438 \u042f\u0440\u043e\u0441\u043b\u0430\u0432\u0430 I \u0432 1054)."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041a\u0430\u0440\u0442\u0430"

    const-string v3, ""

    const-string v4, "10010540"

    const-string v5, "maps/sviatoslav_pohod.jpg"

    const-string v6, "\u0420\u0443\u0441\u044c \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0421\u0432\u044f\u0442\u043e\u0441\u043b\u0430\u0432\u0430 \u0406."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0421\u0435\u0440\u0435\u0434\u0438\u043d\u0430 XIII \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Kievan_Rus_in_1237_(ru).svg"

    const-string v4, "10020510"

    const-string v5, "maps/rus_1237.png"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u041a\u0438\u0435\u0432\u0441\u043a\u043e\u0439 \u0420\u0443\u0441\u0438 \u0432 1237 \u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0411\u043e\u0440\u044c\u0431\u0430 \u0420\u0443\u0441\u0438 \u0432 XIII \u0432."

    const-string v3, "https://history.wikireading.ru/23144"

    const-string v4, "10020515"

    const-string v5, "maps/map_rus_13_defense.jpg"

    const-string v6, "\u0411\u043e\u0440\u044c\u0431\u0430 \u0420\u0443\u0441\u0438 \u043f\u0440\u043e\u0442\u0438\u0432 \u0438\u043d\u043e\u0437\u0435\u043c\u043d\u044b\u0445 \u0437\u0430\u0445\u0432\u0430\u0442\u0447\u0438\u043a\u043e\u0432 \u0432 \u043f\u0435\u0440\u0432\u043e\u0439 \u043f\u043e\u043b\u043e\u0432\u0438\u043d\u0435 XIII \u0432."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1239-1245 \u0433\u0433."

    const-string v3, "https://ru.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:Rus-1240-nevski.png"

    const-string v4, "10020520"

    const-string v5, "maps/rus_1240_nevski.png"

    const-string v6, "\u041e\u0442\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u043d\u0435\u043c\u0435\u0446\u043a\u043e\u0439 \u0438 \u0448\u0432\u0435\u0434\u0441\u043a\u043e\u0439 \u0430\u0433\u0440\u0435\u0441\u0441\u0438\u0438 \u0410\u043b\u0435\u043a\u0441\u0430\u043d\u0434\u0440\u043e\u043c \u041d\u0435\u0432\u0441\u043a\u0438\u043c (1239-1245)."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "XIV-XV \u0432\u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Muscovy_1300-1462.png"

    const-string v4, "10020530"

    const-string v5, "maps/rus_1462.png"

    const-string v6, "\u0420\u0430\u0441\u0448\u0438\u0440\u0435\u043d\u0438\u0435 \u041c\u043e\u0441\u043a\u043e\u0432\u0441\u043a\u043e\u0433\u043e \u043a\u043d\u044f\u0436\u0435\u0441\u0442\u0432\u0430 \u0432 1300-1462 \u0433\u043e\u0434\u0430\u0445."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041a\u0443\u043b\u0438\u043a\u043e\u0432\u0441\u043a\u0430\u044f \u0431\u0438\u0442\u0432\u0430"

    const-string v3, "https://encyclopedia.mil.ru/encyclopedia/history/more.htm?id=12055282@cmsArticle"

    const-string v4, "10020540"

    const-string v5, "maps/rus_battle_1380.jpg"

    const-string v6, "\u0421\u0445\u0435\u043c\u0430 \u041a\u0443\u043b\u0438\u043a\u043e\u0432\u0441\u043a\u043e\u0439 \u0431\u0438\u0442\u0432\u044b 8 \u0441\u0435\u043d\u0442\u044f\u0431\u0440\u044f 1380 \u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041a\u043e\u043d\u0435\u0446 XIV \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Rus-1389.png"

    const-string v4, "10020550"

    const-string v5, "maps/rus_1389.png"

    const-string v6, "\u0420\u0443\u0441\u0441\u043a\u0438\u0435 \u0437\u0435\u043c\u043b\u0438 \u0432 1389 \u0433\u043e\u0434\u0443."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "XVI \u0432."

    const-string v3, "https://ru.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:%D0%9A%D0%B0%D1%80%D1%82%D0%B0-%D0%BC%D0%BE%D1%81%D0%BA_%D0%BA%D0%BD%D1%8F%D0%B6%D0%B5%D1%81%D1%82%D0%B2%D0%B0.jpg"

    const-string v4, "10030510"

    const-string v5, "maps/rus_1520.jpg"

    const-string v6, "\u041f\u0440\u0438\u0431\u043b\u0438\u0437\u0438\u0442\u0435\u043b\u044c\u043d\u0430\u044f \u043a\u0430\u0440\u0442\u0430 \u0440\u0430\u0441\u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0435\u043d\u0438\u044f \u0432\u043b\u0430\u0441\u0442\u0438 \u041c\u043e\u0441\u043a\u043e\u0432\u0441\u043a\u043e\u0433\u043e \u043a\u043d\u044f\u0436\u0435\u0441\u0442\u0432\u0430 \u0441 1300 \u043f\u043e 1521 \u0433\u043e\u0434"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041b\u0438\u0432\u043e\u043d\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 (1558\u20131583)"

    const-string v3, ""

    const-string v4, "10030521"

    const-string v5, "maps/war_livon.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u0432\u043e\u0435\u043d\u043d\u044b\u0445 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u041b\u0438\u0432\u043e\u043d\u0441\u043a\u043e\u0439 \u0432\u043e\u0439\u043d\u044b"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "2-\u044f \u043f\u043e\u043b. XVI \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Livon-war-post_1583.png"

    const-string v4, "10030520"

    const-string v5, "maps/rus_1583.png"

    const-string v6, "\u0422\u0435\u0440\u0440\u0438\u0442\u043e\u0440\u0438\u0430\u043b\u044c\u043d\u044b\u0435 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u0432 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u0435 \u041b\u0438\u0432\u043e\u043d\u0441\u043a\u043e\u0439 \u0432\u043e\u0439\u043d\u044b."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "XVI-XVIII \u0432."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Growth_of_Russia_1547-1725_true_borders.png"

    const-string v4, "10030530"

    const-string v5, "maps/rus_1725.png"

    const-string v6, "\u0420\u043e\u0441\u0442 \u0442\u0435\u0440\u0440\u0438\u0442\u043e\u0440\u0438\u0438 \u0420\u043e\u0441\u0441\u0438\u0438 \u0441 1547 \u043f\u043e 1725 \u0433\u043e\u0434\u0430."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0420\u043e\u0441\u0441\u0438\u044f \u0432 1613-1914 \u0433\u0433."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Growth_of_Russia_1613-1914.png"

    const-string v4, "10030540"

    const-string v5, "maps/russia_1613-1914.png"

    const-string v6, "\u0420\u0430\u0441\u0448\u0438\u0440\u0435\u043d\u0438\u0435 \u0442\u0435\u0440\u0440\u0438\u0442\u043e\u0440\u0438\u0438 \u0420\u043e\u0441\u0441\u0438\u0438 \u0441 1613 \u043f\u043e 1914 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0420\u0430\u0437\u0433\u0440\u043e\u043c \u043f\u043e\u043b\u044c\u0441\u043a\u0438\u0445 \u0438\u043d\u0442\u0435\u0440\u0432\u0435\u043d\u0442\u043e\u0432."

    const-string v3, ""

    const-string v4, "10030541"

    const-string v5, "maps/battle_moscow_1612.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1670-1671 \u0433\u0433."

    const-string v3, "http://rushist.com/index.php/tutorials/plat-tutorial/128-plat-tut-84"

    const-string v4, "10030550"

    const-string v5, "maps/map_razin.jpg"

    const-string v6, "\u041a\u0440\u0435\u0441\u0442\u044c\u044f\u043d\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 \u043f\u043e\u0434 \u043f\u0440\u0435\u0434\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u0441\u0442\u0432\u043e\u043c \u0421\u0442\u0435\u043f\u0430\u043d\u0430 \u0420\u0430\u0437\u0438\u043d\u0430 \u0432 1670\u20131671 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1708 \u0433."

    const-string v3, "https://commons.wikimedia.org/wiki/File:Subdivisions_of_Russia_in_1708_(ru).svg"

    const-string v4, "10040510"

    const-string v5, "maps/rus_1708.png"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430, \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u044e\u0449\u0430\u044f \u0430\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0442\u0438\u0432\u043d\u043e-\u0442\u0435\u0440\u0440\u0438\u0442\u043e\u0440\u0438\u0430\u043b\u044c\u043d\u044b\u0435 \u0435\u0434\u0438\u043d\u0438\u0446\u044b \u0426\u0430\u0440\u0441\u0442\u0432\u0430 \u0440\u0443\u0441\u0441\u043a\u043e\u0433\u043e \u0432 1708 \u0433\u043e\u0434\u0443."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1700 \u2013 1721 \u0433\u0433."

    const-string v3, "https://history.wikireading.ru/23688"

    const-string v4, "10040520"

    const-string v5, "maps/map_war_north.jpg"

    const-string v6, "\u0421\u0435\u0432\u0435\u0440\u043d\u0430\u044f \u0432\u043e\u0439\u043d\u0430. 1700 \u2013 1721 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1709 \u0433."

    const-string v3, "https://fox-calculator.ru/petr-1/konturnyie-kartyi-poltavskoe-srazhenie-1709-goda/"

    const-string v4, "10040530"

    const-string v5, "maps/map_battle_1709.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u043f\u0435\u0440\u0435\u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f \u0440\u0443\u0441\u0441\u043a\u0438\u0445 \u0438 \u0448\u0432\u0435\u0434\u0441\u043a\u0438\u0445 \u0432\u043e\u0439\u0441\u043a. \u041f\u043e\u043b\u0442\u0430\u0432\u0441\u043a\u043e\u0435 \u0441\u0440\u0430\u0436\u0435\u043d\u0438\u0435 27 \u0438\u044e\u043d\u044f 1709 \u0433\u043e\u0434\u0430."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1756\u20141763 \u0433\u0433."

    const-string v3, "https://fishki.net/2626595-semiletnjaja-vojna-1756-1763.html"

    const-string v4, "10040540"

    const-string v5, "maps/map_war_1756.jpg"

    const-string v6, "\u0420\u043e\u0441\u0441\u0438\u044f \u0432 \u0421\u0435\u043c\u0438\u043b\u0435\u0442\u043d\u0435\u0439 \u0432\u043e\u0439\u043d\u0435 1756-1763 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1773\u20141775 \u0433\u0433."

    const-string v3, "http://rushist.com/index.php/historical-notes/2048-vosstanie-pugachjova-kratko"

    const-string v4, "10040550"

    const-string v5, "maps/map_pugachev.jpg"

    const-string v6, "\u041a\u0440\u0435\u0441\u0442\u044c\u044f\u043d\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 1773\u20141775 \u0433\u043e\u0434\u043e\u0432 \u043f\u043e\u0434 \u043f\u0440\u0435\u0434\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u0441\u0442\u0432\u043e\u043c \u0415\u043c\u0435\u043b\u044c\u044f\u043d\u0430 \u041f\u0443\u0433\u0430\u0447\u0451\u0432\u0430."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1812 \u0433\u0433."

    const-string v3, "https://history.wikireading.ru/23688"

    const-string v4, "10050510"

    const-string v5, "maps/map_war_1812.jpg"

    const-string v6, "\u041d\u0430\u0448\u0435\u0441\u0442\u0432\u0438\u0435 \u0430\u0440\u043c\u0438\u0438 \u041d\u0430\u043f\u043e\u043b\u0435\u043e\u043d\u0430 \u043d\u0430 \u0420\u043e\u0441\u0441\u0438\u044e. 1812 \u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0411\u043e\u0440\u043e\u0434\u0438\u043d\u0441\u043a\u043e\u0435 \u0441\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    const-string v3, "https://army-blog.ru/borodinskoe-srazhenie/"

    const-string v4, "10050520"

    const-string v5, "maps/map_borodino.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430-\u0441\u0445\u0435\u043c\u0430 \u0441\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0443 \u0434\u0435\u0440\u0435\u0432\u043d\u0438 \u0411\u043e\u0440\u043e\u0434\u0438\u043d\u043e 26 \u0430\u0432\u0433\u0443\u0441\u0442\u0430 (7 \u0441\u0435\u043d\u0442\u044f\u0431\u0440\u044f) 1812 \u0433\u043e\u0434\u0430."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1853-1856 \u0433\u0433."

    const-string v3, "https://history.wikireading.ru/23688"

    const-string v4, "10050550"

    const-string v5, "maps/map_war_1856.jpg"

    const-string v6, "\u041a\u0440\u044b\u043c\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 1853-1856 \u0433\u0433. \u041a\u0430\u0440\u0442\u0430 \u0442\u0435\u0430\u0442\u0440\u0430 \u0432\u043e\u0435\u043d\u043d\u044b\u0445 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439 \u0432\u043e\u044e\u044e\u0449\u0438\u0445 \u0441\u0442\u043e\u0440\u043e\u043d \u043d\u0430 \u0441\u0443\u0448\u0435 \u0438 \u043d\u0430 \u043c\u043e\u0440\u0435 \u0432 \u0431\u0430\u0441\u0441\u0435\u0439\u043d\u0435 \u0427\u0451\u0440\u043d\u043e\u0433\u043e \u043c\u043e\u0440\u044f."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1877\u20131878 \u0433\u0433."

    const-string v3, "https://history.wikireading.ru/23688"

    const-string v4, "10050560"

    const-string v5, "maps/map_war_1878.jpg"

    const-string v6, "\u0420\u0443\u0441\u0441\u043a\u043e-\u0442\u0443\u0440\u0435\u0446\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 1877 \u2013 1878 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, " 1878 \u0433."

    const-string v3, "https://ru.wikipedia.org/wiki/%D0%9A%D1%80%D1%8B%D0%BC%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%B9%D0%BD%D0%B0"

    const-string v4, "10050580"

    const-string v5, "maps/map_stephan_borders.jpg"

    const-string v6, "\u0413\u0440\u0430\u043d\u0438\u0446\u044b \u0431\u0430\u043b\u043a\u0430\u043d\u0441\u043a\u0438\u0445 \u0433\u043e\u0441\u0443\u0434\u0430\u0440\u0441\u0442\u0432 \u0438 \u0420\u043e\u0441\u0441\u0438\u0438 \u043f\u043e \u0421\u0430\u043d-\u0421\u0442\u0435\u0444\u0430\u043d\u0441\u043a\u043e\u043c\u0443 \u043c\u0438\u0440\u043d\u043e\u043c\u0443 \u0434\u043e\u0433\u043e\u0432\u043e\u0440\u0443."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041a\u043e\u043d\u0435\u0446 XIX \u0432."

    const-string v3, "http://starye-karty.litera-ru.ru/karty/rossiiskaya-imperia-1890-na-stenu-kabinet.html"

    const-string v4, "10060510"

    const-string v5, "maps/map_empire_1890.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u0420\u043e\u0441\u0441\u0438\u0439\u0441\u043a\u043e\u0439 \u0438\u043c\u043f\u0435\u0440\u0438\u0438 \u043a\u043e\u043d\u0446\u0430 XIX \u0432\u0435\u043a\u0430. \u041a\u0430\u0440\u0442\u0430 \u044f\u0432\u043b\u044f\u0435\u0442\u0441\u044f \u0434\u0438\u0437\u0430\u0439\u043d\u0435\u0440\u0441\u043a\u043e\u0439 \u0434\u043e\u0440\u0430\u0431\u043e\u0442\u043a\u043e\u0439 \u043a\u0430\u0440\u0442\u044b \u043a\u043e\u043d\u0446\u0430 19 \u0432\u0435\u043a\u0430, \u043f\u043e \u0442\u043e\u0447\u043d\u043e\u0439 \u0434\u0430\u0442\u0438\u0440\u043e\u0432\u043a\u0435 - \u043e\u043a\u043e\u043b\u043e 1890 \u0433\u043e\u0434\u0430. "

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1904\u20131905 \u0433\u0433."

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10060520"

    const-string v5, "maps/map_war_1905.jpg"

    const-string v6, "\u0420\u0443\u0441\u0441\u043a\u043e-\u044f\u043f\u043e\u043d\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 1904\u20131905 \u0433\u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1904 \u0433."

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10060530"

    const-string v5, "maps/map_battle_artur.jpg"

    const-string v6, "\u041e\u0431\u043e\u0440\u043e\u043d\u0430 \u041f\u043e\u0440\u0442-\u0410\u0440\u0442\u0443\u0440\u0430. \u0421\u043e\u0431\u044b\u0442\u0438\u044f \u0432 "

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041c\u0443\u043a\u0434\u0435\u043d\u0441\u043a\u043e\u0435 \u0441\u0440\u0430\u0436\u0435\u043d\u0438\u0435 6 - 25 \u0444\u0435\u0432\u0440\u0430\u043b\u044f 1905 \u0433."

    const-string v3, ""

    const-string v4, "10060531"

    const-string v5, "maps/mukden.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u0432\u043e\u0435\u043d\u043d\u044b\u0445 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0439"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1918-1920 \u0433."

    const-string v3, "https://www.rusempire.ru/fotografii/maps/karti-voennich-deystviy/karty-voennykh-dejstvij-3640.html"

    const-string v4, "10070520"

    const-string v5, "maps/map_war_civil.jpg"

    const-string v6, "\u0413\u0440\u0430\u0436\u0434\u0430\u043d\u0441\u043a\u0430\u044f \u0432\u043e\u0439\u043d\u0430 \u0438 \u0432\u043e\u0435\u043d\u043d\u0430\u044f \u0438\u043d\u0442\u0435\u0440\u0432\u0435\u043d\u0446\u0438\u044f \u0432 \u0420\u043e\u0441\u0441\u0438\u0438. \u0420\u0430\u0437\u0432\u0435\u0440\u0442\u044b\u0432\u0430\u043d\u0438\u0435 \u0432\u043e\u0435\u043d\u043d\u043e\u0439 \u0438\u043d\u0442\u0435\u0440\u0432\u0435\u043d\u0446\u0438\u0438 \u0410\u043d\u0442\u0430\u043d\u0442\u044b \u0432 \u0413\u0440\u0430\u0436\u0434\u0430\u043d\u0441\u043a\u043e\u0439 \u0432\u043e\u0439\u043d\u0435."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1941-1942 \u0433."

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10070540"

    const-string v5, "maps/map_war_1941.jpg"

    const-string v6, "\u0412\u0415\u041b\u0418\u041a\u0410\u042f \u041e\u0422\u0415\u0427\u0415\u0421\u0422\u0412\u0415\u041d\u041d\u0410\u042f \u0412\u041e\u0419\u041d\u0410 (\u0438\u044e\u043d\u044c 1941-\u043d\u043e\u044f\u0431\u0440\u044c 1942 \u0433\u043e\u0434\u0430)"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0421\u0442\u0430\u043b\u0438\u043d\u0433\u0440\u0430\u0434\u0441\u043a\u0430\u044f \u0431\u0438\u0442\u0432\u0430"

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10070550"

    const-string v5, "maps/map_war_stalingrad.jpg"

    const-string v6, "\u0421\u0422\u0410\u041b\u0418\u041d\u0413\u0420\u0410\u0414\u0421\u041a\u0410\u042f \u0411\u0418\u0422\u0412\u0410. \u041a\u041e\u041d\u0422\u0420\u041d\u0410\u0421\u0422\u0423\u041f\u041b\u0415\u041d\u0418\u0415 \u0421\u041e\u0412\u0415\u0422\u0421\u041a\u0418\u0425 \u0412\u041e\u0419\u0421\u041a (19 \u043d\u043e\u044f\u0431\u0440\u044f \u2013 31 \u0434\u0435\u043a\u0430\u0431\u0440\u044f 1942 \u0433.)"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1943 \u0433."

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10070560"

    const-string v5, "maps/map_battle_kurk.jpg"

    const-string v6, "\u041a\u0423\u0420\u0421\u041a\u0410\u042f \u0411\u0418\u0422\u0412\u0410 (5 \u0438\u044e\u043b\u044f \u2013 23 \u0430\u0432\u0433\u0443\u0441\u0442\u0430 1943 \u0433.)"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "1942\u20131945 \u0433."

    const-string v3, "https://history.wikireading.ru/23797"

    const-string v4, "10070570"

    const-string v5, "maps/map_war_1945.jpg"

    const-string v6, "\u0412\u0415\u041b\u0418\u041a\u0410\u042f \u041e\u0422\u0415\u0427\u0415\u0421\u0422\u0412\u0415\u041d\u041d\u0410\u042f \u0412\u041e\u0419\u041d\u0410 (\u043d\u043e\u044f\u0431\u0440\u044c 1942 \u2013 \u043c\u0430\u0439 1945 \u0433.)"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u0421\u0421\u0421\u0420"

    const-string v3, "http://www.maps-world.ru/usssr.htm"

    const-string v4, "10070590"

    const-string v5, "maps/map_ussr.jpg"

    const-string v6, "\u041a\u0430\u0440\u0442\u0430 \u0421\u0421\u0421\u0420 \u043d\u0430 \u0440\u0443\u0441\u0441\u043a\u043e\u043c \u044f\u0437\u044b\u043a\u0435. CCCP - \u0441\u0430\u043c\u043e\u0435 \u0431\u043e\u043b\u044c\u0448\u043e\u0435 \u0433\u043e\u0441\u0443\u0434\u0430\u0440\u0441\u0442\u0432\u043e \u0432 \u043c\u0438\u0440\u0435 \u0441 1922 \u043f\u043e 1991 \u0433\u043e\u0434. \u0421\u043e\u044e\u0437 \u0421\u043e\u0432\u0435\u0442\u0441\u043a\u0438\u0445 \u0421\u043e\u0446\u0438\u0430\u043b\u0438\u0441\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0445 \u0420\u0435\u0441\u043f\u0443\u0431\u043b\u0438\u043a \u043f\u043e \u043f\u043b\u043e\u0449\u0430\u0434\u0438 \u0431\u044b\u043b \u0441\u0430\u043c\u043e\u0439 \u043a\u0440\u0443\u043f\u043d\u043e\u0439 \u0441\u0442\u0440\u0430\u043d\u043e\u0439 \u0432 \u043c\u0438\u0440\u0435 \u0438 \u0437\u0430\u043d\u0438\u043c\u0430\u043b \u0448\u0435\u0441\u0442\u0443\u044e \u0447\u0430\u0441\u0442\u044c \u0432\u0441\u0435\u0439 \u043f\u043e\u0432\u0435\u0440\u0445\u043d\u043e\u0441\u0442\u0438 \u0441\u0443\u0448\u0438. \u0421\u0421\u0421\u0420 \u0441\u043e\u0441\u0442\u043e\u044f\u043b \u0438\u0437 15 \u0440\u0435\u0441\u043f\u0443\u0431\u043b\u0438\u043a \u0438 \u0438\u043c\u0435\u043b \u043f\u043b\u043e\u0449\u0430\u0434\u044c 22,4 \u043c\u0438\u043b\u043b\u0438\u043e\u043d\u0430 \u043a\u0432\u0430\u0434\u0440\u0430\u0442\u043d\u044b\u0445 \u043a\u0438\u043b\u043e\u043c\u0435\u0442\u0440\u043e\u0432."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    new-instance v7, Lcom/online/languages/study/studymaster/data/ImageData;

    const-string v2, "\u041a\u0430\u0440\u0442\u0430 \u0420\u0424, 2000 \u0433."

    const-string v3, "http://maps-of-world.ru/map-russia.htm"

    const-string v4, "10080510"

    const-string v5, "maps/map_russia.jpg"

    const-string v6, "\u0410\u0434\u043c\u0438\u043d\u0438\u0441\u0442\u0440\u0430\u0442\u0438\u0432\u043d\u0430\u044f \u043a\u0430\u0440\u0442\u0430 \u0420\u043e\u0441\u0441\u0438\u0438. 2000 \u0433."

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getMapInfoById(Ljava/lang/String;)Lcom/online/languages/study/studymaster/data/ImageData;
    .registers 6

    new-instance v0, Lcom/online/languages/study/studymaster/data/ImageData;

    invoke-direct {v0}, Lcom/online/languages/study/studymaster/data/ImageData;-><init>()V

    const-string v1, "none"

    iput-object v1, v0, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/online/languages/study/studymaster/data/ImageMapsData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/online/languages/study/studymaster/data/ImageData;

    iget-object v3, v2, Lcom/online/languages/study/studymaster/data/ImageData;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_25
    return-object v0
.end method
