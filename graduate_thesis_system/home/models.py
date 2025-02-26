# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Author(models.Model):
    author_id = models.AutoField(primary_key=True)
    author_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'Author'


class Cosupervisor(models.Model):
    cosup_id = models.AutoField(primary_key=True)
    cosup_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'CoSupervisor'


class Institute(models.Model):
    institute_id = models.AutoField(primary_key=True)
    institute_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')
    university = models.ForeignKey('University', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'Institute'


class Keyword(models.Model):
    keyword_id = models.AutoField(primary_key=True)
    keyword_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'Keyword'


class Language(models.Model):
    language_id = models.AutoField(primary_key=True)
    language_name = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'Language'


class Subjecttopic(models.Model):
    topic_id = models.AutoField(primary_key=True)
    topic_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'SubjectTopic'


class Supervisor(models.Model):
    supervisor_id = models.AutoField(primary_key=True)
    supervisor_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'Supervisor'


class Thesis(models.Model):
    thesis_no = models.AutoField(primary_key=True)
    title = models.CharField(max_length=500, db_collation='SQL_Latin1_General_CP1_CI_AS')
    abstract = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    author = models.ForeignKey(Author, models.DO_NOTHING, db_column='author')
    year = models.IntegerField()
    type = models.ForeignKey('Type', models.DO_NOTHING, db_column='type')
    university = models.ForeignKey('University', models.DO_NOTHING, db_column='university')
    institute = models.ForeignKey(Institute, models.DO_NOTHING, db_column='institute')
    number_of_pages = models.IntegerField()
    language = models.ForeignKey(Language, models.DO_NOTHING, db_column='language')
    submission_date = models.DateField()
    supervisor = models.ForeignKey(Supervisor, models.DO_NOTHING, db_column='supervisor')
    cosupervisor = models.ForeignKey(Cosupervisor, models.DO_NOTHING, db_column='cosupervisor', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Thesis'


class Thesiskeyword(models.Model):
    id = models.AutoField(primary_key=True)
    thesis_no = models.ForeignKey(Thesis, models.DO_NOTHING, db_column='thesis_no', blank=True, null=True)
    keyword = models.ForeignKey(Keyword, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'ThesisKeyword'


class Thesissubject(models.Model):
    id = models.AutoField(primary_key=True)
    thesis_no = models.ForeignKey(Thesis, models.DO_NOTHING, db_column='thesis_no')
    topic = models.ForeignKey(Subjecttopic, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'ThesisSubject'


class Type(models.Model):
    type_id = models.AutoField(primary_key=True)
    type_name = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'Type'


class University(models.Model):
    university_id = models.AutoField(primary_key=True)
    university_name = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'University'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128, db_collation='SQL_Latin1_General_CP1_CI_AS')
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    first_name = models.CharField(max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    last_name = models.CharField(max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    email = models.CharField(max_length=254, db_collation='SQL_Latin1_General_CP1_CI_AS')
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    object_repr = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')
    action_flag = models.SmallIntegerField()
    change_message = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS')
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')
    model = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    name = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40, db_collation='SQL_Latin1_General_CP1_CI_AS')
    session_data = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS')
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
