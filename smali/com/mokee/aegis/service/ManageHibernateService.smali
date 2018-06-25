.class public Lcom/mokee/aegis/service/ManageHibernateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/aegis/service/ManageHibernateService$1;,
        Lcom/mokee/aegis/service/ManageHibernateService$2;
    }
.end annotation


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsageStats:Landroid/app/usage/UsageStatsManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/mokee/aegis/service/ManageHibernateService;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mokee/aegis/service/ManageHibernateService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/mokee/aegis/service/ManageHibernateService$1;

    invoke-direct {v0, p0}, Lcom/mokee/aegis/service/ManageHibernateService$1;-><init>(Lcom/mokee/aegis/service/ManageHibernateService;)V

    iput-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Lcom/mokee/aegis/service/ManageHibernateService$2;

    invoke-direct {v0, p0}, Lcom/mokee/aegis/service/ManageHibernateService$2;-><init>(Lcom/mokee/aegis/service/ManageHibernateService;)V

    iput-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mConnection:Landroid/content/ServiceConnection;

    .line 36
    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    new-instance v0, Landroid/content/Intent;

    .line 112
    const-class v1, Lcom/mokee/aegis/service/NonStopIntentService;

    .line 111
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget-object v1, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mConnection:Landroid/content/ServiceConnection;

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/mokee/aegis/service/ManageHibernateService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 113
    iput-boolean v2, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mIsBound:Z

    .line 106
    return-void
.end method

.method doUnbindService()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mokee/aegis/service/ManageHibernateService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mIsBound:Z

    .line 116
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mokee/aegis/service/ManageHibernateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    invoke-virtual {p0}, Lcom/mokee/aegis/service/ManageHibernateService;->doUnbindService()V

    .line 130
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mokee/aegis/service/ManageHibernateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "hibernate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mokee/aegis/service/ManageHibernateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mokee/aegis/service/ManageHibernateService;->prefs:Landroid/content/SharedPreferences;

    .line 102
    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, v1}, Lcom/mokee/aegis/service/ManageHibernateService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/mokee/aegis/service/ManageHibernateService;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    .line 103
    invoke-virtual {p0}, Lcom/mokee/aegis/service/ManageHibernateService;->doBindService()V

    .line 95
    return-void
.end method
