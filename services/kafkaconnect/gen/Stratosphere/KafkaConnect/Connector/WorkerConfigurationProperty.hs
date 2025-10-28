module Stratosphere.KafkaConnect.Connector.WorkerConfigurationProperty (
        WorkerConfigurationProperty(..), mkWorkerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkerConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerconfiguration.html>
    WorkerConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerconfiguration.html#cfn-kafkaconnect-connector-workerconfiguration-revision>
                                 revision :: (Value Prelude.Integer),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-workerconfiguration.html#cfn-kafkaconnect-connector-workerconfiguration-workerconfigurationarn>
                                 workerConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkerConfigurationProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> WorkerConfigurationProperty
mkWorkerConfigurationProperty revision workerConfigurationArn
  = WorkerConfigurationProperty
      {haddock_workaround_ = (), revision = revision,
       workerConfigurationArn = workerConfigurationArn}
instance ToResourceProperties WorkerConfigurationProperty where
  toResourceProperties WorkerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.WorkerConfiguration",
         supportsTags = Prelude.False,
         properties = ["Revision" JSON..= revision,
                       "WorkerConfigurationArn" JSON..= workerConfigurationArn]}
instance JSON.ToJSON WorkerConfigurationProperty where
  toJSON WorkerConfigurationProperty {..}
    = JSON.object
        ["Revision" JSON..= revision,
         "WorkerConfigurationArn" JSON..= workerConfigurationArn]
instance Property "Revision" WorkerConfigurationProperty where
  type PropertyType "Revision" WorkerConfigurationProperty = Value Prelude.Integer
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty {revision = newValue, ..}
instance Property "WorkerConfigurationArn" WorkerConfigurationProperty where
  type PropertyType "WorkerConfigurationArn" WorkerConfigurationProperty = Value Prelude.Text
  set newValue WorkerConfigurationProperty {..}
    = WorkerConfigurationProperty
        {workerConfigurationArn = newValue, ..}