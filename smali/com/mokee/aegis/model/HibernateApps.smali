.class public Lcom/mokee/aegis/model/HibernateApps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/model/HibernateApps$Callback;,
        Lcom/mokee/aegis/model/HibernateApps$HibernateApp;,
        Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;
    }
.end annotation


# instance fields
.field private mAppLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/mokee/aegis/utils/PmCache;

.field private final mCallback:Lcom/mokee/aegis/model/HibernateApps$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHibernateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshing:Z


# direct methods
.method static synthetic -get0(Lcom/mokee/aegis/model/HibernateApps;)Lcom/mokee/aegis/model/HibernateApps$Callback;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mCallback:Lcom/mokee/aegis/model/HibernateApps$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mokee/aegis/model/HibernateApps;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mokee/aegis/model/HibernateApps;->mRefreshing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mokee/aegis/model/HibernateApps;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/mokee/aegis/model/HibernateApps;->loadHibernateApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/mokee/aegis/model/HibernateApps;Ljava/util/List;)V
    .locals 0
    .param p1, "result"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/mokee/aegis/model/HibernateApps;->createMap(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mokee/aegis/model/HibernateApps$Callback;Lcom/mokee/aegis/utils/PmCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/mokee/aegis/model/HibernateApps$Callback;
    .param p3, "cache"    # Lcom/mokee/aegis/utils/PmCache;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/mokee/aegis/model/HibernateApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    .line 56
    iput-object p1, p0, Lcom/mokee/aegis/model/HibernateApps;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mPm:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p2, p0, Lcom/mokee/aegis/model/HibernateApps;->mCallback:Lcom/mokee/aegis/model/HibernateApps$Callback;

    .line 59
    const-string/jumbo v0, "hibernate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mPrefs:Landroid/content/SharedPreferences;

    .line 54
    return-void
.end method

.method private createMap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/aegis/model/HibernateApps$HibernateApp;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/mokee/aegis/model/HibernateApps;->mAppLookup:Landroid/util/ArrayMap;

    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;

    .line 103
    .local v0, "app":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    iget-object v2, p0, Lcom/mokee/aegis/model/HibernateApps;->mAppLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v0    # "app":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    :cond_0
    iput-object p1, p0, Lcom/mokee/aegis/model/HibernateApps;->mHibernateApps:Ljava/util/List;

    .line 100
    return-void
.end method

.method private loadHibernateApps()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 78
    sget-boolean v1, Lcom/mokee/cloud/misc/CloudUtils;->Verified:Z

    if-nez v1, :cond_0

    return-object v3

    .line 79
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v9, "hibernateApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mokee/aegis/model/HibernateApps$HibernateApp;>;"
    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 82
    .local v10, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps;->mCache:Lcom/mokee/aegis/utils/PmCache;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3, v12}, Lcom/mokee/aegis/utils/PmCache;->getPackages(II)Ljava/util/List;

    move-result-object v8

    .line 84
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

    .line 85
    .local v6, "app":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/mokee/utils/PackageUtils;->isSystem(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/mokee/aegis/model/HibernateApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "label":Ljava/lang/String;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    new-instance v0, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 89
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/mokee/aegis/model/HibernateApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/mokee/aegis/model/HibernateApps;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/mokee/aegis/model/HibernateApps$HibernateApp;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/ApplicationInfo;)V

    .line 90
    .local v0, "hibernateApp":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0    # "hibernateApp":Lcom/mokee/aegis/model/HibernateApps$HibernateApp;
    .end local v2    # "label":Ljava/lang/String;
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v7    # "app$iterator":Ljava/util/Iterator;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    iget-object v1, p0, Lcom/mokee/aegis/model/HibernateApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v12, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    .line 95
    .end local v10    # "user":Landroid/os/UserHandle;
    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 97
    return-object v9
.end method


# virtual methods
.method public getApps()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mokee/aegis/model/HibernateApps$HibernateApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mHibernateApps:Ljava/util/List;

    return-object v0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mRefreshing:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/aegis/model/HibernateApps;->mRefreshing:Z

    .line 65
    new-instance v0, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;-><init>(Lcom/mokee/aegis/model/HibernateApps;Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/model/HibernateApps$HibernateAppsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    :cond_0
    return-void
.end method
