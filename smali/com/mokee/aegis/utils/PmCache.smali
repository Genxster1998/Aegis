.class public Lcom/mokee/aegis/utils/PmCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPackageInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mokee/aegis/utils/PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    .line 37
    iput-object p1, p0, Lcom/mokee/aegis/utils/PmCache;->mPm:Landroid/content/pm/PackageManager;

    .line 36
    return-void
.end method

.method public static getPmCache(Landroid/content/Context;)Lcom/mokee/aegis/utils/PmCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/mokee/aegis/utils/PmCache;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mokee/aegis/utils/PmCache;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getPackages(II)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/mokee/aegis/utils/PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 42
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/mokee/aegis/utils/PmCache;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/mokee/aegis/utils/PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 46
    return-object v0

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
