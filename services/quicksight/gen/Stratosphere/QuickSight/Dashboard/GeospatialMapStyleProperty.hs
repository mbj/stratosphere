module Stratosphere.QuickSight.Dashboard.GeospatialMapStyleProperty (
        GeospatialMapStyleProperty(..), mkGeospatialMapStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialMapStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstyle.html>
    GeospatialMapStyleProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstyle.html#cfn-quicksight-dashboard-geospatialmapstyle-backgroundcolor>
                                backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstyle.html#cfn-quicksight-dashboard-geospatialmapstyle-basemapstyle>
                                baseMapStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialmapstyle.html#cfn-quicksight-dashboard-geospatialmapstyle-basemapvisibility>
                                baseMapVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapStyleProperty :: GeospatialMapStyleProperty
mkGeospatialMapStyleProperty
  = GeospatialMapStyleProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       baseMapStyle = Prelude.Nothing,
       baseMapVisibility = Prelude.Nothing}
instance ToResourceProperties GeospatialMapStyleProperty where
  toResourceProperties GeospatialMapStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialMapStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "BaseMapStyle" Prelude.<$> baseMapStyle,
                            (JSON..=) "BaseMapVisibility" Prelude.<$> baseMapVisibility])}
instance JSON.ToJSON GeospatialMapStyleProperty where
  toJSON GeospatialMapStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "BaseMapStyle" Prelude.<$> baseMapStyle,
               (JSON..=) "BaseMapVisibility" Prelude.<$> baseMapVisibility]))
instance Property "BackgroundColor" GeospatialMapStyleProperty where
  type PropertyType "BackgroundColor" GeospatialMapStyleProperty = Value Prelude.Text
  set newValue GeospatialMapStyleProperty {..}
    = GeospatialMapStyleProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "BaseMapStyle" GeospatialMapStyleProperty where
  type PropertyType "BaseMapStyle" GeospatialMapStyleProperty = Value Prelude.Text
  set newValue GeospatialMapStyleProperty {..}
    = GeospatialMapStyleProperty
        {baseMapStyle = Prelude.pure newValue, ..}
instance Property "BaseMapVisibility" GeospatialMapStyleProperty where
  type PropertyType "BaseMapVisibility" GeospatialMapStyleProperty = Value Prelude.Text
  set newValue GeospatialMapStyleProperty {..}
    = GeospatialMapStyleProperty
        {baseMapVisibility = Prelude.pure newValue, ..}