module Stratosphere.QuickSight.Template.GeospatialMapStyleOptionsProperty (
        GeospatialMapStyleOptionsProperty(..),
        mkGeospatialMapStyleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialMapStyleOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapstyleoptions.html>
    GeospatialMapStyleOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapstyleoptions.html#cfn-quicksight-template-geospatialmapstyleoptions-basemapstyle>
                                       baseMapStyle :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialMapStyleOptionsProperty ::
  GeospatialMapStyleOptionsProperty
mkGeospatialMapStyleOptionsProperty
  = GeospatialMapStyleOptionsProperty
      {haddock_workaround_ = (), baseMapStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialMapStyleOptionsProperty where
  toResourceProperties GeospatialMapStyleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialMapStyleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BaseMapStyle" Prelude.<$> baseMapStyle])}
instance JSON.ToJSON GeospatialMapStyleOptionsProperty where
  toJSON GeospatialMapStyleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BaseMapStyle" Prelude.<$> baseMapStyle]))
instance Property "BaseMapStyle" GeospatialMapStyleOptionsProperty where
  type PropertyType "BaseMapStyle" GeospatialMapStyleOptionsProperty = Value Prelude.Text
  set newValue GeospatialMapStyleOptionsProperty {..}
    = GeospatialMapStyleOptionsProperty
        {baseMapStyle = Prelude.pure newValue, ..}