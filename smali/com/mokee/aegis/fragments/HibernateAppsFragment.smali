.class public final Lcom/mokee/aegis/fragments/HibernateAppsFragment;
.super Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mokee/aegis/model/HibernateApps$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

.field private categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

.field private mCurCategoryAllowResId:I

.field private mCurCategoryDenyResId:I

.field private mHibernateApps:Lcom/mokee/aegis/model/HibernateApps;

.field private screenRoot:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;

    invoke-direct {v0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;-><init>()V

    invoke-static {v0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->setPermissionName(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static setPermissionName(Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->setLoading(ZZ)V

    .line 67
    const v0, 0x7f09000c

    iput v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mCurCategoryAllowResId:I

    .line 68
    const v0, 0x7f09000d

    iput v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mCurCategoryDenyResId:I

    .line 69
    new-instance v0, Lcom/mokee/aegis/model/HibernateApps;

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mokee/aegis/utils/PmCache;->getPmCache(Landroid/content/Context;)Lcom/mokee/aegis/utils/PmCache;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/mokee/aegis/model/HibernateApps;-><init>(Landroid/content/Context;Lcom/mokee/aegis/model/HibernateApps$Callback;Lcom/mokee/aegis/utils/PmCache;)V

    iput-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mHibernateApps:Lcom/mokee/aegis/model/HibernateApps;

    .line 70
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mHibernateApps:Lcom/mokee/aegis/model/HibernateApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps;->refresh()V

    .line 64
    return-void
.end method

.method public onHibernateAppsLoaded(Lcom/mokee/aegis/model/HibernateApps;)V
    .locals 9
    .param p1, "hibernateApps"    # Lcom/mokee/aegis/model/HibernateApps;

    .prologue
    const/4 v8, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    const-string/jumbo v7, "hibernate"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 95
    .local v4, "mContext":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    .line 101
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 102
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_1

    .line 103
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 104
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mCurCategoryAllowResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 106
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 110
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_2

    .line 111
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 112
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mCurCategoryDenyResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 114
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    :cond_2
    sget-boolean v6, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v6, :cond_3

    return-void

    .line 119
    :cond_3
    invoke-virtual {p1}, Lcom/mokee/aegis/model/HibernateApps;->getApps()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 120
    invoke-virtual {p1}, Lcom/mokee/aegis/model/HibernateApps;->getApps()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;

    .line 121
    .local v0, "app":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 123
    .local v2, "existingPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 127
    :cond_4
    new-instance v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v5, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v5, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 136
    :cond_5
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 139
    .end local v0    # "app":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    .end local v2    # "existingPref":Landroid/support/v14/preference/SwitchPreference;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_6
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_7

    .line 140
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 142
    :cond_7
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 143
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 149
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->setLoading(ZZ)V

    .line 90
    return-void

    .line 146
    :cond_9
    iget-object v6, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    move-object v0, p2

    .line 154
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 156
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 172
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 179
    :cond_1
    :goto_2
    return v2

    .line 158
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 159
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_category_allow_key"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_category_deny_key"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_category_deny_key"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->mHibernateApps:Lcom/mokee/aegis/model/HibernateApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps;->refresh()V

    .line 74
    return-void
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 86
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
