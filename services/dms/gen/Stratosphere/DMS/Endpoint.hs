module Stratosphere.DMS.Endpoint (
        module Exports, Endpoint(..), mkEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.DocDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.DynamoDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.ElasticsearchSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.GcpMySQLSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.IbmDb2SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.KafkaSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.KinesisSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.MicrosoftSqlServerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.MongoDbSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.MySqlSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.NeptuneSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.OracleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.PostgreSqlSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.RedisSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.RedshiftSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.S3SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DMS.Endpoint.SybaseSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Endpoint
  = Endpoint {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
              databaseName :: (Prelude.Maybe (Value Prelude.Text)),
              docDbSettings :: (Prelude.Maybe DocDbSettingsProperty),
              dynamoDbSettings :: (Prelude.Maybe DynamoDbSettingsProperty),
              elasticsearchSettings :: (Prelude.Maybe ElasticsearchSettingsProperty),
              endpointIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
              endpointType :: (Value Prelude.Text),
              engineName :: (Value Prelude.Text),
              extraConnectionAttributes :: (Prelude.Maybe (Value Prelude.Text)),
              gcpMySQLSettings :: (Prelude.Maybe GcpMySQLSettingsProperty),
              ibmDb2Settings :: (Prelude.Maybe IbmDb2SettingsProperty),
              kafkaSettings :: (Prelude.Maybe KafkaSettingsProperty),
              kinesisSettings :: (Prelude.Maybe KinesisSettingsProperty),
              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
              microsoftSqlServerSettings :: (Prelude.Maybe MicrosoftSqlServerSettingsProperty),
              mongoDbSettings :: (Prelude.Maybe MongoDbSettingsProperty),
              mySqlSettings :: (Prelude.Maybe MySqlSettingsProperty),
              neptuneSettings :: (Prelude.Maybe NeptuneSettingsProperty),
              oracleSettings :: (Prelude.Maybe OracleSettingsProperty),
              password :: (Prelude.Maybe (Value Prelude.Text)),
              port :: (Prelude.Maybe (Value Prelude.Integer)),
              postgreSqlSettings :: (Prelude.Maybe PostgreSqlSettingsProperty),
              redisSettings :: (Prelude.Maybe RedisSettingsProperty),
              redshiftSettings :: (Prelude.Maybe RedshiftSettingsProperty),
              resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
              s3Settings :: (Prelude.Maybe S3SettingsProperty),
              serverName :: (Prelude.Maybe (Value Prelude.Text)),
              sslMode :: (Prelude.Maybe (Value Prelude.Text)),
              sybaseSettings :: (Prelude.Maybe SybaseSettingsProperty),
              tags :: (Prelude.Maybe [Tag]),
              username :: (Prelude.Maybe (Value Prelude.Text))}
mkEndpoint :: Value Prelude.Text -> Value Prelude.Text -> Endpoint
mkEndpoint endpointType engineName
  = Endpoint
      {endpointType = endpointType, engineName = engineName,
       certificateArn = Prelude.Nothing, databaseName = Prelude.Nothing,
       docDbSettings = Prelude.Nothing,
       dynamoDbSettings = Prelude.Nothing,
       elasticsearchSettings = Prelude.Nothing,
       endpointIdentifier = Prelude.Nothing,
       extraConnectionAttributes = Prelude.Nothing,
       gcpMySQLSettings = Prelude.Nothing,
       ibmDb2Settings = Prelude.Nothing, kafkaSettings = Prelude.Nothing,
       kinesisSettings = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       microsoftSqlServerSettings = Prelude.Nothing,
       mongoDbSettings = Prelude.Nothing, mySqlSettings = Prelude.Nothing,
       neptuneSettings = Prelude.Nothing,
       oracleSettings = Prelude.Nothing, password = Prelude.Nothing,
       port = Prelude.Nothing, postgreSqlSettings = Prelude.Nothing,
       redisSettings = Prelude.Nothing,
       redshiftSettings = Prelude.Nothing,
       resourceIdentifier = Prelude.Nothing, s3Settings = Prelude.Nothing,
       serverName = Prelude.Nothing, sslMode = Prelude.Nothing,
       sybaseSettings = Prelude.Nothing, tags = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties Endpoint where
  toResourceProperties Endpoint {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointType" JSON..= endpointType,
                            "EngineName" JSON..= engineName]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                               (JSON..=) "DocDbSettings" Prelude.<$> docDbSettings,
                               (JSON..=) "DynamoDbSettings" Prelude.<$> dynamoDbSettings,
                               (JSON..=) "ElasticsearchSettings"
                                 Prelude.<$> elasticsearchSettings,
                               (JSON..=) "EndpointIdentifier" Prelude.<$> endpointIdentifier,
                               (JSON..=) "ExtraConnectionAttributes"
                                 Prelude.<$> extraConnectionAttributes,
                               (JSON..=) "GcpMySQLSettings" Prelude.<$> gcpMySQLSettings,
                               (JSON..=) "IbmDb2Settings" Prelude.<$> ibmDb2Settings,
                               (JSON..=) "KafkaSettings" Prelude.<$> kafkaSettings,
                               (JSON..=) "KinesisSettings" Prelude.<$> kinesisSettings,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MicrosoftSqlServerSettings"
                                 Prelude.<$> microsoftSqlServerSettings,
                               (JSON..=) "MongoDbSettings" Prelude.<$> mongoDbSettings,
                               (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
                               (JSON..=) "NeptuneSettings" Prelude.<$> neptuneSettings,
                               (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
                               (JSON..=) "Password" Prelude.<$> password,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings,
                               (JSON..=) "RedisSettings" Prelude.<$> redisSettings,
                               (JSON..=) "RedshiftSettings" Prelude.<$> redshiftSettings,
                               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                               (JSON..=) "S3Settings" Prelude.<$> s3Settings,
                               (JSON..=) "ServerName" Prelude.<$> serverName,
                               (JSON..=) "SslMode" Prelude.<$> sslMode,
                               (JSON..=) "SybaseSettings" Prelude.<$> sybaseSettings,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Username" Prelude.<$> username]))}
instance JSON.ToJSON Endpoint where
  toJSON Endpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointType" JSON..= endpointType,
               "EngineName" JSON..= engineName]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                  (JSON..=) "DocDbSettings" Prelude.<$> docDbSettings,
                  (JSON..=) "DynamoDbSettings" Prelude.<$> dynamoDbSettings,
                  (JSON..=) "ElasticsearchSettings"
                    Prelude.<$> elasticsearchSettings,
                  (JSON..=) "EndpointIdentifier" Prelude.<$> endpointIdentifier,
                  (JSON..=) "ExtraConnectionAttributes"
                    Prelude.<$> extraConnectionAttributes,
                  (JSON..=) "GcpMySQLSettings" Prelude.<$> gcpMySQLSettings,
                  (JSON..=) "IbmDb2Settings" Prelude.<$> ibmDb2Settings,
                  (JSON..=) "KafkaSettings" Prelude.<$> kafkaSettings,
                  (JSON..=) "KinesisSettings" Prelude.<$> kinesisSettings,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MicrosoftSqlServerSettings"
                    Prelude.<$> microsoftSqlServerSettings,
                  (JSON..=) "MongoDbSettings" Prelude.<$> mongoDbSettings,
                  (JSON..=) "MySqlSettings" Prelude.<$> mySqlSettings,
                  (JSON..=) "NeptuneSettings" Prelude.<$> neptuneSettings,
                  (JSON..=) "OracleSettings" Prelude.<$> oracleSettings,
                  (JSON..=) "Password" Prelude.<$> password,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PostgreSqlSettings" Prelude.<$> postgreSqlSettings,
                  (JSON..=) "RedisSettings" Prelude.<$> redisSettings,
                  (JSON..=) "RedshiftSettings" Prelude.<$> redshiftSettings,
                  (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                  (JSON..=) "S3Settings" Prelude.<$> s3Settings,
                  (JSON..=) "ServerName" Prelude.<$> serverName,
                  (JSON..=) "SslMode" Prelude.<$> sslMode,
                  (JSON..=) "SybaseSettings" Prelude.<$> sybaseSettings,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Username" Prelude.<$> username])))
instance Property "CertificateArn" Endpoint where
  type PropertyType "CertificateArn" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {certificateArn = Prelude.pure newValue, ..}
instance Property "DatabaseName" Endpoint where
  type PropertyType "DatabaseName" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {databaseName = Prelude.pure newValue, ..}
instance Property "DocDbSettings" Endpoint where
  type PropertyType "DocDbSettings" Endpoint = DocDbSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {docDbSettings = Prelude.pure newValue, ..}
instance Property "DynamoDbSettings" Endpoint where
  type PropertyType "DynamoDbSettings" Endpoint = DynamoDbSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {dynamoDbSettings = Prelude.pure newValue, ..}
instance Property "ElasticsearchSettings" Endpoint where
  type PropertyType "ElasticsearchSettings" Endpoint = ElasticsearchSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {elasticsearchSettings = Prelude.pure newValue, ..}
instance Property "EndpointIdentifier" Endpoint where
  type PropertyType "EndpointIdentifier" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {endpointIdentifier = Prelude.pure newValue, ..}
instance Property "EndpointType" Endpoint where
  type PropertyType "EndpointType" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {endpointType = newValue, ..}
instance Property "EngineName" Endpoint where
  type PropertyType "EngineName" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {engineName = newValue, ..}
instance Property "ExtraConnectionAttributes" Endpoint where
  type PropertyType "ExtraConnectionAttributes" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {extraConnectionAttributes = Prelude.pure newValue, ..}
instance Property "GcpMySQLSettings" Endpoint where
  type PropertyType "GcpMySQLSettings" Endpoint = GcpMySQLSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {gcpMySQLSettings = Prelude.pure newValue, ..}
instance Property "IbmDb2Settings" Endpoint where
  type PropertyType "IbmDb2Settings" Endpoint = IbmDb2SettingsProperty
  set newValue Endpoint {..}
    = Endpoint {ibmDb2Settings = Prelude.pure newValue, ..}
instance Property "KafkaSettings" Endpoint where
  type PropertyType "KafkaSettings" Endpoint = KafkaSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {kafkaSettings = Prelude.pure newValue, ..}
instance Property "KinesisSettings" Endpoint where
  type PropertyType "KinesisSettings" Endpoint = KinesisSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {kinesisSettings = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Endpoint where
  type PropertyType "KmsKeyId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MicrosoftSqlServerSettings" Endpoint where
  type PropertyType "MicrosoftSqlServerSettings" Endpoint = MicrosoftSqlServerSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {microsoftSqlServerSettings = Prelude.pure newValue, ..}
instance Property "MongoDbSettings" Endpoint where
  type PropertyType "MongoDbSettings" Endpoint = MongoDbSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {mongoDbSettings = Prelude.pure newValue, ..}
instance Property "MySqlSettings" Endpoint where
  type PropertyType "MySqlSettings" Endpoint = MySqlSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {mySqlSettings = Prelude.pure newValue, ..}
instance Property "NeptuneSettings" Endpoint where
  type PropertyType "NeptuneSettings" Endpoint = NeptuneSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {neptuneSettings = Prelude.pure newValue, ..}
instance Property "OracleSettings" Endpoint where
  type PropertyType "OracleSettings" Endpoint = OracleSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {oracleSettings = Prelude.pure newValue, ..}
instance Property "Password" Endpoint where
  type PropertyType "Password" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {password = Prelude.pure newValue, ..}
instance Property "Port" Endpoint where
  type PropertyType "Port" Endpoint = Value Prelude.Integer
  set newValue Endpoint {..}
    = Endpoint {port = Prelude.pure newValue, ..}
instance Property "PostgreSqlSettings" Endpoint where
  type PropertyType "PostgreSqlSettings" Endpoint = PostgreSqlSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {postgreSqlSettings = Prelude.pure newValue, ..}
instance Property "RedisSettings" Endpoint where
  type PropertyType "RedisSettings" Endpoint = RedisSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {redisSettings = Prelude.pure newValue, ..}
instance Property "RedshiftSettings" Endpoint where
  type PropertyType "RedshiftSettings" Endpoint = RedshiftSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {redshiftSettings = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" Endpoint where
  type PropertyType "ResourceIdentifier" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "S3Settings" Endpoint where
  type PropertyType "S3Settings" Endpoint = S3SettingsProperty
  set newValue Endpoint {..}
    = Endpoint {s3Settings = Prelude.pure newValue, ..}
instance Property "ServerName" Endpoint where
  type PropertyType "ServerName" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {serverName = Prelude.pure newValue, ..}
instance Property "SslMode" Endpoint where
  type PropertyType "SslMode" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {sslMode = Prelude.pure newValue, ..}
instance Property "SybaseSettings" Endpoint where
  type PropertyType "SybaseSettings" Endpoint = SybaseSettingsProperty
  set newValue Endpoint {..}
    = Endpoint {sybaseSettings = Prelude.pure newValue, ..}
instance Property "Tags" Endpoint where
  type PropertyType "Tags" Endpoint = [Tag]
  set newValue Endpoint {..}
    = Endpoint {tags = Prelude.pure newValue, ..}
instance Property "Username" Endpoint where
  type PropertyType "Username" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {username = Prelude.pure newValue, ..}