{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::RDS::DBInstance type creates an Amazon RDS database instance.
-- For detailed information about configuring RDS DB instances, see
-- CreateDBInstance.

module Stratosphere.Resources.DBInstance where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for DBInstance. See 'dbInstance' for a more
-- convenient constructor.
data DBInstance =
  DBInstance
  { _dBInstanceAllocatedStorage :: Maybe (Val Text)
  , _dBInstanceAllowMajorVersionUpgrade :: Maybe (Val Bool')
  , _dBInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _dBInstanceAvailabilityZone :: Maybe (Val Text)
  , _dBInstanceBackupRetentionPeriod :: Maybe (Val Text)
  , _dBInstanceCharacterSetName :: Maybe (Val Text)
  , _dBInstanceDBClusterIdentifier :: Maybe (Val Text)
  , _dBInstanceDBInstanceClass :: Val Text
  , _dBInstanceDBInstanceIdentifier :: Maybe (Val Text)
  , _dBInstanceDBName :: Maybe (Val Text)
  , _dBInstanceDBParameterGroupName :: Maybe (Val Text)
  , _dBInstanceDBSecurityGroups :: Maybe [Val Text]
  , _dBInstanceDBSnapshotIdentifier :: Maybe (Val Text)
  , _dBInstanceDBSubnetGroupName :: Maybe (Val Text)
  , _dBInstanceEngine :: Maybe (Val Text)
  , _dBInstanceEngineVersion :: Maybe (Val Text)
  , _dBInstanceIops :: Maybe (Val Integer')
  , _dBInstanceKmsKeyId :: Maybe (Val Text)
  , _dBInstanceLicenseModel :: Maybe (Val Text)
  , _dBInstanceMasterUsername :: Maybe (Val Text)
  , _dBInstanceMasterUserPassword :: Maybe (Val Text)
  , _dBInstanceMultiAZ :: Maybe (Val Bool')
  , _dBInstanceOptionGroupName :: Maybe (Val Text)
  , _dBInstancePort :: Maybe (Val Text)
  , _dBInstancePreferredBackupWindow :: Maybe (Val Text)
  , _dBInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _dBInstancePubliclyAccessible :: Maybe (Val Bool')
  , _dBInstanceSourceDBInstanceIdentifier :: Maybe (Val Text)
  , _dBInstanceStorageEncrypted :: Maybe (Val Bool')
  , _dBInstanceStorageType :: Maybe (Val Text)
  , _dBInstanceTags :: Maybe [ResourceTag]
  , _dBInstanceVPCSecurityGroups :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON DBInstance where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON DBInstance where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

-- | Constructor for 'DBInstance' containing required fields as arguments.
dbInstance
  :: Val Text -- ^ DBInstanceClass
  -> DBInstance
dbInstance dBInstanceClassarg =
  DBInstance
  { _dBInstanceAllocatedStorage = Nothing
  , _dBInstanceAllowMajorVersionUpgrade = Nothing
  , _dBInstanceAutoMinorVersionUpgrade = Nothing
  , _dBInstanceAvailabilityZone = Nothing
  , _dBInstanceBackupRetentionPeriod = Nothing
  , _dBInstanceCharacterSetName = Nothing
  , _dBInstanceDBClusterIdentifier = Nothing
  , _dBInstanceDBInstanceClass = dBInstanceClassarg
  , _dBInstanceDBInstanceIdentifier = Nothing
  , _dBInstanceDBName = Nothing
  , _dBInstanceDBParameterGroupName = Nothing
  , _dBInstanceDBSecurityGroups = Nothing
  , _dBInstanceDBSnapshotIdentifier = Nothing
  , _dBInstanceDBSubnetGroupName = Nothing
  , _dBInstanceEngine = Nothing
  , _dBInstanceEngineVersion = Nothing
  , _dBInstanceIops = Nothing
  , _dBInstanceKmsKeyId = Nothing
  , _dBInstanceLicenseModel = Nothing
  , _dBInstanceMasterUsername = Nothing
  , _dBInstanceMasterUserPassword = Nothing
  , _dBInstanceMultiAZ = Nothing
  , _dBInstanceOptionGroupName = Nothing
  , _dBInstancePort = Nothing
  , _dBInstancePreferredBackupWindow = Nothing
  , _dBInstancePreferredMaintenanceWindow = Nothing
  , _dBInstancePubliclyAccessible = Nothing
  , _dBInstanceSourceDBInstanceIdentifier = Nothing
  , _dBInstanceStorageEncrypted = Nothing
  , _dBInstanceStorageType = Nothing
  , _dBInstanceTags = Nothing
  , _dBInstanceVPCSecurityGroups = Nothing
  }

-- | The allocated storage size specified in gigabytes (GB). If any value is
-- used in the Iops parameter, AllocatedStorage must be at least 100 GB, which
-- corresponds to the minimum Iops value of 1000. If Iops is increased (in
-- 1000 IOPS increments), then AllocatedStorage must also be increased (in 100
-- GB increments) correspondingly.
dbiAllocatedStorage :: Lens' DBInstance (Maybe (Val Text))
dbiAllocatedStorage = lens _dBInstanceAllocatedStorage (\s a -> s { _dBInstanceAllocatedStorage = a })

-- | Indicates whether major version upgrades are allowed. Changing this
-- parameter does not result in an outage, and the change is applied
-- asynchronously as soon as possible. Constraints: This parameter must be set
-- to true when you specify an EngineVersion that differs from the DB
-- instance's current major version.
dbiAllowMajorVersionUpgrade :: Lens' DBInstance (Maybe (Val Bool'))
dbiAllowMajorVersionUpgrade = lens _dBInstanceAllowMajorVersionUpgrade (\s a -> s { _dBInstanceAllowMajorVersionUpgrade = a })

-- | Indicates that minor engine upgrades will be applied automatically to the
-- DB instance during the maintenance window. The default value is true.
dbiAutoMinorVersionUpgrade :: Lens' DBInstance (Maybe (Val Bool'))
dbiAutoMinorVersionUpgrade = lens _dBInstanceAutoMinorVersionUpgrade (\s a -> s { _dBInstanceAutoMinorVersionUpgrade = a })

-- | The name of the Availability Zone where the DB instance is located. You
-- cannot set the AvailabilityZone parameter if the MultiAZ parameter is set
-- to true.
dbiAvailabilityZone :: Lens' DBInstance (Maybe (Val Text))
dbiAvailabilityZone = lens _dBInstanceAvailabilityZone (\s a -> s { _dBInstanceAvailabilityZone = a })

-- | The number of days for which automatic DB snapshots are retained.
-- Important If this DB instance is deleted or replaced during an update, all
-- automated snapshots are deleted. However, manual DB snapshot are retained.
dbiBackupRetentionPeriod :: Lens' DBInstance (Maybe (Val Text))
dbiBackupRetentionPeriod = lens _dBInstanceBackupRetentionPeriod (\s a -> s { _dBInstanceBackupRetentionPeriod = a })

-- | For supported engines, specifies the character set to associate with the
-- database instance. For more information, see Appendix: Oracle Character
-- Sets Supported in Amazon RDS in the Amazon Relational Database Service User
-- Guide. If you specify the DBSnapshotIdentifier or
-- SourceDBInstanceIdentifier property, do not specify this property. The
-- value is inherited from the snapshot or source database instance.
dbiCharacterSetName :: Lens' DBInstance (Maybe (Val Text))
dbiCharacterSetName = lens _dBInstanceCharacterSetName (\s a -> s { _dBInstanceCharacterSetName = a })

-- | The identifier of an existing DB cluster that this instance will be
-- associated with. If you specify this property, specify aurora for the
-- Engine property and do not specify any of the following properties:
-- AllocatedStorage, CharacterSetName, DBSecurityGroups,
-- SourceDBInstanceIdentifier, and StorageType. Amazon RDS assigns the first
-- DB instance in the cluster as the primary and additional DB instances as
-- replicas.
dbiDBClusterIdentifier :: Lens' DBInstance (Maybe (Val Text))
dbiDBClusterIdentifier = lens _dBInstanceDBClusterIdentifier (\s a -> s { _dBInstanceDBClusterIdentifier = a })

-- | The name of the compute and memory capacity class of the DB instance.
dbiDBInstanceClass :: Lens' DBInstance (Val Text)
dbiDBInstanceClass = lens _dBInstanceDBInstanceClass (\s a -> s { _dBInstanceDBInstanceClass = a })

-- | A name for the DB instance. If you specify a name, AWS CloudFormation
-- converts it to lower case. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the DB instance. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
dbiDBInstanceIdentifier :: Lens' DBInstance (Maybe (Val Text))
dbiDBInstanceIdentifier = lens _dBInstanceDBInstanceIdentifier (\s a -> s { _dBInstanceDBInstanceIdentifier = a })

-- | The name of the initial database of this instance that was provided at
-- create time, if one was specified. This same name is returned for the life
-- of the DB instance. Note If you restore from a snapshot, do specify this
-- property for the MySQL or MariaDB engines.
dbiDBName :: Lens' DBInstance (Maybe (Val Text))
dbiDBName = lens _dBInstanceDBName (\s a -> s { _dBInstanceDBName = a })

-- | The name of an existing DB parameter group or a reference to an
-- AWS::RDS::DBParameterGroup resource created in the template.
dbiDBParameterGroupName :: Lens' DBInstance (Maybe (Val Text))
dbiDBParameterGroupName = lens _dBInstanceDBParameterGroupName (\s a -> s { _dBInstanceDBParameterGroupName = a })

-- | A list of the DB security groups to assign to the Amazon RDS instance.
-- The list can include both the name of existing DB security groups or
-- references to AWS::RDS::DBSecurityGroup resources created in the template.
-- If you set DBSecurityGroups, you must not set VPCSecurityGroups, and
-- vice-versa.
dbiDBSecurityGroups :: Lens' DBInstance (Maybe [Val Text])
dbiDBSecurityGroups = lens _dBInstanceDBSecurityGroups (\s a -> s { _dBInstanceDBSecurityGroups = a })

-- | The identifier for the DB snapshot to restore from. By specifying this
-- property, you can create a DB instance from the specified DB snapshot. If
-- the DBSnapshotIdentifier property is an empty string or the
-- AWS::RDS::DBInstance declaration has no DBSnapshotIdentifier property, the
-- database is created as a new database. If the property contains a value
-- (other than empty string), AWS CloudFormation creates a database from the
-- specified snapshot. If a snapshot with the specified name does not exist,
-- the database creation fails and the stack rolls back. Some DB instance
-- properties are not valid when you restore from a snapshot, such as the
-- MasterUsername and MasterUserPassword properties. For information about the
-- properties that you can specify, see the RestoreDBInstanceFromDBSnapshot
-- action in the Amazon Relational Database Service API Reference.
dbiDBSnapshotIdentifier :: Lens' DBInstance (Maybe (Val Text))
dbiDBSnapshotIdentifier = lens _dBInstanceDBSnapshotIdentifier (\s a -> s { _dBInstanceDBSnapshotIdentifier = a })

-- | A DB subnet group to associate with the DB instance. If there is no DB
-- subnet group, then it is a non-VPC DB instance. For more information about
-- using Amazon RDS in a VPC, go to Using Amazon RDS with Amazon Virtual
-- Private Cloud (VPC) in the Amazon Relational Database Service Developer
-- Guide.
dbiDBSubnetGroupName :: Lens' DBInstance (Maybe (Val Text))
dbiDBSubnetGroupName = lens _dBInstanceDBSubnetGroupName (\s a -> s { _dBInstanceDBSubnetGroupName = a })

-- | The name of the database engine that the DB instance uses. This property
-- is optional when you specify the DBSnapshotIdentifier property to create DB
-- instances. For valid values, see the Engine parameter of the
-- CreateDBInstance action in the Amazon Relational Database Service API
-- Reference.
dbiEngine :: Lens' DBInstance (Maybe (Val Text))
dbiEngine = lens _dBInstanceEngine (\s a -> s { _dBInstanceEngine = a })

-- | The version number of the database engine to use.
dbiEngineVersion :: Lens' DBInstance (Maybe (Val Text))
dbiEngineVersion = lens _dBInstanceEngineVersion (\s a -> s { _dBInstanceEngineVersion = a })

-- | The number of I/O operations per second (IOPS) that the database
-- provisions. The value must be equal to or greater than 1000. If you specify
-- this property, you must follow the range of allowed ratios of your
-- requested IOPS rate to the amount of storage that you allocate (IOPS to
-- allocated storage). For example, you can provision an Oracle database
-- instance with 1000 IOPS and 200 GB of storage (a ratio of 5:1) or specify
-- 2000 IOPS with 200 GB of storage (a ratio of 10:1). For more information,
-- see Amazon RDS Provisioned IOPS Storage to Improve Performance in the
-- Amazon Relational Database Service User Guide.
dbiIops :: Lens' DBInstance (Maybe (Val Integer'))
dbiIops = lens _dBInstanceIops (\s a -> s { _dBInstanceIops = a })

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service master
-- key that is used to encrypt the database instance, such as
-- arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.
-- If you enable the StorageEncrypted property but don't specify this
-- property, the default master key is used. If you specify this property, you
-- must set the StorageEncrypted property to true. If you specify the
-- DBSnapshotIdentifier or SourceDBInstanceIdentifier property, do not specify
-- this property. The value is inherited from the snapshot or source database
-- instance. Note Currently, if you specify DBSecurityGroups, this property is
-- ignored. If you want to specify a security group and this property, you
-- must use a VPC security group. For more information about Amazon RDS and
-- VPC, see Using Amazon RDS with Amazon VPC in the Amazon Relational Database
-- Service User Guide.
dbiKmsKeyId :: Lens' DBInstance (Maybe (Val Text))
dbiKmsKeyId = lens _dBInstanceKmsKeyId (\s a -> s { _dBInstanceKmsKeyId = a })

-- | The license model information for the DB instance.
dbiLicenseModel :: Lens' DBInstance (Maybe (Val Text))
dbiLicenseModel = lens _dBInstanceLicenseModel (\s a -> s { _dBInstanceLicenseModel = a })

-- | The master user name for the database instance. This property is optional
-- when you specify the DBSnapshotIdentifier or the DBClusterIdentifier
-- property to create DB instances. Note If you specify the
-- SourceDBInstanceIdentifier or DBSnapshotIdentifier property, do not specify
-- this property. The value is inherited from the source database instance or
-- snapshot.
dbiMasterUsername :: Lens' DBInstance (Maybe (Val Text))
dbiMasterUsername = lens _dBInstanceMasterUsername (\s a -> s { _dBInstanceMasterUsername = a })

-- | The master password for the database instance. This property is optional
-- when you specify the DBSnapshotIdentifier or the DBClusterIdentifier
-- property to create DB instances. Note If you specify the
-- SourceDBInstanceIdentifier property, do not specify this property. The
-- value is inherited from the source database instance.
dbiMasterUserPassword :: Lens' DBInstance (Maybe (Val Text))
dbiMasterUserPassword = lens _dBInstanceMasterUserPassword (\s a -> s { _dBInstanceMasterUserPassword = a })

-- | Specifies if the database instance is a multiple Availability Zone
-- deployment. You cannot set the AvailabilityZone parameter if the MultiAZ
-- parameter is set to true. Note Do not specify this property if you want a
-- Multi-AZ deployment for a SQL Server database instance. Use the mirroring
-- option in an option group to set Multi-AZ for a SQL Server database
-- instance.
dbiMultiAZ :: Lens' DBInstance (Maybe (Val Bool'))
dbiMultiAZ = lens _dBInstanceMultiAZ (\s a -> s { _dBInstanceMultiAZ = a })

