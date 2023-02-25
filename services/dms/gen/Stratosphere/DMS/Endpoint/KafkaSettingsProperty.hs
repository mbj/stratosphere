module Stratosphere.DMS.Endpoint.KafkaSettingsProperty (
        KafkaSettingsProperty(..), mkKafkaSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaSettingsProperty
  = KafkaSettingsProperty {broker :: (Prelude.Maybe (Value Prelude.Text)),
                           includeControlDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                           includeNullAndEmpty :: (Prelude.Maybe (Value Prelude.Bool)),
                           includePartitionValue :: (Prelude.Maybe (Value Prelude.Bool)),
                           includeTableAlterOperations :: (Prelude.Maybe (Value Prelude.Bool)),
                           includeTransactionDetails :: (Prelude.Maybe (Value Prelude.Bool)),
                           messageFormat :: (Prelude.Maybe (Value Prelude.Text)),
                           messageMaxBytes :: (Prelude.Maybe (Value Prelude.Integer)),
                           noHexPrefix :: (Prelude.Maybe (Value Prelude.Bool)),
                           partitionIncludeSchemaTable :: (Prelude.Maybe (Value Prelude.Bool)),
                           saslPassword :: (Prelude.Maybe (Value Prelude.Text)),
                           saslUserName :: (Prelude.Maybe (Value Prelude.Text)),
                           securityProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                           sslCaCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           sslClientCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                           sslClientKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                           sslClientKeyPassword :: (Prelude.Maybe (Value Prelude.Text)),
                           topic :: (Prelude.Maybe (Value Prelude.Text))}
mkKafkaSettingsProperty :: KafkaSettingsProperty
mkKafkaSettingsProperty
  = KafkaSettingsProperty
      {broker = Prelude.Nothing, includeControlDetails = Prelude.Nothing,
       includeNullAndEmpty = Prelude.Nothing,
       includePartitionValue = Prelude.Nothing,
       includeTableAlterOperations = Prelude.Nothing,
       includeTransactionDetails = Prelude.Nothing,
       messageFormat = Prelude.Nothing, messageMaxBytes = Prelude.Nothing,
       noHexPrefix = Prelude.Nothing,
       partitionIncludeSchemaTable = Prelude.Nothing,
       saslPassword = Prelude.Nothing, saslUserName = Prelude.Nothing,
       securityProtocol = Prelude.Nothing,
       sslCaCertificateArn = Prelude.Nothing,
       sslClientCertificateArn = Prelude.Nothing,
       sslClientKeyArn = Prelude.Nothing,
       sslClientKeyPassword = Prelude.Nothing, topic = Prelude.Nothing}
instance ToResourceProperties KafkaSettingsProperty where
  toResourceProperties KafkaSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.KafkaSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Broker" Prelude.<$> broker,
                            (JSON..=) "IncludeControlDetails"
                              Prelude.<$> includeControlDetails,
                            (JSON..=) "IncludeNullAndEmpty" Prelude.<$> includeNullAndEmpty,
                            (JSON..=) "IncludePartitionValue"
                              Prelude.<$> includePartitionValue,
                            (JSON..=) "IncludeTableAlterOperations"
                              Prelude.<$> includeTableAlterOperations,
                            (JSON..=) "IncludeTransactionDetails"
                              Prelude.<$> includeTransactionDetails,
                            (JSON..=) "MessageFormat" Prelude.<$> messageFormat,
                            (JSON..=) "MessageMaxBytes" Prelude.<$> messageMaxBytes,
                            (JSON..=) "NoHexPrefix" Prelude.<$> noHexPrefix,
                            (JSON..=) "PartitionIncludeSchemaTable"
                              Prelude.<$> partitionIncludeSchemaTable,
                            (JSON..=) "SaslPassword" Prelude.<$> saslPassword,
                            (JSON..=) "SaslUserName" Prelude.<$> saslUserName,
                            (JSON..=) "SecurityProtocol" Prelude.<$> securityProtocol,
                            (JSON..=) "SslCaCertificateArn" Prelude.<$> sslCaCertificateArn,
                            (JSON..=) "SslClientCertificateArn"
                              Prelude.<$> sslClientCertificateArn,
                            (JSON..=) "SslClientKeyArn" Prelude.<$> sslClientKeyArn,
                            (JSON..=) "SslClientKeyPassword" Prelude.<$> sslClientKeyPassword,
                            (JSON..=) "Topic" Prelude.<$> topic])}
