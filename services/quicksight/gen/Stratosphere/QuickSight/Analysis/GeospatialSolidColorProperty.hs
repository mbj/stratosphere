module Stratosphere.QuickSight.Analysis.GeospatialSolidColorProperty (
        GeospatialSolidColorProperty(..), mkGeospatialSolidColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialSolidColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialsolidcolor.html>
    GeospatialSolidColorProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialsolidcolor.html#cfn-quicksight-analysis-geospatialsolidcolor-color>
                                  color :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialsolidcolor.html#cfn-quicksight-analysis-geospatialsolidcolor-state>
                                  state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialSolidColorProperty ::
  Value Prelude.Text -> GeospatialSolidColorProperty
mkGeospatialSolidColorProperty color
  = GeospatialSolidColorProperty
      {haddock_workaround_ = (), color = color, state = Prelude.Nothing}
instance ToResourceProperties GeospatialSolidColorProperty where
  toResourceProperties GeospatialSolidColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialSolidColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Color" JSON..= color]
                           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))}
instance JSON.ToJSON GeospatialSolidColorProperty where
  toJSON GeospatialSolidColorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Color" JSON..= color]
              (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])))
instance Property "Color" GeospatialSolidColorProperty where
  type PropertyType "Color" GeospatialSolidColorProperty = Value Prelude.Text
  set newValue GeospatialSolidColorProperty {..}
    = GeospatialSolidColorProperty {color = newValue, ..}
instance Property "State" GeospatialSolidColorProperty where
  type PropertyType "State" GeospatialSolidColorProperty = Value Prelude.Text
  set newValue GeospatialSolidColorProperty {..}
    = GeospatialSolidColorProperty {state = Prelude.pure newValue, ..}