-- | An option group that this database instance is associated with.
dbiOptionGroupName :: Lens' DBInstance (Maybe (Val Text))
dbiOptionGroupName = lens _dBInstanceOptionGroupName (\s a -> s { _dBInstanceOptionGroupName = a })

-- | The port for the instance.
dbiPort :: Lens' DBInstance (Maybe (Val Text))
dbiPort = lens _dBInstancePort (\s a -> s { _dBInstancePort = a })

-- | The daily time range during which automated backups are created if
-- automated backups are enabled, as determined by the BackupRetentionPeriod.
dbiPreferredBackupWindow :: Lens' DBInstance (Maybe (Val Text))
dbiPreferredBackupWindow = lens _dBInstancePreferredBackupWindow (\s a -> s { _dBInstancePreferredBackupWindow = a })

-- | The weekly time range (in UTC) during which system maintenance can occur.
dbiPreferredMaintenanceWindow :: Lens' DBInstance (Maybe (Val Text))
dbiPreferredMaintenanceWindow = lens _dBInstancePreferredMaintenanceWindow (\s a -> s { _dBInstancePreferredMaintenanceWindow = a })

-- | Indicates whether the database instance is an Internet-facing instance.
-- If you specify true, an instance is created with a publicly resolvable DNS
-- name, which resolves to a public IP address. If you specify false, an
-- internal instance is created with a DNS name that resolves to a private IP
-- address. The default behavior value depends on your VPC setup and the
-- database subnet group. For more information, see the PubliclyAccessible
-- parameter in CreateDBInstance in the Amazon Relational Database Service API
-- Reference. If this resource has a public IP address and is also in a VPC
-- that is defined in the same template, you must use the DependsOn attribute
-- to declare a dependency on the VPC-gateway attachment. For more
-- information, see DependsOn Attribute. Note Currently, if you specify
-- DBSecurityGroups, this property is ignored. If you want to specify a
-- security group and this property, you must use a VPC security group. For
-- more information about Amazon RDS and VPC, see Using Amazon RDS with Amazon
-- VPC in the Amazon Relational Database Service User Guide.
dbiPubliclyAccessible :: Lens' DBInstance (Maybe (Val Bool'))
dbiPubliclyAccessible = lens _dBInstancePubliclyAccessible (\s a -> s { _dBInstancePubliclyAccessible = a })