instance JSON.ToJSON KafkaSettingsProperty where
  toJSON KafkaSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Broker" Prelude.<$> broker,
               (JSON..=) "IncludeControlDetails"
                 Prelude.<$> includeControlDetails,
               (JSON..=) "IncludeNullAndEmpty" Prelude.<$> includeNullAndEmpty,
               (JSON..=) "IncludePartitionValue"
                 Prelude.<$> includePartitionValue,
               (JSON..=) "IncludeTableAlterOperations"
                 Prelude.<$> includeTableAlterOperations,
               (JSON..=) "IncludeTransactionDetails"
                 Prelude.<$> includeTransactionDetails,
               (JSON..=) "MessageFormat" Prelude.<$> messageFormat,
               (JSON..=) "MessageMaxBytes" Prelude.<$> messageMaxBytes,
               (JSON..=) "NoHexPrefix" Prelude.<$> noHexPrefix,
               (JSON..=) "PartitionIncludeSchemaTable"
                 Prelude.<$> partitionIncludeSchemaTable,
               (JSON..=) "SaslPassword" Prelude.<$> saslPassword,
               (JSON..=) "SaslUserName" Prelude.<$> saslUserName,
               (JSON..=) "SecurityProtocol" Prelude.<$> securityProtocol,
               (JSON..=) "SslCaCertificateArn" Prelude.<$> sslCaCertificateArn,
               (JSON..=) "SslClientCertificateArn"
                 Prelude.<$> sslClientCertificateArn,
               (JSON..=) "SslClientKeyArn" Prelude.<$> sslClientKeyArn,
               (JSON..=) "SslClientKeyPassword" Prelude.<$> sslClientKeyPassword,
               (JSON..=) "Topic" Prelude.<$> topic]))
instance Property "Broker" KafkaSettingsProperty where
  type PropertyType "Broker" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {broker = Prelude.pure newValue, ..}
instance Property "IncludeControlDetails" KafkaSettingsProperty where
  type PropertyType "IncludeControlDetails" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {includeControlDetails = Prelude.pure newValue, ..}
instance Property "IncludeNullAndEmpty" KafkaSettingsProperty where
  type PropertyType "IncludeNullAndEmpty" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {includeNullAndEmpty = Prelude.pure newValue, ..}
instance Property "IncludePartitionValue" KafkaSettingsProperty where
  type PropertyType "IncludePartitionValue" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {includePartitionValue = Prelude.pure newValue, ..}
instance Property "IncludeTableAlterOperations" KafkaSettingsProperty where
  type PropertyType "IncludeTableAlterOperations" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {includeTableAlterOperations = Prelude.pure newValue, ..}
instance Property "IncludeTransactionDetails" KafkaSettingsProperty where
  type PropertyType "IncludeTransactionDetails" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {includeTransactionDetails = Prelude.pure newValue, ..}
instance Property "MessageFormat" KafkaSettingsProperty where
  type PropertyType "MessageFormat" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {messageFormat = Prelude.pure newValue, ..}
instance Property "MessageMaxBytes" KafkaSettingsProperty where
  type PropertyType "MessageMaxBytes" KafkaSettingsProperty = Value Prelude.Integer
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {messageMaxBytes = Prelude.pure newValue, ..}
instance Property "NoHexPrefix" KafkaSettingsProperty where
  type PropertyType "NoHexPrefix" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {noHexPrefix = Prelude.pure newValue, ..}
instance Property "PartitionIncludeSchemaTable" KafkaSettingsProperty where
  type PropertyType "PartitionIncludeSchemaTable" KafkaSettingsProperty = Value Prelude.Bool
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {partitionIncludeSchemaTable = Prelude.pure newValue, ..}
instance Property "SaslPassword" KafkaSettingsProperty where
  type PropertyType "SaslPassword" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {saslPassword = Prelude.pure newValue, ..}
instance Property "SaslUserName" KafkaSettingsProperty where
  type PropertyType "SaslUserName" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {saslUserName = Prelude.pure newValue, ..}
instance Property "SecurityProtocol" KafkaSettingsProperty where
  type PropertyType "SecurityProtocol" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {securityProtocol = Prelude.pure newValue, ..}
instance Property "SslCaCertificateArn" KafkaSettingsProperty where
  type PropertyType "SslCaCertificateArn" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {sslCaCertificateArn = Prelude.pure newValue, ..}
instance Property "SslClientCertificateArn" KafkaSettingsProperty where
  type PropertyType "SslClientCertificateArn" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {sslClientCertificateArn = Prelude.pure newValue, ..}
instance Property "SslClientKeyArn" KafkaSettingsProperty where
  type PropertyType "SslClientKeyArn" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {sslClientKeyArn = Prelude.pure newValue, ..}
instance Property "SslClientKeyPassword" KafkaSettingsProperty where
  type PropertyType "SslClientKeyPassword" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty
        {sslClientKeyPassword = Prelude.pure newValue, ..}
instance Property "Topic" KafkaSettingsProperty where
  type PropertyType "Topic" KafkaSettingsProperty = Value Prelude.Text
  set newValue KafkaSettingsProperty {..}
    = KafkaSettingsProperty {topic = Prelude.pure newValue, ..}