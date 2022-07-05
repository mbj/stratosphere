{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html

module Stratosphere.Resources.DocDBDBInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DocDBDBInstance. See 'docDBDBInstance' for
-- a more convenient constructor.
data DocDBDBInstance =
  DocDBDBInstance
  { _docDBDBInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool)
  , _docDBDBInstanceAvailabilityZone :: Maybe (Val Text)
  , _docDBDBInstanceDBClusterIdentifier :: Val Text
  , _docDBDBInstanceDBInstanceClass :: Val Text
  , _docDBDBInstanceDBInstanceIdentifier :: Maybe (Val Text)
  , _docDBDBInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _docDBDBInstanceTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties DocDBDBInstance where
  toResourceProperties DocDBDBInstance{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DocDB::DBInstance"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoMinorVersionUpgrade",) . toJSON) _docDBDBInstanceAutoMinorVersionUpgrade
        , fmap (("AvailabilityZone",) . toJSON) _docDBDBInstanceAvailabilityZone
        , (Just . ("DBClusterIdentifier",) . toJSON) _docDBDBInstanceDBClusterIdentifier
        , (Just . ("DBInstanceClass",) . toJSON) _docDBDBInstanceDBInstanceClass
        , fmap (("DBInstanceIdentifier",) . toJSON) _docDBDBInstanceDBInstanceIdentifier
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _docDBDBInstancePreferredMaintenanceWindow
        , fmap (("Tags",) . toJSON) _docDBDBInstanceTags
        ]
    }

-- | Constructor for 'DocDBDBInstance' containing required fields as
-- arguments.
docDBDBInstance
  :: Val Text -- ^ 'ddbdbiDBClusterIdentifier'
  -> Val Text -- ^ 'ddbdbiDBInstanceClass'
  -> DocDBDBInstance
docDBDBInstance dBClusterIdentifierarg dBInstanceClassarg =
  DocDBDBInstance
  { _docDBDBInstanceAutoMinorVersionUpgrade = Nothing
  , _docDBDBInstanceAvailabilityZone = Nothing
  , _docDBDBInstanceDBClusterIdentifier = dBClusterIdentifierarg
  , _docDBDBInstanceDBInstanceClass = dBInstanceClassarg
  , _docDBDBInstanceDBInstanceIdentifier = Nothing
  , _docDBDBInstancePreferredMaintenanceWindow = Nothing
  , _docDBDBInstanceTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-autominorversionupgrade
ddbdbiAutoMinorVersionUpgrade :: Lens' DocDBDBInstance (Maybe (Val Bool))
ddbdbiAutoMinorVersionUpgrade = lens _docDBDBInstanceAutoMinorVersionUpgrade (\s a -> s { _docDBDBInstanceAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-availabilityzone
ddbdbiAvailabilityZone :: Lens' DocDBDBInstance (Maybe (Val Text))
ddbdbiAvailabilityZone = lens _docDBDBInstanceAvailabilityZone (\s a -> s { _docDBDBInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbclusteridentifier
ddbdbiDBClusterIdentifier :: Lens' DocDBDBInstance (Val Text)
ddbdbiDBClusterIdentifier = lens _docDBDBInstanceDBClusterIdentifier (\s a -> s { _docDBDBInstanceDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceclass
ddbdbiDBInstanceClass :: Lens' DocDBDBInstance (Val Text)
ddbdbiDBInstanceClass = lens _docDBDBInstanceDBInstanceClass (\s a -> s { _docDBDBInstanceDBInstanceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-dbinstanceidentifier
ddbdbiDBInstanceIdentifier :: Lens' DocDBDBInstance (Maybe (Val Text))
ddbdbiDBInstanceIdentifier = lens _docDBDBInstanceDBInstanceIdentifier (\s a -> s { _docDBDBInstanceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-preferredmaintenancewindow
ddbdbiPreferredMaintenanceWindow :: Lens' DocDBDBInstance (Maybe (Val Text))
ddbdbiPreferredMaintenanceWindow = lens _docDBDBInstancePreferredMaintenanceWindow (\s a -> s { _docDBDBInstancePreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbinstance.html#cfn-docdb-dbinstance-tags
ddbdbiTags :: Lens' DocDBDBInstance (Maybe [Tag])
ddbdbiTags = lens _docDBDBInstanceTags (\s a -> s { _docDBDBInstanceTags = a })
