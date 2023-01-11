
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSchemaConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamSchemaConfiguration. See
-- 'kinesisFirehoseDeliveryStreamSchemaConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamSchemaConfiguration =
  KinesisFirehoseDeliveryStreamSchemaConfiguration
  { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSchemaConfiguration where
  toJSON KinesisFirehoseDeliveryStreamSchemaConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CatalogId",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId
    , fmap (("DatabaseName",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName
    , fmap (("Region",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion
    , fmap (("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN
    , fmap (("TableName",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName
    , fmap (("VersionId",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamSchemaConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamSchemaConfiguration
  :: KinesisFirehoseDeliveryStreamSchemaConfiguration
kinesisFirehoseDeliveryStreamSchemaConfiguration  =
  KinesisFirehoseDeliveryStreamSchemaConfiguration
  { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId = Nothing
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName = Nothing
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion = Nothing
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN = Nothing
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName = Nothing
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-catalogid
kfdsscCatalogId :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscCatalogId = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-databasename
kfdsscDatabaseName :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscDatabaseName = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-region
kfdsscRegion :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscRegion = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-rolearn
kfdsscRoleARN :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscRoleARN = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-tablename
kfdsscTableName :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscTableName = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-versionid
kfdsscVersionId :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Maybe (Val Text))
kfdsscVersionId = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId = a })
