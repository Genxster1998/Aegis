.class public Lcom/mokee/aegis/model/PermissionApps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/model/PermissionApps$Callback;,
        Lcom/mokee/aegis/model/PermissionApps$PermissionApp;,
        Lcom/mokee/aegis/model/PermissionApps$PermissionAppsLoader;
    }
.end annotation


# static fields
.field private static final WHITE_LIST:[Ljava/lang/String;


# instance fields
.field private mAppLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/mokee/aegis/utils/PmCache;

.field private final mCallback:Lcom/mokee/aegis/model/PermissionApps$Callback;

.field private final mContext:Landroid/content/Context;

.field private mPermApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRefreshing:Z

.field private final mRequestPermissionGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mokee/aegis/model/PermissionApps;)Lcom/mokee/aegis/model/PermissionApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mCallback:Lcom/mokee/aegis/model/PermissionApps$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mokee/aegis/model/PermissionApps;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mokee/aegis/model/PermissionApps;->mRefreshing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mokee/aegis/model/PermissionApps;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/mokee/aegis/model/PermissionApps;->loadPermissionApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mokee/aegis/model/PermissionApps;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/PermissionApps;->createMap(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.cyanogenmod.lockclock"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/mokee/aegis/model/PermissionApps;->WHITE_LIST:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;Lcom/mokee/aegis/model/PermissionApps$Callback;Lcom/mokee/aegis/utils/PmCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/mokee/aegis/model/PermissionApps$Callback;
    .param p4, "cache"    # Lcom/mokee/aegis/utils/PmCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mokee/aegis/model/PermissionApps$Callback;",
            "Lcom/mokee/aegis/utils/PmCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "groups":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p4, p0, Lcom/mokee/aegis/model/PermissionApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    .line 58
    iput-object p1, p0, Lcom/mokee/aegis/model/PermissionApps;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/mokee/aegis/model/PermissionApps;->mRequestPermissionGroups:Landroid/util/SparseArray;

    .line 60
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    .line 61
    iput-object p3, p0, Lcom/mokee/aegis/model/PermissionApps;->mCallback:Lcom/mokee/aegis/model/PermissionApps$Callback;

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
            "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/PermissionApps$PermissionApp;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/mokee/aegis/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    .line 118
    .local v0, "app":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    iget-object v2, p0, Lcom/mokee/aegis/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    .end local v0    # "app":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    :cond_0
    iput-object p1, p0, Lcom/mokee/aegis/model/PermissionApps;->mPermApps:Ljava/util/List;

    .line 115
    return-void
.end method

.method private loadPermissionApps()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
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
    .local v14, "permApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mokee/aegis/model/PermissionApps$PermissionApp;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserHandle;

    .line 83
    .local v16, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/16 v6, 0x1000

    invoke-virtual {v2, v4, v6}, Lcom/mokee/aegis/utils/PmCache;->getPackages(II)Ljava/util/List;

    move-result-object v9

    .line 86
    .local v9, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager;

    .line 87
    .local v12, "mAppOpsManager":Landroid/app/AppOpsManager;
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 88
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 91
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 93
    .local v5, "requestPermissionStatus":Landroid/util/SparseBooleanArray;
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mRequestPermissionGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mRequestPermissionGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 95
    .local v11, "key":I
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/aegis/model/PermissionApps;->mRequestPermissionGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 96
    .local v15, "permissionExists":Z
    if-eqz v15, :cond_3

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/mokee/utils/PackageUtils;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-eqz v15, :cond_5

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/mokee/utils/PackageUtils;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/mokee/aegis/model/PermissionApps;->WHITE_LIST:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    :cond_4
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v11, v2, v4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 98
    .local v13, "mode":I
    if-nez v13, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v5, v11, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 93
    .end local v13    # "mode":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 84
    .end local v5    # "requestPermissionStatus":Landroid/util/SparseBooleanArray;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "index":I
    .end local v11    # "key":I
    .end local v12    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .end local v15    # "permissionExists":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mokee/aegis/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 84
    const/16 v6, 0x1000

    invoke-virtual {v2, v6, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v9

    .restart local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_0

    .line 98
    .restart local v5    # "requestPermissionStatus":Landroid/util/SparseBooleanArray;
    .restart local v7    # "app":Landroid/content/pm/PackageInfo;
    .restart local v8    # "app$iterator":Ljava/util/Iterator;
    .restart local v10    # "index":I
    .restart local v11    # "key":I
    .restart local v12    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .restart local v13    # "mode":I
    .restart local v15    # "permissionExists":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 101
    .end local v11    # "key":I
    .end local v13    # "mode":I
    .end local v15    # "permissionExists":Z
    :cond_8
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 102
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/aegis/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "label":Ljava/lang/String;
    new-instance v1, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 104
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/aegis/model/PermissionApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    invoke-direct/range {v1 .. v6}, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/util/SparseBooleanArray;Landroid/content/pm/ApplicationInfo;)V

    .line 105
    .local v1, "permApp":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 110
    .end local v1    # "permApp":Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "requestPermissionStatus":Landroid/util/SparseBooleanArray;
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10    # "index":I
    .end local v12    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .end local v16    # "user":Landroid/os/UserHandle;
    :cond_9
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    return-object v14
.end method


# virtual methods
.method public getApp(Ljava/lang/String;)Lcom/mokee/aegis/model/PermissionApps$PermissionApp;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/PermissionApps$PermissionApp;

    return-object v0
.end method

.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mokee/aegis/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mPermApps:Ljava/util/List;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/aegis/model/PermissionApps;->mRefreshing:Z

    .line 67
    new-instance v0, Lcom/mokee/aegis/model/PermissionApps$PermissionAppsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mokee/aegis/model/PermissionApps$PermissionAppsLoader;-><init>(Lcom/mokee/aegis/model/PermissionApps;Lcom/mokee/aegis/model/PermissionApps$PermissionAppsLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/model/PermissionApps$PermissionAppsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_0
    return-void
.end method
