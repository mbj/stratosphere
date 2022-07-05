{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html

module Stratosphere.Resources.DMSEndpoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DMSEndpointDynamoDbSettings
import Stratosphere.ResourceProperties.DMSEndpointElasticsearchSettings
import Stratosphere.ResourceProperties.DMSEndpointKafkaSettings
import Stratosphere.ResourceProperties.DMSEndpointKinesisSettings
import Stratosphere.ResourceProperties.DMSEndpointMongoDbSettings
import Stratosphere.ResourceProperties.DMSEndpointNeptuneSettings
import Stratosphere.ResourceProperties.DMSEndpointS3Settings
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DMSEndpoint. See 'dmsEndpoint' for a more
-- convenient constructor.
data DMSEndpoint =
  DMSEndpoint
  { _dMSEndpointCertificateArn :: Maybe (Val Text)
  , _dMSEndpointDatabaseName :: Maybe (Val Text)
  , _dMSEndpointDynamoDbSettings :: Maybe DMSEndpointDynamoDbSettings
  , _dMSEndpointElasticsearchSettings :: Maybe DMSEndpointElasticsearchSettings
  , _dMSEndpointEndpointIdentifier :: Maybe (Val Text)
  , _dMSEndpointEndpointType :: Val Text
  , _dMSEndpointEngineName :: Val Text
  , _dMSEndpointExtraConnectionAttributes :: Maybe (Val Text)
  , _dMSEndpointKafkaSettings :: Maybe DMSEndpointKafkaSettings
  , _dMSEndpointKinesisSettings :: Maybe DMSEndpointKinesisSettings
  , _dMSEndpointKmsKeyId :: Maybe (Val Text)
  , _dMSEndpointMongoDbSettings :: Maybe DMSEndpointMongoDbSettings
  , _dMSEndpointNeptuneSettings :: Maybe DMSEndpointNeptuneSettings
  , _dMSEndpointPassword :: Maybe (Val Text)
  , _dMSEndpointPort :: Maybe (Val Integer)
  , _dMSEndpointS3Settings :: Maybe DMSEndpointS3Settings
  , _dMSEndpointServerName :: Maybe (Val Text)
  , _dMSEndpointSslMode :: Maybe (Val Text)
  , _dMSEndpointTags :: Maybe [Tag]
  , _dMSEndpointUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties DMSEndpoint where
  toResourceProperties DMSEndpoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DMS::Endpoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CertificateArn",) . toJSON) _dMSEndpointCertificateArn
        , fmap (("DatabaseName",) . toJSON) _dMSEndpointDatabaseName
        , fmap (("DynamoDbSettings",) . toJSON) _dMSEndpointDynamoDbSettings
        , fmap (("ElasticsearchSettings",) . toJSON) _dMSEndpointElasticsearchSettings
        , fmap (("EndpointIdentifier",) . toJSON) _dMSEndpointEndpointIdentifier
        , (Just . ("EndpointType",) . toJSON) _dMSEndpointEndpointType
        , (Just . ("EngineName",) . toJSON) _dMSEndpointEngineName
        , fmap (("ExtraConnectionAttributes",) . toJSON) _dMSEndpointExtraConnectionAttributes
        , fmap (("KafkaSettings",) . toJSON) _dMSEndpointKafkaSettings
        , fmap (("KinesisSettings",) . toJSON) _dMSEndpointKinesisSettings
        , fmap (("KmsKeyId",) . toJSON) _dMSEndpointKmsKeyId
        , fmap (("MongoDbSettings",) . toJSON) _dMSEndpointMongoDbSettings
        , fmap (("NeptuneSettings",) . toJSON) _dMSEndpointNeptuneSettings
        , fmap (("Password",) . toJSON) _dMSEndpointPassword
        , fmap (("Port",) . toJSON) _dMSEndpointPort
        , fmap (("S3Settings",) . toJSON) _dMSEndpointS3Settings
        , fmap (("ServerName",) . toJSON) _dMSEndpointServerName
        , fmap (("SslMode",) . toJSON) _dMSEndpointSslMode
        , fmap (("Tags",) . toJSON) _dMSEndpointTags
        , fmap (("Username",) . toJSON) _dMSEndpointUsername
        ]
    }

-- | Constructor for 'DMSEndpoint' containing required fields as arguments.
dmsEndpoint
  :: Val Text -- ^ 'dmseEndpointType'
  -> Val Text -- ^ 'dmseEngineName'
  -> DMSEndpoint
