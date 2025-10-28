module Stratosphere.NetworkFirewall.FirewallPolicy.DimensionProperty (
        DimensionProperty(..), mkDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-dimension.html>
    DimensionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-dimension.html#cfn-networkfirewall-firewallpolicy-dimension-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionProperty :: Value Prelude.Text -> DimensionProperty
mkDimensionProperty value
  = DimensionProperty {haddock_workaround_ = (), value = value}
instance ToResourceProperties DimensionProperty where
  toResourceProperties DimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.Dimension",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON DimensionProperty where
  toJSON DimensionProperty {..} = JSON.object ["Value" JSON..= value]
instance Property "Value" DimensionProperty where
  type PropertyType "Value" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {..}
    = DimensionProperty {value = newValue, ..}