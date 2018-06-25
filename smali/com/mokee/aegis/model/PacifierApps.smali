.class public Lcom/mokee/aegis/model/PacifierApps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/model/PacifierApps$Callback;,
        Lcom/mokee/aegis/model/PacifierApps$PacifierApp;,
        Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;
    }
.end annotation


# instance fields
.field private mAppLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mCache:Lcom/mokee/aegis/utils/PmCache;

.field private final mCallback:Lcom/mokee/aegis/model/PacifierApps$Callback;

.field private final mContext:Landroid/content/Context;

.field private mPacifierApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRefreshing:Z


# direct methods
.method static synthetic -get0(Lcom/mokee/aegis/model/PacifierApps;)Lcom/mokee/aegis/model/PacifierApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mCallback:Lcom/mokee/aegis/model/PacifierApps$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mokee/aegis/model/PacifierApps;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mokee/aegis/model/PacifierApps;->mRefreshing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mokee/aegis/model/PacifierApps;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/mokee/aegis/model/PacifierApps;->loadPacifierApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mokee/aegis/model/PacifierApps;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/PacifierApps;->createMap(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mokee/aegis/model/PacifierApps$Callback;Lcom/mokee/aegis/utils/PmCache;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/mokee/aegis/model/PacifierApps$Callback;
    .param p3, "cache"    # Lcom/mokee/aegis/utils/PmCache;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/mokee/aegis/model/PacifierApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    .line 58
    iput-object p4, p0, Lcom/mokee/aegis/model/PacifierApps;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 59
    iput-object p1, p0, Lcom/mokee/aegis/model/PacifierApps;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mPm:Landroid/content/pm/PackageManager;

    .line 61
    iput-object p2, p0, Lcom/mokee/aegis/model/PacifierApps;->mCallback:Lcom/mokee/aegis/model/PacifierApps$Callback;

    .line 56
    return-void
.end method

.method private createMap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/PacifierApps$PacifierApp;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/mokee/aegis/model/PacifierApps;->mAppLookup:Landroid/util/ArrayMap;

    .line 108
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    .line 109
    .local v0, "app":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    iget-object v2, p0, Lcom/mokee/aegis/model/PacifierApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    .end local v0    # "app":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    :cond_0
    iput-object p1, p0, Lcom/mokee/aegis/model/PacifierApps;->mPacifierApps:Ljava/util/List;

    .line 106
    return-void
.end method

.method private loadPacifierApps()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-boolean v2, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 81
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v14, "pacifierApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mokee/aegis/model/PacifierApps$PacifierApp;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PacifierApps;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserHandle;

    .line 83
    .local v15, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PacifierApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PacifierApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/mokee/aegis/utils/PmCache;->getPackages(II)Ljava/util/List;

    move-result-object v9

    .line 86
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PacifierApps;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/internal/app/IAppOpsService;->getPacifierInfo(I)Ljava/util/Map;

    move-result-object v12

    .line 87
    .local v12, "mPackageInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$PackageInfo;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 88
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/mokee/utils/PackageUtils;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/aegis/model/PacifierApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "label":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mokee/aegis/PacifierInfo$PackageInfo;

    invoke-virtual {v2}, Lcom/mokee/aegis/PacifierInfo$PackageInfo;->getUidsInfo()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mokee/aegis/PacifierInfo$UidInfo;

    invoke-virtual {v2}, Lcom/mokee/aegis/PacifierInfo$UidInfo;->getMode()I

    move-result v13

    .line 91
    .local v13, "mode":I
    new-instance v1, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 92
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mokee/aegis/model/PacifierApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v13, :cond_4

    const/4 v5, 0x1

    :goto_3
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    invoke-direct/range {v1 .. v6}, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/ApplicationInfo;)V

    .line 93
    .local v1, "pacifierApp":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 96
    .end local v1    # "pacifierApp":Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v12    # "mPackageInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$PackageInfo;>;"
    .end local v13    # "mode":I
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0

    .line 84
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "e":Ljava/lang/NullPointerException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PacifierApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v9

    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_1

    .line 92
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v7    # "app":Landroid/content/pm/PackageInfo;
    .restart local v8    # "app$iterator":Ljava/util/Iterator;
    .restart local v12    # "mPackageInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$PackageInfo;>;"
    .restart local v13    # "mode":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 101
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "mPackageInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mokee/aegis/PacifierInfo$PackageInfo;>;"
    .end local v13    # "mode":I
    .end local v15    # "user":Landroid/os/UserHandle;
    :cond_5
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 103
    return-object v14

    .line 97
    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v15    # "user":Landroid/os/UserHandle;
    :catch_1
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method


# virtual methods
.method public getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/PacifierApps$PacifierApp;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/PacifierApps$PacifierApp;

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mokee/aegis/model/PacifierApps$PacifierApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mPacifierApps:Ljava/util/List;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/aegis/model/PacifierApps;->mRefreshing:Z

    .line 67
    new-instance v0, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;-><init>(Lcom/mokee/aegis/model/PacifierApps;Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/model/PacifierApps$PacifierAppsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_0
    return-void
.end method
