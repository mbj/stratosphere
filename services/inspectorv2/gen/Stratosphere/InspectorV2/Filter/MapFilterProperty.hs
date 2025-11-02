module Stratosphere.InspectorV2.Filter.MapFilterProperty (
        MapFilterProperty(..), mkMapFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MapFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-mapfilter.html>
    MapFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-mapfilter.html#cfn-inspectorv2-filter-mapfilter-comparison>
                       comparison :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-mapfilter.html#cfn-inspectorv2-filter-mapfilter-key>
                       key :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-mapfilter.html#cfn-inspectorv2-filter-mapfilter-value>
                       value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMapFilterProperty :: Value Prelude.Text -> MapFilterProperty
mkMapFilterProperty comparison
  = MapFilterProperty
      {haddock_workaround_ = (), comparison = comparison,
       key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties MapFilterProperty where
  toResourceProperties MapFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.MapFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Comparison" JSON..= comparison]
                           (Prelude.catMaybes
                              [(JSON..=) "Key" Prelude.<$> key,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON MapFilterProperty where
  toJSON MapFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Comparison" JSON..= comparison]
              (Prelude.catMaybes
                 [(JSON..=) "Key" Prelude.<$> key,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "Comparison" MapFilterProperty where
  type PropertyType "Comparison" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {comparison = newValue, ..}
instance Property "Key" MapFilterProperty where
  type PropertyType "Key" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {key = Prelude.pure newValue, ..}
instance Property "Value" MapFilterProperty where
  type PropertyType "Value" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {value = Prelude.pure newValue, ..}