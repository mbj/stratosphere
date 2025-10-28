module Stratosphere.Location.Map.MapConfigurationProperty (
        MapConfigurationProperty(..), mkMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html>
    MapConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html#cfn-location-map-mapconfiguration-customlayers>
                              customLayers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html#cfn-location-map-mapconfiguration-politicalview>
                              politicalView :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-map-mapconfiguration.html#cfn-location-map-mapconfiguration-style>
                              style :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMapConfigurationProperty ::
  Value Prelude.Text -> MapConfigurationProperty
mkMapConfigurationProperty style
  = MapConfigurationProperty
      {haddock_workaround_ = (), style = style,
       customLayers = Prelude.Nothing, politicalView = Prelude.Nothing}
instance ToResourceProperties MapConfigurationProperty where
  toResourceProperties MapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Location::Map.MapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Style" JSON..= style]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomLayers" Prelude.<$> customLayers,
                               (JSON..=) "PoliticalView" Prelude.<$> politicalView]))}
instance JSON.ToJSON MapConfigurationProperty where
  toJSON MapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Style" JSON..= style]
              (Prelude.catMaybes
                 [(JSON..=) "CustomLayers" Prelude.<$> customLayers,
                  (JSON..=) "PoliticalView" Prelude.<$> politicalView])))
instance Property "CustomLayers" MapConfigurationProperty where
  type PropertyType "CustomLayers" MapConfigurationProperty = ValueList Prelude.Text
  set newValue MapConfigurationProperty {..}
    = MapConfigurationProperty
        {customLayers = Prelude.pure newValue, ..}
instance Property "PoliticalView" MapConfigurationProperty where
  type PropertyType "PoliticalView" MapConfigurationProperty = Value Prelude.Text
  set newValue MapConfigurationProperty {..}
    = MapConfigurationProperty
        {politicalView = Prelude.pure newValue, ..}
instance Property "Style" MapConfigurationProperty where
  type PropertyType "Style" MapConfigurationProperty = Value Prelude.Text
  set newValue MapConfigurationProperty {..}
    = MapConfigurationProperty {style = newValue, ..}