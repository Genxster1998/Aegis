.class public Lcom/mokee/aegis/model/WardenApps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/model/WardenApps$Callback;,
        Lcom/mokee/aegis/model/WardenApps$WardenApp;,
        Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;
    }
.end annotation


# instance fields
.field private mAppLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mCache:Lcom/mokee/aegis/utils/PmCache;

.field private final mCallback:Lcom/mokee/aegis/model/WardenApps$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshing:Z

.field private mWardenApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mokee/aegis/model/WardenApps;)Lcom/mokee/aegis/model/WardenApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mCallback:Lcom/mokee/aegis/model/WardenApps$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mokee/aegis/model/WardenApps;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mokee/aegis/model/WardenApps;->mRefreshing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mokee/aegis/model/WardenApps;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/mokee/aegis/model/WardenApps;->loadWardenApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mokee/aegis/model/WardenApps;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/WardenApps;->createMap(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mokee/aegis/model/WardenApps$Callback;Lcom/mokee/aegis/utils/PmCache;Lcom/android/internal/app/IAppOpsService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/mokee/aegis/model/WardenApps$Callback;
    .param p3, "cache"    # Lcom/mokee/aegis/utils/PmCache;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lcom/mokee/aegis/model/WardenApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    .line 61
    iput-object p1, p0, Lcom/mokee/aegis/model/WardenApps;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    iput-object p4, p0, Lcom/mokee/aegis/model/WardenApps;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 64
    iput-object p2, p0, Lcom/mokee/aegis/model/WardenApps;->mCallback:Lcom/mokee/aegis/model/WardenApps$Callback;

    .line 65
    const-string/jumbo v0, "warden"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mPrefs:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method private createMap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/WardenApps$WardenApp;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/mokee/aegis/model/WardenApps;->mAppLookup:Landroid/util/ArrayMap;

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/WardenApps$WardenApp;

    .line 117
    .local v0, "app":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    iget-object v2, p0, Lcom/mokee/aegis/model/WardenApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/WardenApps$WardenApp;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    .end local v0    # "app":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    :cond_0
    iput-object p1, p0, Lcom/mokee/aegis/model/WardenApps;->mWardenApps:Ljava/util/List;

    .line 114
    return-void
.end method

.method private loadWardenApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 84
    sget-boolean v1, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v1, :cond_0

    return-object v3

    .line 85
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v13, "wardenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mokee/aegis/model/WardenApps$WardenApp;>;"
    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    .line 88
    .local v11, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3, v14}, Lcom/mokee/aegis/utils/PmCache;->getPackages(II)Ljava/util/List;

    move-result-object v8

    .line 90
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 91
    .local v6, "app":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/mokee/utils/PackageUtils;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/mokee/aegis/model/WardenApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "label":Ljava/lang/String;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->getWardenInfo(I)Ljava/util/Map;

    move-result-object v1

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mokee/aegis/WardenInfo$PackageInfo;

    invoke-virtual {v1}, Lcom/mokee/aegis/WardenInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mokee/aegis/WardenInfo$UidInfo;

    invoke-virtual {v1}, Lcom/mokee/aegis/WardenInfo$UidInfo;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    const/4 v4, 0x1

    .line 102
    .local v4, "isAllowed":Z
    :goto_2
    new-instance v0, Lcom/mokee/aegis/model/WardenApps$WardenApp;

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 103
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/mokee/aegis/model/WardenApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/mokee/aegis/model/WardenApps$WardenApp;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/ApplicationInfo;)V

    .line 104
    .local v0, "wardenApp":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v0    # "wardenApp":Lcom/mokee/aegis/model/WardenApps$WardenApp;
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "isAllowed":Z
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v7    # "app$iterator":Ljava/util/Iterator;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    iget-object v1, p0, Lcom/mokee/aegis/model/WardenApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v14, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 96
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v7    # "app$iterator":Ljava/util/Iterator;
    .restart local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isAllowed":Z
    goto :goto_2

    .line 99
    .end local v4    # "isAllowed":Z
    :catch_0
    move-exception v10

    .line 100
    .local v10, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x1

    .restart local v4    # "isAllowed":Z
    goto :goto_2

    .line 97
    .end local v4    # "isAllowed":Z
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 98
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v4, 0x1

    .restart local v4    # "isAllowed":Z
    goto :goto_2

    .line 109
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "isAllowed":Z
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v7    # "app$iterator":Ljava/util/Iterator;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v11    # "user":Landroid/os/UserHandle;
    :cond_5
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    return-object v13
.end method


# virtual methods
.method public getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/WardenApps$WardenApp;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/WardenApps$WardenApp;

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mokee/aegis/model/WardenApps$WardenApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mokee/aegis/model/WardenApps;->mWardenApps:Ljava/util/List;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/mokee/aegis/model/WardenApps;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/aegis/model/WardenApps;->mRefreshing:Z

    .line 71
    new-instance v0, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;-><init>(Lcom/mokee/aegis/model/WardenApps;Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/model/WardenApps$WardenAppsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :cond_0
    return-void
.end method
