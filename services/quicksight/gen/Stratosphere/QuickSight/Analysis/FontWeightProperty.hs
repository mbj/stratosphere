module Stratosphere.QuickSight.Analysis.FontWeightProperty (
        FontWeightProperty(..), mkFontWeightProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FontWeightProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-fontweight.html>
    FontWeightProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-fontweight.html#cfn-quicksight-analysis-fontweight-name>
                        name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFontWeightProperty :: FontWeightProperty
mkFontWeightProperty
  = FontWeightProperty
      {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties FontWeightProperty where
  toResourceProperties FontWeightProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FontWeight",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON FontWeightProperty where
  toJSON FontWeightProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" FontWeightProperty where
  type PropertyType "Name" FontWeightProperty = Value Prelude.Text
  set newValue FontWeightProperty {..}
    = FontWeightProperty {name = Prelude.pure newValue, ..}