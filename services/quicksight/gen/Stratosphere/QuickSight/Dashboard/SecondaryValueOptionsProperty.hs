module Stratosphere.QuickSight.Dashboard.SecondaryValueOptionsProperty (
        SecondaryValueOptionsProperty(..), mkSecondaryValueOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecondaryValueOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-secondaryvalueoptions.html>
    SecondaryValueOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-secondaryvalueoptions.html#cfn-quicksight-dashboard-secondaryvalueoptions-visibility>
                                   visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecondaryValueOptionsProperty :: SecondaryValueOptionsProperty
mkSecondaryValueOptionsProperty
  = SecondaryValueOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties SecondaryValueOptionsProperty where
  toResourceProperties SecondaryValueOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SecondaryValueOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SecondaryValueOptionsProperty where
  toJSON SecondaryValueOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" SecondaryValueOptionsProperty where
  type PropertyType "Visibility" SecondaryValueOptionsProperty = Value Prelude.Text
  set newValue SecondaryValueOptionsProperty {..}
    = SecondaryValueOptionsProperty
        {visibility = Prelude.pure newValue, ..}