-- | If you want to create a read replica DB instance, specify the ID of the
-- source database instance. Each database instance can have a certain number
-- of read replicas. For more information, see Working with Read Replicas in
-- the Amazon Relational Database Service Developer Guide. The
-- SourceDBInstanceIdentifier property determines whether a database instance
-- is a read replica. If you remove the SourceDBInstanceIdentifier property
-- from your current template and then update your stack, the read replica is
-- deleted and a new database instance (not a read replica) is created.
-- Important Read replicas do not support deletion policies. Any deletion
-- policy that's associated with a read replica is ignored. If you specify
-- SourceDBInstanceIdentifier, do not set the MultiAZ property to true and do
-- not specify the DBSnapshotIdentifier property. You cannot deploy read
-- replicas in multiple Availability Zones, and you cannot create a read
-- replica from a snapshot. Do not set the BackupRetentionPeriod, DBName,
-- MasterUsername, MasterUserPassword, and PreferredBackupWindow properties.
-- The database attributes are inherited from the source database instance,
-- and backups are disabled for read replicas. If the source DB instance is in
-- a different region than the read replica, specify a valid DB instance ARN.
-- For more information, see Constructing a Amazon RDS Amazon Resource Name
-- (ARN) in the Amazon Relational Database Service User Guide. For DB
-- instances in an Amazon Aurora clusters, do not specify this property.
-- Amazon RDS assigns automatically assigns a writer and reader DB instances.
dbiSourceDBInstanceIdentifier :: Lens' DBInstance (Maybe (Val Text))
dbiSourceDBInstanceIdentifier = lens _dBInstanceSourceDBInstanceIdentifier (\s a -> s { _dBInstanceSourceDBInstanceIdentifier = a })

