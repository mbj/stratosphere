module Stratosphere.QuickSight.Theme.MarginStyleProperty (
        MarginStyleProperty(..), mkMarginStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MarginStyleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-marginstyle.html>
    MarginStyleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-marginstyle.html#cfn-quicksight-theme-marginstyle-show>
                         show :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarginStyleProperty :: MarginStyleProperty
mkMarginStyleProperty
  = MarginStyleProperty {show = Prelude.Nothing}
instance ToResourceProperties MarginStyleProperty where
  toResourceProperties MarginStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.MarginStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show])}
instance JSON.ToJSON MarginStyleProperty where
  toJSON MarginStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show]))
instance Property "Show" MarginStyleProperty where
  type PropertyType "Show" MarginStyleProperty = Value Prelude.Bool
  set newValue MarginStyleProperty {}
    = MarginStyleProperty {show = Prelude.pure newValue, ..}