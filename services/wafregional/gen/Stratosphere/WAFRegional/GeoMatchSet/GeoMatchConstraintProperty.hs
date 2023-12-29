module Stratosphere.WAFRegional.GeoMatchSet.GeoMatchConstraintProperty (
        GeoMatchConstraintProperty(..), mkGeoMatchConstraintProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoMatchConstraintProperty
  = GeoMatchConstraintProperty {type' :: (Value Prelude.Text),
                                value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoMatchConstraintProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GeoMatchConstraintProperty
mkGeoMatchConstraintProperty type' value
  = GeoMatchConstraintProperty {type' = type', value = value}
instance ToResourceProperties GeoMatchConstraintProperty where
  toResourceProperties GeoMatchConstraintProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::GeoMatchSet.GeoMatchConstraint",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON GeoMatchConstraintProperty where
  toJSON GeoMatchConstraintProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" GeoMatchConstraintProperty where
  type PropertyType "Type" GeoMatchConstraintProperty = Value Prelude.Text
  set newValue GeoMatchConstraintProperty {..}
    = GeoMatchConstraintProperty {type' = newValue, ..}
instance Property "Value" GeoMatchConstraintProperty where
  type PropertyType "Value" GeoMatchConstraintProperty = Value Prelude.Text
  set newValue GeoMatchConstraintProperty {..}
    = GeoMatchConstraintProperty {value = newValue, ..}