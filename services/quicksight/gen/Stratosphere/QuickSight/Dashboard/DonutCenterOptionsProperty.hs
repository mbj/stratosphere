module Stratosphere.QuickSight.Dashboard.DonutCenterOptionsProperty (
        DonutCenterOptionsProperty(..), mkDonutCenterOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DonutCenterOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-donutcenteroptions.html>
    DonutCenterOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-donutcenteroptions.html#cfn-quicksight-dashboard-donutcenteroptions-labelvisibility>
                                labelVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDonutCenterOptionsProperty :: DonutCenterOptionsProperty
mkDonutCenterOptionsProperty
  = DonutCenterOptionsProperty
      {haddock_workaround_ = (), labelVisibility = Prelude.Nothing}
instance ToResourceProperties DonutCenterOptionsProperty where
  toResourceProperties DonutCenterOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DonutCenterOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LabelVisibility" Prelude.<$> labelVisibility])}
instance JSON.ToJSON DonutCenterOptionsProperty where
  toJSON DonutCenterOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LabelVisibility" Prelude.<$> labelVisibility]))
instance Property "LabelVisibility" DonutCenterOptionsProperty where
  type PropertyType "LabelVisibility" DonutCenterOptionsProperty = Value Prelude.Text
  set newValue DonutCenterOptionsProperty {..}
    = DonutCenterOptionsProperty
        {labelVisibility = Prelude.pure newValue, ..}