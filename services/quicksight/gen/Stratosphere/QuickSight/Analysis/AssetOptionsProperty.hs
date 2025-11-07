module Stratosphere.QuickSight.Analysis.AssetOptionsProperty (
        AssetOptionsProperty(..), mkAssetOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-assetoptions.html>
    AssetOptionsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-assetoptions.html#cfn-quicksight-analysis-assetoptions-timezone>
                          timezone :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-assetoptions.html#cfn-quicksight-analysis-assetoptions-weekstart>
                          weekStart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetOptionsProperty :: AssetOptionsProperty
mkAssetOptionsProperty
  = AssetOptionsProperty
      {haddock_workaround_ = (), timezone = Prelude.Nothing,
       weekStart = Prelude.Nothing}
instance ToResourceProperties AssetOptionsProperty where
  toResourceProperties AssetOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.AssetOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Timezone" Prelude.<$> timezone,
                            (JSON..=) "WeekStart" Prelude.<$> weekStart])}
instance JSON.ToJSON AssetOptionsProperty where
  toJSON AssetOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Timezone" Prelude.<$> timezone,
               (JSON..=) "WeekStart" Prelude.<$> weekStart]))
instance Property "Timezone" AssetOptionsProperty where
  type PropertyType "Timezone" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {timezone = Prelude.pure newValue, ..}
instance Property "WeekStart" AssetOptionsProperty where
  type PropertyType "WeekStart" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {weekStart = Prelude.pure newValue, ..}