-- | Indicates whether the database instance is encrypted. If you specify the
-- DBClusterIdentifier, DBSnapshotIdentifier, or SourceDBInstanceIdentifier
-- property, do not specify this property. The value is inherited from the
-- cluster, snapshot, or source database instance. Note Currently, if you
-- specify DBSecurityGroups, this property is ignored. If you want to specify
-- a security group and this property, you must use a VPC security group. For
-- more information about Amazon RDS and VPC, see Using Amazon RDS with Amazon
-- VPC in the Amazon Relational Database Service User Guide.
dbiStorageEncrypted :: Lens' DBInstance (Maybe (Val Bool'))
dbiStorageEncrypted = lens _dBInstanceStorageEncrypted (\s a -> s { _dBInstanceStorageEncrypted = a })

-- | The storage type associated with this database instance. For the default
-- and valid values, see the StorageType parameter of the CreateDBInstance
-- action in the Amazon Relational Database Service API Reference. Note
-- Currently, if you specify DBSecurityGroups, this property is ignored. If
-- you want to specify a security group and this property, you must use a VPC
-- security group. For more information about Amazon RDS and VPC, see Using
-- Amazon RDS with Amazon VPC in the Amazon Relational Database Service User
-- Guide.
dbiStorageType :: Lens' DBInstance (Maybe (Val Text))
dbiStorageType = lens _dBInstanceStorageType (\s a -> s { _dBInstanceStorageType = a })

