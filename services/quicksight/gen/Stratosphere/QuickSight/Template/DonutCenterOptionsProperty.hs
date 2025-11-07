module Stratosphere.QuickSight.Template.DonutCenterOptionsProperty (
        DonutCenterOptionsProperty(..), mkDonutCenterOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data DonutCenterOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-donutcenteroptions.html>
    DonutCenterOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-donutcenteroptions.html#cfn-quicksight-template-donutcenteroptions-labelvisibility>
                                labelVisibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDonutCenterOptionsProperty :: DonutCenterOptionsProperty
mkDonutCenterOptionsProperty
  = DonutCenterOptionsProperty
      {haddock_workaround_ = (), labelVisibility = Prelude.Nothing}
instance ToResourceProperties DonutCenterOptionsProperty where
  toResourceProperties DonutCenterOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DonutCenterOptions",
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
  type PropertyType "LabelVisibility" DonutCenterOptionsProperty = JSON.Object
  set newValue DonutCenterOptionsProperty {..}
    = DonutCenterOptionsProperty
        {labelVisibility = Prelude.pure newValue, ..}