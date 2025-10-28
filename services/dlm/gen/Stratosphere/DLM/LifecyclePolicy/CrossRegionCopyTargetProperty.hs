module Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyTargetProperty (
        CrossRegionCopyTargetProperty(..), mkCrossRegionCopyTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossRegionCopyTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopytarget.html>
    CrossRegionCopyTargetProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopytarget.html#cfn-dlm-lifecyclepolicy-crossregioncopytarget-targetregion>
                                   targetRegion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossRegionCopyTargetProperty :: CrossRegionCopyTargetProperty
mkCrossRegionCopyTargetProperty
  = CrossRegionCopyTargetProperty
      {haddock_workaround_ = (), targetRegion = Prelude.Nothing}
instance ToResourceProperties CrossRegionCopyTargetProperty where
  toResourceProperties CrossRegionCopyTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetRegion" Prelude.<$> targetRegion])}
instance JSON.ToJSON CrossRegionCopyTargetProperty where
  toJSON CrossRegionCopyTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetRegion" Prelude.<$> targetRegion]))
instance Property "TargetRegion" CrossRegionCopyTargetProperty where
  type PropertyType "TargetRegion" CrossRegionCopyTargetProperty = Value Prelude.Text
  set newValue CrossRegionCopyTargetProperty {..}
    = CrossRegionCopyTargetProperty
        {targetRegion = Prelude.pure newValue, ..}