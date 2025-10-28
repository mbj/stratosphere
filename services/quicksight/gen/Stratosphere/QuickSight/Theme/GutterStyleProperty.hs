module Stratosphere.QuickSight.Theme.GutterStyleProperty (
        GutterStyleProperty(..), mkGutterStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GutterStyleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-gutterstyle.html>
    GutterStyleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-gutterstyle.html#cfn-quicksight-theme-gutterstyle-show>
                         show :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGutterStyleProperty :: GutterStyleProperty
mkGutterStyleProperty
  = GutterStyleProperty {show = Prelude.Nothing}
instance ToResourceProperties GutterStyleProperty where
  toResourceProperties GutterStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.GutterStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show])}
instance JSON.ToJSON GutterStyleProperty where
  toJSON GutterStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show]))
instance Property "Show" GutterStyleProperty where
  type PropertyType "Show" GutterStyleProperty = Value Prelude.Bool
  set newValue GutterStyleProperty {}
    = GutterStyleProperty {show = Prelude.pure newValue, ..}