dmsEndpoint endpointTypearg engineNamearg =
  DMSEndpoint
  { _dMSEndpointCertificateArn = Nothing
  , _dMSEndpointDatabaseName = Nothing
  , _dMSEndpointDynamoDbSettings = Nothing
  , _dMSEndpointElasticsearchSettings = Nothing
  , _dMSEndpointEndpointIdentifier = Nothing
  , _dMSEndpointEndpointType = endpointTypearg
  , _dMSEndpointEngineName = engineNamearg
  , _dMSEndpointExtraConnectionAttributes = Nothing
  , _dMSEndpointKafkaSettings = Nothing
  , _dMSEndpointKinesisSettings = Nothing
  , _dMSEndpointKmsKeyId = Nothing
  , _dMSEndpointMongoDbSettings = Nothing
  , _dMSEndpointNeptuneSettings = Nothing
  , _dMSEndpointPassword = Nothing
  , _dMSEndpointPort = Nothing
  , _dMSEndpointS3Settings = Nothing
  , _dMSEndpointServerName = Nothing
  , _dMSEndpointSslMode = Nothing
  , _dMSEndpointTags = Nothing
  , _dMSEndpointUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-certificatearn
dmseCertificateArn :: Lens' DMSEndpoint (Maybe (Val Text))
dmseCertificateArn = lens _dMSEndpointCertificateArn (\s a -> s { _dMSEndpointCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-databasename
dmseDatabaseName :: Lens' DMSEndpoint (Maybe (Val Text))
dmseDatabaseName = lens _dMSEndpointDatabaseName (\s a -> s { _dMSEndpointDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-dynamodbsettings
dmseDynamoDbSettings :: Lens' DMSEndpoint (Maybe DMSEndpointDynamoDbSettings)
dmseDynamoDbSettings = lens _dMSEndpointDynamoDbSettings (\s a -> s { _dMSEndpointDynamoDbSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-elasticsearchsettings
dmseElasticsearchSettings :: Lens' DMSEndpoint (Maybe DMSEndpointElasticsearchSettings)
dmseElasticsearchSettings = lens _dMSEndpointElasticsearchSettings (\s a -> s { _dMSEndpointElasticsearchSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-endpointidentifier
dmseEndpointIdentifier :: Lens' DMSEndpoint (Maybe (Val Text))
dmseEndpointIdentifier = lens _dMSEndpointEndpointIdentifier (\s a -> s { _dMSEndpointEndpointIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-endpointtype
dmseEndpointType :: Lens' DMSEndpoint (Val Text)
dmseEndpointType = lens _dMSEndpointEndpointType (\s a -> s { _dMSEndpointEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-enginename
dmseEngineName :: Lens' DMSEndpoint (Val Text)
dmseEngineName = lens _dMSEndpointEngineName (\s a -> s { _dMSEndpointEngineName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-extraconnectionattributes
dmseExtraConnectionAttributes :: Lens' DMSEndpoint (Maybe (Val Text))
dmseExtraConnectionAttributes = lens _dMSEndpointExtraConnectionAttributes (\s a -> s { _dMSEndpointExtraConnectionAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-kafkasettings
dmseKafkaSettings :: Lens' DMSEndpoint (Maybe DMSEndpointKafkaSettings)
dmseKafkaSettings = lens _dMSEndpointKafkaSettings (\s a -> s { _dMSEndpointKafkaSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-kinesissettings
dmseKinesisSettings :: Lens' DMSEndpoint (Maybe DMSEndpointKinesisSettings)
dmseKinesisSettings = lens _dMSEndpointKinesisSettings (\s a -> s { _dMSEndpointKinesisSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-kmskeyid
dmseKmsKeyId :: Lens' DMSEndpoint (Maybe (Val Text))
dmseKmsKeyId = lens _dMSEndpointKmsKeyId (\s a -> s { _dMSEndpointKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-mongodbsettings
dmseMongoDbSettings :: Lens' DMSEndpoint (Maybe DMSEndpointMongoDbSettings)
dmseMongoDbSettings = lens _dMSEndpointMongoDbSettings (\s a -> s { _dMSEndpointMongoDbSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-neptunesettings
dmseNeptuneSettings :: Lens' DMSEndpoint (Maybe DMSEndpointNeptuneSettings)
dmseNeptuneSettings = lens _dMSEndpointNeptuneSettings (\s a -> s { _dMSEndpointNeptuneSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-password
dmsePassword :: Lens' DMSEndpoint (Maybe (Val Text))
dmsePassword = lens _dMSEndpointPassword (\s a -> s { _dMSEndpointPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-port
dmsePort :: Lens' DMSEndpoint (Maybe (Val Integer))
dmsePort = lens _dMSEndpointPort (\s a -> s { _dMSEndpointPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-s3settings
dmseS3Settings :: Lens' DMSEndpoint (Maybe DMSEndpointS3Settings)
dmseS3Settings = lens _dMSEndpointS3Settings (\s a -> s { _dMSEndpointS3Settings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-servername
dmseServerName :: Lens' DMSEndpoint (Maybe (Val Text))
dmseServerName = lens _dMSEndpointServerName (\s a -> s { _dMSEndpointServerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-sslmode
dmseSslMode :: Lens' DMSEndpoint (Maybe (Val Text))
dmseSslMode = lens _dMSEndpointSslMode (\s a -> s { _dMSEndpointSslMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-tags
dmseTags :: Lens' DMSEndpoint (Maybe [Tag])
dmseTags = lens _dMSEndpointTags (\s a -> s { _dMSEndpointTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-endpoint.html#cfn-dms-endpoint-username
dmseUsername :: Lens' DMSEndpoint (Maybe (Val Text))
dmseUsername = lens _dMSEndpointUsername (\s a -> s { _dMSEndpointUsername = a })
