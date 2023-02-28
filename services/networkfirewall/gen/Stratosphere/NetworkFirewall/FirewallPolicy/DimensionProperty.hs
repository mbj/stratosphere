module Stratosphere.NetworkFirewall.FirewallPolicy.DimensionProperty (
        DimensionProperty(..), mkDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionProperty
  = DimensionProperty {value :: (Value Prelude.Text)}
mkDimensionProperty :: Value Prelude.Text -> DimensionProperty
mkDimensionProperty value = DimensionProperty {value = value}
instance ToResourceProperties DimensionProperty where
  toResourceProperties DimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.Dimension",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON DimensionProperty where
  toJSON DimensionProperty {..} = JSON.object ["Value" JSON..= value]
instance Property "Value" DimensionProperty where
  type PropertyType "Value" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {}
    = DimensionProperty {value = newValue, ..}