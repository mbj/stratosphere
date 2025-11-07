module Stratosphere.QuickSight.Dashboard.TableBorderOptionsProperty (
        TableBorderOptionsProperty(..), mkTableBorderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableBorderOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableborderoptions.html>
    TableBorderOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableborderoptions.html#cfn-quicksight-dashboard-tableborderoptions-color>
                                color :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableborderoptions.html#cfn-quicksight-dashboard-tableborderoptions-style>
                                style :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableborderoptions.html#cfn-quicksight-dashboard-tableborderoptions-thickness>
                                thickness :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableBorderOptionsProperty :: TableBorderOptionsProperty
mkTableBorderOptionsProperty
  = TableBorderOptionsProperty
      {haddock_workaround_ = (), color = Prelude.Nothing,
       style = Prelude.Nothing, thickness = Prelude.Nothing}
instance ToResourceProperties TableBorderOptionsProperty where
  toResourceProperties TableBorderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableBorderOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Color" Prelude.<$> color,
                            (JSON..=) "Style" Prelude.<$> style,
                            (JSON..=) "Thickness" Prelude.<$> thickness])}
instance JSON.ToJSON TableBorderOptionsProperty where
  toJSON TableBorderOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Color" Prelude.<$> color,
               (JSON..=) "Style" Prelude.<$> style,
               (JSON..=) "Thickness" Prelude.<$> thickness]))
instance Property "Color" TableBorderOptionsProperty where
  type PropertyType "Color" TableBorderOptionsProperty = Value Prelude.Text
  set newValue TableBorderOptionsProperty {..}
    = TableBorderOptionsProperty {color = Prelude.pure newValue, ..}
instance Property "Style" TableBorderOptionsProperty where
  type PropertyType "Style" TableBorderOptionsProperty = Value Prelude.Text
  set newValue TableBorderOptionsProperty {..}
    = TableBorderOptionsProperty {style = Prelude.pure newValue, ..}
instance Property "Thickness" TableBorderOptionsProperty where
  type PropertyType "Thickness" TableBorderOptionsProperty = Value Prelude.Double
  set newValue TableBorderOptionsProperty {..}
    = TableBorderOptionsProperty
        {thickness = Prelude.pure newValue, ..}