-- | An arbitrary set of tags (key–value pairs) for this database instance.
dbiTags :: Lens' DBInstance (Maybe [ResourceTag])
dbiTags = lens _dBInstanceTags (\s a -> s { _dBInstanceTags = a })

-- | A list of the VPC security groups to assign to the Amazon RDS instance.
-- The list can include both the physical IDs of existing VPC security groups
-- or references to AWS::EC2::SecurityGroup resources created in the template.
-- If you set VPCSecurityGroups, you must not set DBSecurityGroups, and
-- vice-versa. Important You can migrate a database instance in your stack
-- from an RDS DB security group to a VPC security group, but you should keep
-- the following points in mind: You cannot revert to using an RDS security
-- group once you have established a VPC security group membership. When you
-- migrate your DB instance to VPC security groups, if your stack update rolls
-- back because of another failure in the database instance update, or because
-- of an update failure in another AWS CloudFormation resource, the rollback
-- will fail because it cannot revert to an RDS security group. To avoid this
-- situation, only migrate your DB instance to using VPC security groups when
-- that is the only change in your stack template.
dbiVPCSecurityGroups :: Lens' DBInstance (Maybe [Val Text])
dbiVPCSecurityGroups = lens _dBInstanceVPCSecurityGroups (\s a -> s { _dBInstanceVPCSecurityGroups = a })