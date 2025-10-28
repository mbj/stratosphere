module Stratosphere.QuickSight.Theme.BorderStyleProperty (
        BorderStyleProperty(..), mkBorderStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BorderStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-borderstyle.html>
    BorderStyleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-borderstyle.html#cfn-quicksight-theme-borderstyle-show>
                         show :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBorderStyleProperty :: BorderStyleProperty
mkBorderStyleProperty
  = BorderStyleProperty
      {haddock_workaround_ = (), show = Prelude.Nothing}
instance ToResourceProperties BorderStyleProperty where
  toResourceProperties BorderStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.BorderStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show])}
instance JSON.ToJSON BorderStyleProperty where
  toJSON BorderStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Show" Prelude.<$> show]))
instance Property "Show" BorderStyleProperty where
  type PropertyType "Show" BorderStyleProperty = Value Prelude.Bool
  set newValue BorderStyleProperty {..}
    = BorderStyleProperty {show = Prelude.pure newValue, ..}