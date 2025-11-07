module Stratosphere.PCS.ComputeNodeGroup.SpotOptionsProperty (
        SpotOptionsProperty(..), mkSpotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-spotoptions.html>
    SpotOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-computenodegroup-spotoptions.html#cfn-pcs-computenodegroup-spotoptions-allocationstrategy>
                         allocationStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotOptionsProperty :: SpotOptionsProperty
mkSpotOptionsProperty
  = SpotOptionsProperty
      {haddock_workaround_ = (), allocationStrategy = Prelude.Nothing}
instance ToResourceProperties SpotOptionsProperty where
  toResourceProperties SpotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::ComputeNodeGroup.SpotOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy])}
instance JSON.ToJSON SpotOptionsProperty where
  toJSON SpotOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy]))
instance Property "AllocationStrategy" SpotOptionsProperty where
  type PropertyType "AllocationStrategy" SpotOptionsProperty = Value Prelude.Text
  set newValue SpotOptionsProperty {..}
    = SpotOptionsProperty
        {allocationStrategy = Prelude.pure newValue, ..}