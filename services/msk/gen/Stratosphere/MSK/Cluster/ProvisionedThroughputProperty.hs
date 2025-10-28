module Stratosphere.MSK.Cluster.ProvisionedThroughputProperty (
        ProvisionedThroughputProperty(..), mkProvisionedThroughputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedThroughputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-provisionedthroughput.html>
    ProvisionedThroughputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-provisionedthroughput.html#cfn-msk-cluster-provisionedthroughput-enabled>
                                   enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-provisionedthroughput.html#cfn-msk-cluster-provisionedthroughput-volumethroughput>
                                   volumeThroughput :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionedThroughputProperty :: ProvisionedThroughputProperty
mkProvisionedThroughputProperty
  = ProvisionedThroughputProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       volumeThroughput = Prelude.Nothing}
instance ToResourceProperties ProvisionedThroughputProperty where
  toResourceProperties ProvisionedThroughputProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.ProvisionedThroughput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "VolumeThroughput" Prelude.<$> volumeThroughput])}
instance JSON.ToJSON ProvisionedThroughputProperty where
  toJSON ProvisionedThroughputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "VolumeThroughput" Prelude.<$> volumeThroughput]))
instance Property "Enabled" ProvisionedThroughputProperty where
  type PropertyType "Enabled" ProvisionedThroughputProperty = Value Prelude.Bool
  set newValue ProvisionedThroughputProperty {..}
    = ProvisionedThroughputProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "VolumeThroughput" ProvisionedThroughputProperty where
  type PropertyType "VolumeThroughput" ProvisionedThroughputProperty = Value Prelude.Integer
  set newValue ProvisionedThroughputProperty {..}
    = ProvisionedThroughputProperty
        {volumeThroughput = Prelude.pure newValue, ..}