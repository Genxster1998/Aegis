.class public final Lcom/mokee/aegis/fragments/PacifierAppsFragment;
.super Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mokee/aegis/model/PacifierApps$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

.field private categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

.field iBinder:Landroid/os/IBinder;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mCurCategoryAllowResId:I

.field private mCurCategoryDenyResId:I

.field private mPacifierApps:Lcom/mokee/aegis/model/PacifierApps;

.field private screenRoot:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;-><init>()V

    .line 51
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->iBinder:Landroid/os/IBinder;

    .line 52
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->iBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 44
    return-void
.end method

.method public static newInstance()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;

    invoke-direct {v0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;-><init>()V

    invoke-static {v0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->setPermissionName(Landroid/app/Fragment;)Landroid/app/Fragment;

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
    .line 66
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->setLoading(ZZ)V

    .line 75
    const v0, 0x7f090009

    iput v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mCurCategoryAllowResId:I

    .line 76
    const v0, 0x7f09000a

    iput v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mCurCategoryDenyResId:I

    .line 77
    new-instance v0, Lcom/mokee/aegis/model/PacifierApps;

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mokee/aegis/utils/PmCache;->getPmCache(Landroid/content/Context;)Lcom/mokee/aegis/utils/PmCache;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/mokee/aegis/model/PacifierApps;-><init>(Landroid/content/Context;Lcom/mokee/aegis/model/PacifierApps$Callback;Lcom/mokee/aegis/utils/PmCache;Lcom/android/internal/app/IAppOpsService;)V

    iput-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mPacifierApps:Lcom/mokee/aegis/model/PacifierApps;

    .line 78
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mPacifierApps:Lcom/mokee/aegis/model/PacifierApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps;->refresh()V

    .line 72
    return-void
.end method

.method public onPacifierAppsLoaded(Lcom/mokee/aegis/model/PacifierApps;)V
    .locals 9
    .param p1, "pacifierApps"    # Lcom/mokee/aegis/model/PacifierApps;

    .prologue
    const/4 v8, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    const-string/jumbo v7, "pacifier"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 103
    .local v4, "mContext":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    .line 109
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 110
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_1

    .line 111
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 112
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mCurCategoryAllowResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 114
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    :cond_1
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 118
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_2

    .line 119
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 120
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 121
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mCurCategoryDenyResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 122
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 125
    :cond_2
    sget-boolean v6, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v6, :cond_3

    return-void

    .line 127
    :cond_3
    invoke-virtual {p1}, Lcom/mokee/aegis/model/PacifierApps;->getApps()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 128
    invoke-virtual {p1}, Lcom/mokee/aegis/model/PacifierApps;->getApps()Ljava/util/Collection;

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

    check-cast v0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    .line 129
    .local v0, "app":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 131
    .local v2, "existingPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 135
    :cond_4
    new-instance v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v5, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 136
    .local v5, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 140
    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getAllowed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 144
    :cond_5
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 147
    .end local v0    # "app":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    .end local v2    # "existingPref":Landroid/support/v14/preference/SwitchPreference;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_6
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_7

    .line 148
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 150
    :cond_7
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 151
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 157
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->setLoading(ZZ)V

    .line 98
    return-void

    .line 154
    :cond_9
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mPacifierApps:Lcom/mokee/aegis/model/PacifierApps;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mokee/aegis/model/PacifierApps;->getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    move-result-object v1

    .line 164
    .local v1, "app":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    :try_start_0
    iget-object v6, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 165
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 164
    :goto_0
    invoke-interface {v6, v7, v8, v9, v3}, Lcom/android/internal/app/IAppOpsService;->updatePacifierModeFromUid(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p2

    .line 169
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 171
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 176
    :goto_1
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 187
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 188
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 194
    :cond_1
    :goto_3
    return v5

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move v3, v5

    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/RemoteException;
    return v4

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 174
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v4, "pref_category_allow_key"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v5, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    :cond_5
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 181
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v4, "pref_category_deny_key"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 183
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 190
    :cond_6
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v4, "pref_category_deny_key"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->mPacifierApps:Lcom/mokee/aegis/model/PacifierApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps;->refresh()V

    .line 82
    return-void
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 94
    const v0, 0x7f090008

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    return-void
.end method
