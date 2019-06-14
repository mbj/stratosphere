{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSchemaConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamSchemaConfiguration. See
-- 'kinesisFirehoseDeliveryStreamSchemaConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamSchemaConfiguration =
  KinesisFirehoseDeliveryStreamSchemaConfiguration
  { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId :: Val Text
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName :: Val Text
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion :: Val Text
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN :: Val Text
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName :: Val Text
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSchemaConfiguration where
  toJSON KinesisFirehoseDeliveryStreamSchemaConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("CatalogId",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId
    , (Just . ("DatabaseName",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName
    , (Just . ("Region",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion
    , (Just . ("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN
    , (Just . ("TableName",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName
    , (Just . ("VersionId",) . toJSON) _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamSchemaConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamSchemaConfiguration
  :: Val Text -- ^ 'kfdsscCatalogId'
  -> Val Text -- ^ 'kfdsscDatabaseName'
  -> Val Text -- ^ 'kfdsscRegion'
  -> Val Text -- ^ 'kfdsscRoleARN'
  -> Val Text -- ^ 'kfdsscTableName'
  -> Val Text -- ^ 'kfdsscVersionId'
  -> KinesisFirehoseDeliveryStreamSchemaConfiguration
kinesisFirehoseDeliveryStreamSchemaConfiguration catalogIdarg databaseNamearg regionarg roleARNarg tableNamearg versionIdarg =
  KinesisFirehoseDeliveryStreamSchemaConfiguration
  { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId = catalogIdarg
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName = databaseNamearg
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion = regionarg
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN = roleARNarg
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName = tableNamearg
  , _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId = versionIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-catalogid
kfdsscCatalogId :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscCatalogId = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-databasename
kfdsscDatabaseName :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscDatabaseName = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-region
kfdsscRegion :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscRegion = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-rolearn
kfdsscRoleARN :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscRoleARN = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-tablename
kfdsscTableName :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscTableName = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-versionid
kfdsscVersionId :: Lens' KinesisFirehoseDeliveryStreamSchemaConfiguration (Val Text)
kfdsscVersionId = lens _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId (\s a -> s { _kinesisFirehoseDeliveryStreamSchemaConfigurationVersionId = a })
