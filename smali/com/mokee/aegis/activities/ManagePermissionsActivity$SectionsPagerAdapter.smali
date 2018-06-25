.class public Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/aegis/activities/ManagePermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;


# direct methods
.method public constructor <init>(Lcom/mokee/aegis/activities/ManagePermissionsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mokee/aegis/activities/ManagePermissionsActivity;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;->this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;

    .line 92
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_0
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/mokee/aegis/fragments/PermissionAppsFragment;->newInstance(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_1
    invoke-static {}, Lcom/mokee/aegis/fragments/WardenAppsFragment;->newInstance()Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_2
    invoke-static {}, Lcom/mokee/aegis/fragments/HibernateAppsFragment;->newInstance()Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_3
    invoke-static {}, Lcom/mokee/aegis/fragments/PacifierAppsFragment;->newInstance()Landroid/app/Fragment;

    move-result-object v0

    return-object v0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;->this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;->this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;->this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/mokee/aegis/activities/ManagePermissionsActivity$SectionsPagerAdapter;->this$0:Lcom/mokee/aegis/activities/ManagePermissionsActivity;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/mokee/aegis/activities/ManagePermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
