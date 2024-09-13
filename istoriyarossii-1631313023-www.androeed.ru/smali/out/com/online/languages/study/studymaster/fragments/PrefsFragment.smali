.class public Lcom/online/languages/study/studymaster/fragments/PrefsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PrefsFragment.java"


# instance fields
.field appSettings:Landroid/content/SharedPreferences;

.field preferenceParent:Landroidx/preference/PreferenceGroup;

.field screen:Landroidx/preference/PreferenceScreen;

.field themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

.field public themeTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->appSettings:Landroid/content/SharedPreferences;

    const-string p2, "theme"

    const-string v0, "default"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->themeTitle:Ljava/lang/String;

    new-instance p1, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->themeTitle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p1, v0, v1, v3}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->themeAdapter:Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;

    invoke-virtual {p1}, Lcom/online/languages/study/studymaster/adapters/ThemeAdapter;->getTheme()V

    const p1, 0x7f140002

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->screen:Landroidx/preference/PreferenceScreen;

    const-string p1, "interface"

    invoke-virtual {p0, p1}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->preferenceParent:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->screen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "control_tests"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "sort_pers"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/online/languages/study/studymaster/data/DataManager;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/online/languages/study/studymaster/data/DataManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-boolean v1, v1, Lcom/online/languages/study/studymaster/data/DataManager;->simplified:Z

    if-eqz v1, :cond_89

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iget-object v3, p0, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->screen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_89
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "full_version"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    const-string v3, "version"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz p1, :cond_a6

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_a6
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v1, "btm_nav"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_bb

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setVisible(Z)V

    :cond_bb
    new-instance v1, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$1;-><init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string v1, "night_mode"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_d9

    invoke-virtual {p1, v4}, Landroidx/preference/SwitchPreferenceCompat;->setVisible(Z)V

    goto :goto_dc

    :cond_d9
    invoke-virtual {p1, v2}, Landroidx/preference/SwitchPreferenceCompat;->setVisible(Z)V

    :goto_dc
    new-instance v1, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;

    invoke-direct {v1, p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$2;-><init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment;)V

    invoke-virtual {p1, v1}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    new-instance p2, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;

    invoke-direct {p2, p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment$3;-><init>(Lcom/online/languages/study/studymaster/fragments/PrefsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const-string p2, "set_speak_mode"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f050003

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_112

    invoke-virtual {p1, v2}, Landroidx/preference/SwitchPreferenceCompat;->setVisible(Z)V

    :cond_112
    invoke-virtual {p0}, Lcom/online/languages/study/studymaster/fragments/PrefsFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_a
    return-object p1
.end method
