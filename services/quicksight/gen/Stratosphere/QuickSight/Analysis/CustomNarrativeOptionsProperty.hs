module Stratosphere.QuickSight.Analysis.CustomNarrativeOptionsProperty (
        CustomNarrativeOptionsProperty(..),
        mkCustomNarrativeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomNarrativeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customnarrativeoptions.html>
    CustomNarrativeOptionsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-customnarrativeoptions.html#cfn-quicksight-analysis-customnarrativeoptions-narrative>
                                    narrative :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomNarrativeOptionsProperty ::
  Value Prelude.Text -> CustomNarrativeOptionsProperty
mkCustomNarrativeOptionsProperty narrative
  = CustomNarrativeOptionsProperty
      {haddock_workaround_ = (), narrative = narrative}
instance ToResourceProperties CustomNarrativeOptionsProperty where
  toResourceProperties CustomNarrativeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CustomNarrativeOptions",
         supportsTags = Prelude.False,
         properties = ["Narrative" JSON..= narrative]}
instance JSON.ToJSON CustomNarrativeOptionsProperty where
  toJSON CustomNarrativeOptionsProperty {..}
    = JSON.object ["Narrative" JSON..= narrative]
instance Property "Narrative" CustomNarrativeOptionsProperty where
  type PropertyType "Narrative" CustomNarrativeOptionsProperty = Value Prelude.Text
  set newValue CustomNarrativeOptionsProperty {..}
    = CustomNarrativeOptionsProperty {narrative = newValue, ..}