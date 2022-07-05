{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html

module Stratosphere.Resources.NeptuneDBInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NeptuneDBInstance. See 'neptuneDBInstance'
-- for a more convenient constructor.
data NeptuneDBInstance =
  NeptuneDBInstance
  { _neptuneDBInstanceAllowMajorVersionUpgrade :: Maybe (Val Bool)
  , _neptuneDBInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool)
  , _neptuneDBInstanceAvailabilityZone :: Maybe (Val Text)
  , _neptuneDBInstanceDBClusterIdentifier :: Maybe (Val Text)
  , _neptuneDBInstanceDBInstanceClass :: Val Text
  , _neptuneDBInstanceDBInstanceIdentifier :: Maybe (Val Text)
  , _neptuneDBInstanceDBParameterGroupName :: Maybe (Val Text)
  , _neptuneDBInstanceDBSnapshotIdentifier :: Maybe (Val Text)
  , _neptuneDBInstanceDBSubnetGroupName :: Maybe (Val Text)
  , _neptuneDBInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _neptuneDBInstanceTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties NeptuneDBInstance where
  toResourceProperties NeptuneDBInstance{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Neptune::DBInstance"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllowMajorVersionUpgrade",) . toJSON) _neptuneDBInstanceAllowMajorVersionUpgrade
        , fmap (("AutoMinorVersionUpgrade",) . toJSON) _neptuneDBInstanceAutoMinorVersionUpgrade
        , fmap (("AvailabilityZone",) . toJSON) _neptuneDBInstanceAvailabilityZone
        , fmap (("DBClusterIdentifier",) . toJSON) _neptuneDBInstanceDBClusterIdentifier
        , (Just . ("DBInstanceClass",) . toJSON) _neptuneDBInstanceDBInstanceClass
        , fmap (("DBInstanceIdentifier",) . toJSON) _neptuneDBInstanceDBInstanceIdentifier
        , fmap (("DBParameterGroupName",) . toJSON) _neptuneDBInstanceDBParameterGroupName
        , fmap (("DBSnapshotIdentifier",) . toJSON) _neptuneDBInstanceDBSnapshotIdentifier
        , fmap (("DBSubnetGroupName",) . toJSON) _neptuneDBInstanceDBSubnetGroupName
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _neptuneDBInstancePreferredMaintenanceWindow
        , fmap (("Tags",) . toJSON) _neptuneDBInstanceTags
        ]
    }

-- | Constructor for 'NeptuneDBInstance' containing required fields as
-- arguments.
neptuneDBInstance
  :: Val Text -- ^ 'ndbiDBInstanceClass'
  -> NeptuneDBInstance
neptuneDBInstance dBInstanceClassarg =
  NeptuneDBInstance
  { _neptuneDBInstanceAllowMajorVersionUpgrade = Nothing
  , _neptuneDBInstanceAutoMinorVersionUpgrade = Nothing
  , _neptuneDBInstanceAvailabilityZone = Nothing
  , _neptuneDBInstanceDBClusterIdentifier = Nothing
  , _neptuneDBInstanceDBInstanceClass = dBInstanceClassarg
  , _neptuneDBInstanceDBInstanceIdentifier = Nothing
  , _neptuneDBInstanceDBParameterGroupName = Nothing
  , _neptuneDBInstanceDBSnapshotIdentifier = Nothing
  , _neptuneDBInstanceDBSubnetGroupName = Nothing
  , _neptuneDBInstancePreferredMaintenanceWindow = Nothing
  , _neptuneDBInstanceTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-allowmajorversionupgrade
ndbiAllowMajorVersionUpgrade :: Lens' NeptuneDBInstance (Maybe (Val Bool))
ndbiAllowMajorVersionUpgrade = lens _neptuneDBInstanceAllowMajorVersionUpgrade (\s a -> s { _neptuneDBInstanceAllowMajorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-autominorversionupgrade
ndbiAutoMinorVersionUpgrade :: Lens' NeptuneDBInstance (Maybe (Val Bool))
ndbiAutoMinorVersionUpgrade = lens _neptuneDBInstanceAutoMinorVersionUpgrade (\s a -> s { _neptuneDBInstanceAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-availabilityzone
ndbiAvailabilityZone :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiAvailabilityZone = lens _neptuneDBInstanceAvailabilityZone (\s a -> s { _neptuneDBInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbclusteridentifier
ndbiDBClusterIdentifier :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiDBClusterIdentifier = lens _neptuneDBInstanceDBClusterIdentifier (\s a -> s { _neptuneDBInstanceDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceclass
ndbiDBInstanceClass :: Lens' NeptuneDBInstance (Val Text)
ndbiDBInstanceClass = lens _neptuneDBInstanceDBInstanceClass (\s a -> s { _neptuneDBInstanceDBInstanceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceidentifier
ndbiDBInstanceIdentifier :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiDBInstanceIdentifier = lens _neptuneDBInstanceDBInstanceIdentifier (\s a -> s { _neptuneDBInstanceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbparametergroupname
ndbiDBParameterGroupName :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiDBParameterGroupName = lens _neptuneDBInstanceDBParameterGroupName (\s a -> s { _neptuneDBInstanceDBParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsnapshotidentifier
ndbiDBSnapshotIdentifier :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiDBSnapshotIdentifier = lens _neptuneDBInstanceDBSnapshotIdentifier (\s a -> s { _neptuneDBInstanceDBSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsubnetgroupname
ndbiDBSubnetGroupName :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiDBSubnetGroupName = lens _neptuneDBInstanceDBSubnetGroupName (\s a -> s { _neptuneDBInstanceDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-preferredmaintenancewindow
ndbiPreferredMaintenanceWindow :: Lens' NeptuneDBInstance (Maybe (Val Text))
ndbiPreferredMaintenanceWindow = lens _neptuneDBInstancePreferredMaintenanceWindow (\s a -> s { _neptuneDBInstancePreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-tags
ndbiTags :: Lens' NeptuneDBInstance (Maybe [Tag])
ndbiTags = lens _neptuneDBInstanceTags (\s a -> s { _neptuneDBInstanceTags = a })
