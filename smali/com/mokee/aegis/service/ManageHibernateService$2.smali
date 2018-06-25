.class Lcom/mokee/aegis/service/ManageHibernateService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/service/ManageHibernateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBoundService:Lcom/mokee/aegis/service/NonStopIntentService;

.field final synthetic this$0:Lcom/mokee/aegis/service/ManageHibernateService;


# direct methods
.method constructor <init>(Lcom/mokee/aegis/service/ManageHibernateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/service/ManageHibernateService;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mokee/aegis/service/ManageHibernateService$2;->this$0:Lcom/mokee/aegis/service/ManageHibernateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    check-cast p2, Lcom/mokee/aegis/service/NonStopIntentService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/mokee/aegis/service/NonStopIntentService$LocalBinder;->getService()Lcom/mokee/aegis/service/NonStopIntentService;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService$2;->mBoundService:Lcom/mokee/aegis/service/NonStopIntentService;

    .line 75
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/aegis/service/ManageHibernateService$2;->mBoundService:Lcom/mokee/aegis/service/NonStopIntentService;

    .line 85
    return-void
.end method
