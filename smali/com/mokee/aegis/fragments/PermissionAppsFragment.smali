.class public final Lcom/mokee/aegis/fragments/PermissionAppsFragment;
.super Lcom/mokee/aegis/fragments/PermissionsFrameFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mokee/aegis/model/PermissionApps$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

.field private categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCurAppOpMode:I

.field private mCurCategoryAllowResId:I

.field private mCurCategoryDenyResId:I

.field private mPermissionApps:Lcom/mokee/aegis/model/PermissionApps;

.field private screenRoot:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Landroid/app/Fragment;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;

    invoke-direct {v0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;-><init>()V

    invoke-static {v0, p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->setPermissionName(Landroid/app/Fragment;I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static setPermissionName(Landroid/app/Fragment;I)Landroid/app/Fragment;
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "fragment":Landroid/app/Fragment;, "TT;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "app_op_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 74
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->setLoading(ZZ)V

    .line 75
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "app_op_mode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .local v0, "groups":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    new-instance v1, Lcom/mokee/aegis/model/PermissionApps;

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/aegis/utils/PmCache;->getPmCache(Landroid/content/Context;)Lcom/mokee/aegis/utils/PmCache;

    move-result-object v3

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/mokee/aegis/model/PermissionApps;-><init>(Landroid/content/Context;Landroid/util/SparseArray;Lcom/mokee/aegis/model/PermissionApps$Callback;Lcom/mokee/aegis/utils/PmCache;)V

    iput-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mPermissionApps:Lcom/mokee/aegis/model/PermissionApps;

    .line 85
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mPermissionApps:Lcom/mokee/aegis/model/PermissionApps;

    invoke-virtual {v1}, Lcom/mokee/aegis/model/PermissionApps;->refresh()V

    .line 71
    return-void

    .line 79
    :pswitch_0
    const v1, 0x7f090005

    iput v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurCategoryAllowResId:I

    .line 80
    const v1, 0x7f090006

    iput v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurCategoryDenyResId:I

    .line 81
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionsLoaded(Lcom/mokee/aegis/model/PermissionApps;)V
    .locals 13
    .param p1, "permissionApps"    # Lcom/mokee/aegis/model/PermissionApps;

    .prologue
    const/4 v12, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "appops_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 110
    .local v7, "mContext":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iput-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    .line 116
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v10, "pref_category_allow_key"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 117
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v9, :cond_1

    .line 118
    new-instance v9, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v9, v7}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    .line 119
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "pref_category_allow_key"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    iget v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurCategoryAllowResId:I

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 121
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 124
    :cond_1
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v10, "pref_category_deny_key"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 125
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    if-nez v9, :cond_2

    .line 126
    new-instance v9, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v9, v7}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    .line 127
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v10, "pref_category_deny_key"

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 128
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    iget v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurCategoryDenyResId:I

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 129
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 132
    :cond_2
    sget-boolean v9, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v9, :cond_3

    return-void

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/mokee/aegis/model/PermissionApps;->getApps()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    if-eqz v9, :cond_c

    .line 135
    invoke-virtual {p1}, Lcom/mokee/aegis/model/PermissionApps;->getApps()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    .line 136
    .local v0, "app":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getRequestPermissionStatus()Landroid/util/SparseBooleanArray;

    move-result-object v9

    iget v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    invoke-virtual {v9, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 137
    .local v5, "isChecked":Z
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 139
    .local v2, "existingPref":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v2, :cond_5

    .line 140
    invoke-virtual {v2, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 143
    :cond_5
    const/4 v3, 0x0

    .line 144
    .local v3, "exists":Z
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getRequestPermissionStatus()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 145
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getRequestPermissionStatus()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    iget v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    if-ne v9, v10, :cond_7

    .line 146
    const/4 v3, 0x1

    .line 150
    :cond_6
    if-eqz v3, :cond_4

    .line 151
    new-instance v8, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v8, v7}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 152
    .local v8, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v8, v6}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v8, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    if-eqz v5, :cond_8

    .line 158
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 144
    .end local v8    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .restart local v8    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_8
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 163
    .end local v0    # "app":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    .end local v2    # "existingPref":Landroid/support/v14/preference/SwitchPreference;
    .end local v3    # "exists":Z
    .end local v4    # "index":I
    .end local v5    # "isChecked":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_9
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_a

    .line 164
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    :cond_a
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_b

    .line 167
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_2
    const/4 v9, 0x1

    invoke-virtual {p0, v12, v9}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->setLoading(ZZ)V

    .line 105
    return-void

    .line 170
    :cond_c
    iget-object v9, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mPermissionApps:Lcom/mokee/aegis/model/PermissionApps;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mokee/aegis/model/PermissionApps;->getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    move-result-object v0

    .line 179
    .local v0, "app":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    iget-object v4, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mCurAppOpMode:I

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getUid()I

    move-result v6

    .line 180
    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 179
    :goto_0
    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    move-object v1, p2

    .line 181
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 183
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 199
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 200
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 206
    :cond_1
    :goto_3
    return v3

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    move v1, v3

    .line 180
    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_category_allow_key"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :cond_5
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryAllow:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 193
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_category_deny_key"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 195
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 202
    :cond_6
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_category_deny_key"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->screenRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->categoryDeny:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->mPermissionApps:Lcom/mokee/aegis/model/PermissionApps;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps;->refresh()V

    .line 89
    return-void
.end method

.method protected onSetEmptyText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 101
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/mokee/aegis/fragments/PermissionsFrameFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method
