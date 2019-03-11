{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html

module Stratosphere.Resources.OpsWorksCMServer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksCMServerEngineAttribute

-- | Full data type definition for OpsWorksCMServer. See 'opsWorksCMServer'
-- for a more convenient constructor.
data OpsWorksCMServer =
  OpsWorksCMServer
  { _opsWorksCMServerAssociatePublicIpAddress :: Maybe (Val Bool)
  , _opsWorksCMServerBackupId :: Maybe (Val Text)
  , _opsWorksCMServerBackupRetentionCount :: Maybe (Val Integer)
  , _opsWorksCMServerDisableAutomatedBackup :: Maybe (Val Bool)
  , _opsWorksCMServerEngine :: Maybe (Val Text)
  , _opsWorksCMServerEngineAttributes :: Maybe [OpsWorksCMServerEngineAttribute]
  , _opsWorksCMServerEngineModel :: Maybe (Val Text)
  , _opsWorksCMServerEngineVersion :: Maybe (Val Text)
  , _opsWorksCMServerInstanceProfileArn :: Val Text
  , _opsWorksCMServerInstanceType :: Val Text
  , _opsWorksCMServerKeyPair :: Maybe (Val Text)
  , _opsWorksCMServerPreferredBackupWindow :: Maybe (Val Text)
  , _opsWorksCMServerPreferredMaintenanceWindow :: Maybe (Val Text)
  , _opsWorksCMServerSecurityGroupIds :: Maybe (ValList Text)
  , _opsWorksCMServerServerName :: Maybe (Val Text)
  , _opsWorksCMServerServiceRoleArn :: Val Text
  , _opsWorksCMServerSubnetIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksCMServer where
  toJSON OpsWorksCMServer{..} =
    object $
    catMaybes
    [ fmap (("AssociatePublicIpAddress",) . toJSON . fmap Bool') _opsWorksCMServerAssociatePublicIpAddress
    , fmap (("BackupId",) . toJSON) _opsWorksCMServerBackupId
    , fmap (("BackupRetentionCount",) . toJSON . fmap Integer') _opsWorksCMServerBackupRetentionCount
    , fmap (("DisableAutomatedBackup",) . toJSON . fmap Bool') _opsWorksCMServerDisableAutomatedBackup
    , fmap (("Engine",) . toJSON) _opsWorksCMServerEngine
    , fmap (("EngineAttributes",) . toJSON) _opsWorksCMServerEngineAttributes
    , fmap (("EngineModel",) . toJSON) _opsWorksCMServerEngineModel
    , fmap (("EngineVersion",) . toJSON) _opsWorksCMServerEngineVersion
    , (Just . ("InstanceProfileArn",) . toJSON) _opsWorksCMServerInstanceProfileArn
    , (Just . ("InstanceType",) . toJSON) _opsWorksCMServerInstanceType
    , fmap (("KeyPair",) . toJSON) _opsWorksCMServerKeyPair
    , fmap (("PreferredBackupWindow",) . toJSON) _opsWorksCMServerPreferredBackupWindow
    , fmap (("PreferredMaintenanceWindow",) . toJSON) _opsWorksCMServerPreferredMaintenanceWindow
    , fmap (("SecurityGroupIds",) . toJSON) _opsWorksCMServerSecurityGroupIds
    , fmap (("ServerName",) . toJSON) _opsWorksCMServerServerName
    , (Just . ("ServiceRoleArn",) . toJSON) _opsWorksCMServerServiceRoleArn
    , fmap (("SubnetIds",) . toJSON) _opsWorksCMServerSubnetIds
    ]

instance FromJSON OpsWorksCMServer where
  parseJSON (Object obj) =
    OpsWorksCMServer <$>
      fmap (fmap (fmap unBool')) (obj .:? "AssociatePublicIpAddress") <*>
      (obj .:? "BackupId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "BackupRetentionCount") <*>
      fmap (fmap (fmap unBool')) (obj .:? "DisableAutomatedBackup") <*>
      (obj .:? "Engine") <*>
      (obj .:? "EngineAttributes") <*>
      (obj .:? "EngineModel") <*>
      (obj .:? "EngineVersion") <*>
      (obj .: "InstanceProfileArn") <*>
      (obj .: "InstanceType") <*>
      (obj .:? "KeyPair") <*>
      (obj .:? "PreferredBackupWindow") <*>
      (obj .:? "PreferredMaintenanceWindow") <*>
      (obj .:? "SecurityGroupIds") <*>
      (obj .:? "ServerName") <*>
      (obj .: "ServiceRoleArn") <*>
      (obj .:? "SubnetIds")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksCMServer' containing required fields as
-- arguments.
opsWorksCMServer
  :: Val Text -- ^ 'owcmsInstanceProfileArn'
  -> Val Text -- ^ 'owcmsInstanceType'
  -> Val Text -- ^ 'owcmsServiceRoleArn'
  -> OpsWorksCMServer
opsWorksCMServer instanceProfileArnarg instanceTypearg serviceRoleArnarg =
  OpsWorksCMServer
  { _opsWorksCMServerAssociatePublicIpAddress = Nothing
  , _opsWorksCMServerBackupId = Nothing
  , _opsWorksCMServerBackupRetentionCount = Nothing
  , _opsWorksCMServerDisableAutomatedBackup = Nothing
  , _opsWorksCMServerEngine = Nothing
  , _opsWorksCMServerEngineAttributes = Nothing
  , _opsWorksCMServerEngineModel = Nothing
  , _opsWorksCMServerEngineVersion = Nothing
  , _opsWorksCMServerInstanceProfileArn = instanceProfileArnarg
  , _opsWorksCMServerInstanceType = instanceTypearg
  , _opsWorksCMServerKeyPair = Nothing
  , _opsWorksCMServerPreferredBackupWindow = Nothing
  , _opsWorksCMServerPreferredMaintenanceWindow = Nothing
  , _opsWorksCMServerSecurityGroupIds = Nothing
  , _opsWorksCMServerServerName = Nothing
  , _opsWorksCMServerServiceRoleArn = serviceRoleArnarg
  , _opsWorksCMServerSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-associatepublicipaddress
owcmsAssociatePublicIpAddress :: Lens' OpsWorksCMServer (Maybe (Val Bool))
owcmsAssociatePublicIpAddress = lens _opsWorksCMServerAssociatePublicIpAddress (\s a -> s { _opsWorksCMServerAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupid
owcmsBackupId :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsBackupId = lens _opsWorksCMServerBackupId (\s a -> s { _opsWorksCMServerBackupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-backupretentioncount
owcmsBackupRetentionCount :: Lens' OpsWorksCMServer (Maybe (Val Integer))
owcmsBackupRetentionCount = lens _opsWorksCMServerBackupRetentionCount (\s a -> s { _opsWorksCMServerBackupRetentionCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-disableautomatedbackup
owcmsDisableAutomatedBackup :: Lens' OpsWorksCMServer (Maybe (Val Bool))
owcmsDisableAutomatedBackup = lens _opsWorksCMServerDisableAutomatedBackup (\s a -> s { _opsWorksCMServerDisableAutomatedBackup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engine
owcmsEngine :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsEngine = lens _opsWorksCMServerEngine (\s a -> s { _opsWorksCMServerEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineattributes
owcmsEngineAttributes :: Lens' OpsWorksCMServer (Maybe [OpsWorksCMServerEngineAttribute])
owcmsEngineAttributes = lens _opsWorksCMServerEngineAttributes (\s a -> s { _opsWorksCMServerEngineAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-enginemodel
owcmsEngineModel :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsEngineModel = lens _opsWorksCMServerEngineModel (\s a -> s { _opsWorksCMServerEngineModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-engineversion
owcmsEngineVersion :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsEngineVersion = lens _opsWorksCMServerEngineVersion (\s a -> s { _opsWorksCMServerEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instanceprofilearn
owcmsInstanceProfileArn :: Lens' OpsWorksCMServer (Val Text)
owcmsInstanceProfileArn = lens _opsWorksCMServerInstanceProfileArn (\s a -> s { _opsWorksCMServerInstanceProfileArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-instancetype
owcmsInstanceType :: Lens' OpsWorksCMServer (Val Text)
owcmsInstanceType = lens _opsWorksCMServerInstanceType (\s a -> s { _opsWorksCMServerInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-keypair
owcmsKeyPair :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsKeyPair = lens _opsWorksCMServerKeyPair (\s a -> s { _opsWorksCMServerKeyPair = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredbackupwindow
owcmsPreferredBackupWindow :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsPreferredBackupWindow = lens _opsWorksCMServerPreferredBackupWindow (\s a -> s { _opsWorksCMServerPreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-preferredmaintenancewindow
owcmsPreferredMaintenanceWindow :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsPreferredMaintenanceWindow = lens _opsWorksCMServerPreferredMaintenanceWindow (\s a -> s { _opsWorksCMServerPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-securitygroupids
owcmsSecurityGroupIds :: Lens' OpsWorksCMServer (Maybe (ValList Text))
owcmsSecurityGroupIds = lens _opsWorksCMServerSecurityGroupIds (\s a -> s { _opsWorksCMServerSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-servername
owcmsServerName :: Lens' OpsWorksCMServer (Maybe (Val Text))
owcmsServerName = lens _opsWorksCMServerServerName (\s a -> s { _opsWorksCMServerServerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-servicerolearn
owcmsServiceRoleArn :: Lens' OpsWorksCMServer (Val Text)
owcmsServiceRoleArn = lens _opsWorksCMServerServiceRoleArn (\s a -> s { _opsWorksCMServerServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworkscm-server.html#cfn-opsworkscm-server-subnetids
owcmsSubnetIds :: Lens' OpsWorksCMServer (Maybe (ValList Text))
owcmsSubnetIds = lens _opsWorksCMServerSubnetIds (\s a -> s { _opsWorksCMServerSubnetIds = a })
