.class public final Lcom/mokee/aegis/fragments/WardenAppsFragment;
.super Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mokee/aegis/model/WardenApps$Callback;
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

.field private mWardenApps:Lcom/mokee/aegis/model/WardenApps;

.field private screenRoot:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/mokee/aegis/fragments/WardenAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;-><init>()V

    .line 51
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->iBinder:Landroid/os/IBinder;

    .line 52
    iget-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->iBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 45
    return-void
.end method

.method public static newInstance()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/mokee/aegis/fragments/WardenAppsFragment;

    invoke-direct {v0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;-><init>()V

    invoke-static {v0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->setPermissionName(Landroid/app/Fragment;)Landroid/app/Fragment;

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
    .line 67
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->setLoading(ZZ)V

    .line 76
    const v0, 0x7f090012

    iput v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mCurCategoryAllowResId:I

    .line 77
    const v0, 0x7f090013

    iput v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mCurCategoryDenyResId:I

    .line 78
    new-instance v0, Lcom/mokee/aegis/model/WardenApps;

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mokee/aegis/utils/PmCache;->getPmCache(Landroid/content/Context;)Lcom/mokee/aegis/utils/PmCache;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/mokee/aegis/model/WardenApps;-><init>(Landroid/content/Context;Lcom/mokee/aegis/model/WardenApps$Callback;Lcom/mokee/aegis/utils/PmCache;Lcom/android/internal/app/IAppOpsService;)V

    iput-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mWardenApps:Lcom/mokee/aegis/model/WardenApps;

    .line 79
    iget-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mWardenApps:Lcom/mokee/aegis/model/WardenApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps;->refresh()V

    .line 73
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mWardenApps:Lcom/mokee/aegis/model/WardenApps;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mokee/aegis/model/WardenApps;->getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/WardenApps$WardenApp;

    move-result-object v1

    .line 166
    .local v1, "app":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    :try_start_0
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/android/internal/app/IAppOpsService;->getWardenInfo(I)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mokee/aegis/WardenInfo$PackageInfo;

    invoke-virtual {v4}, Lcom/mokee/aegis/WardenInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mokee/aegis/WardenInfo$UidInfo;

    invoke-virtual {v4}, Lcom/mokee/aegis/WardenInfo$UidInfo;->getUid()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v1}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 170
    :goto_1
    invoke-interface {v7, v8, v9, v10, v4}, Lcom/android/internal/app/IAppOpsService;->updateWardenModeFromUid(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, p2

    .line 175
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 177
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 182
    :goto_2
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 183
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 193
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 194
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 200
    :cond_1
    :goto_4
    return v6

    .line 167
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IAppOpsService;->addWardenPackageInfo(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 172
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 173
    .local v2, "e":Landroid/os/RemoteException;
    return v5

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    move v4, v6

    .line 171
    goto :goto_1

    .line 179
    :cond_3
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 180
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 185
    :cond_4
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_category_allow_key"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    :cond_5
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 187
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_category_deny_key"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 196
    :cond_6
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v5, "pref_category_deny_key"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_1

    .line 197
    iget-object v4, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mWardenApps:Lcom/mokee/aegis/model/WardenApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps;->refresh()V

    .line 83
    return-void
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 95
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onWardenAppsLoaded(Lcom/mokee/aegis/model/WardenApps;)V
    .locals 9
    .param p1, "wardenApps"    # Lcom/mokee/aegis/model/WardenApps;

    .prologue
    const/4 v8, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    const-string/jumbo v7, "warden"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 104
    .local v4, "mContext":Landroid/content/Context;
    if-nez v4, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    .line 110
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 111
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_1

    .line 112
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 113
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_allow_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 114
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mCurCategoryAllowResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 115
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 118
    :cond_1
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 119
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v6, :cond_2

    .line 120
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 121
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v7, "pref_category_deny_key"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 122
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    iget v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->mCurCategoryDenyResId:I

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 123
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 126
    :cond_2
    sget-boolean v6, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v6, :cond_3

    return-void

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/mokee/aegis/model/WardenApps;->getApps()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 129
    invoke-virtual {p1}, Lcom/mokee/aegis/model/WardenApps;->getApps()Ljava/util/Collection;

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

    check-cast v0, Lcom/mokee/aegis/model/WardenApps$WardenApp;

    .line 130
    .local v0, "app":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 132
    .local v2, "existingPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 136
    :cond_4
    new-instance v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v5, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v5, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    invoke-virtual {v5}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 145
    :cond_5
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 148
    .end local v0    # "app":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    .end local v2    # "existingPref":Landroid/support/v14/preference/SwitchPreference;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_6
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_7

    .line 149
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 151
    :cond_7
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 152
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 158
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->setLoading(ZZ)V

    .line 99
    return-void

    .line 155
    :cond_9
    iget-object v6, p0, Lcom/mokee/aegis/fragments/WardenAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_1
.end method
