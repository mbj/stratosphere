module Stratosphere.EC2.VPNConnection.IKEVersionsRequestListValueProperty (
        IKEVersionsRequestListValueProperty(..),
        mkIKEVersionsRequestListValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IKEVersionsRequestListValueProperty
  = IKEVersionsRequestListValueProperty {value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIKEVersionsRequestListValueProperty ::
  IKEVersionsRequestListValueProperty
mkIKEVersionsRequestListValueProperty
  = IKEVersionsRequestListValueProperty {value = Prelude.Nothing}
instance ToResourceProperties IKEVersionsRequestListValueProperty where
  toResourceProperties IKEVersionsRequestListValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection.IKEVersionsRequestListValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON IKEVersionsRequestListValueProperty where
  toJSON IKEVersionsRequestListValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))
instance Property "Value" IKEVersionsRequestListValueProperty where
  type PropertyType "Value" IKEVersionsRequestListValueProperty = Value Prelude.Text
  set newValue IKEVersionsRequestListValueProperty {}
    = IKEVersionsRequestListValueProperty
        {value = Prelude.pure newValue, ..}