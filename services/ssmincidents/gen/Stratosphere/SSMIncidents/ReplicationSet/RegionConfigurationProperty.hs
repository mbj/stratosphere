module Stratosphere.SSMIncidents.ReplicationSet.RegionConfigurationProperty (
        RegionConfigurationProperty(..), mkRegionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-replicationset-regionconfiguration.html>
    RegionConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-replicationset-regionconfiguration.html#cfn-ssmincidents-replicationset-regionconfiguration-ssekmskeyid>
                                 sseKmsKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionConfigurationProperty ::
  Value Prelude.Text -> RegionConfigurationProperty
mkRegionConfigurationProperty sseKmsKeyId
  = RegionConfigurationProperty
      {haddock_workaround_ = (), sseKmsKeyId = sseKmsKeyId}
instance ToResourceProperties RegionConfigurationProperty where
  toResourceProperties RegionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ReplicationSet.RegionConfiguration",
         supportsTags = Prelude.False,
         properties = ["SseKmsKeyId" JSON..= sseKmsKeyId]}
instance JSON.ToJSON RegionConfigurationProperty where
  toJSON RegionConfigurationProperty {..}
    = JSON.object ["SseKmsKeyId" JSON..= sseKmsKeyId]
instance Property "SseKmsKeyId" RegionConfigurationProperty where
  type PropertyType "SseKmsKeyId" RegionConfigurationProperty = Value Prelude.Text
  set newValue RegionConfigurationProperty {..}
    = RegionConfigurationProperty {sseKmsKeyId = newValue, ..}