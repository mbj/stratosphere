module Stratosphere.SSMIncidents.ReplicationSet.RegionConfigurationProperty (
        RegionConfigurationProperty(..), mkRegionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionConfigurationProperty
  = RegionConfigurationProperty {sseKmsKeyId :: (Value Prelude.Text)}
mkRegionConfigurationProperty ::
  Value Prelude.Text -> RegionConfigurationProperty
mkRegionConfigurationProperty sseKmsKeyId
  = RegionConfigurationProperty {sseKmsKeyId = sseKmsKeyId}
instance ToResourceProperties RegionConfigurationProperty where
  toResourceProperties RegionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ReplicationSet.RegionConfiguration",
         properties = ["SseKmsKeyId" JSON..= sseKmsKeyId]}
instance JSON.ToJSON RegionConfigurationProperty where
  toJSON RegionConfigurationProperty {..}
    = JSON.object ["SseKmsKeyId" JSON..= sseKmsKeyId]
instance Property "SseKmsKeyId" RegionConfigurationProperty where
  type PropertyType "SseKmsKeyId" RegionConfigurationProperty = Value Prelude.Text
  set newValue RegionConfigurationProperty {}
    = RegionConfigurationProperty {sseKmsKeyId = newValue, ..}