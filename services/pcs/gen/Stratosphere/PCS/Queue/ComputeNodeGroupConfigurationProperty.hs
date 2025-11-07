module Stratosphere.PCS.Queue.ComputeNodeGroupConfigurationProperty (
        ComputeNodeGroupConfigurationProperty(..),
        mkComputeNodeGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputeNodeGroupConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-queue-computenodegroupconfiguration.html>
    ComputeNodeGroupConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-queue-computenodegroupconfiguration.html#cfn-pcs-queue-computenodegroupconfiguration-computenodegroupid>
                                           computeNodeGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputeNodeGroupConfigurationProperty ::
  ComputeNodeGroupConfigurationProperty
mkComputeNodeGroupConfigurationProperty
  = ComputeNodeGroupConfigurationProperty
      {haddock_workaround_ = (), computeNodeGroupId = Prelude.Nothing}
instance ToResourceProperties ComputeNodeGroupConfigurationProperty where
  toResourceProperties ComputeNodeGroupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Queue.ComputeNodeGroupConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeNodeGroupId" Prelude.<$> computeNodeGroupId])}
instance JSON.ToJSON ComputeNodeGroupConfigurationProperty where
  toJSON ComputeNodeGroupConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeNodeGroupId" Prelude.<$> computeNodeGroupId]))
instance Property "ComputeNodeGroupId" ComputeNodeGroupConfigurationProperty where
  type PropertyType "ComputeNodeGroupId" ComputeNodeGroupConfigurationProperty = Value Prelude.Text
  set newValue ComputeNodeGroupConfigurationProperty {..}
    = ComputeNodeGroupConfigurationProperty
        {computeNodeGroupId = Prelude.pure newValue, ..}