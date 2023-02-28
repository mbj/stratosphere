module Stratosphere.WAFRegional.IPSet.IPSetDescriptorProperty (
        IPSetDescriptorProperty(..), mkIPSetDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetDescriptorProperty
  = IPSetDescriptorProperty {type' :: (Value Prelude.Text),
                             value :: (Value Prelude.Text)}
mkIPSetDescriptorProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IPSetDescriptorProperty
mkIPSetDescriptorProperty type' value
  = IPSetDescriptorProperty {type' = type', value = value}
instance ToResourceProperties IPSetDescriptorProperty where
  toResourceProperties IPSetDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::IPSet.IPSetDescriptor",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON IPSetDescriptorProperty where
  toJSON IPSetDescriptorProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" IPSetDescriptorProperty where
  type PropertyType "Type" IPSetDescriptorProperty = Value Prelude.Text
  set newValue IPSetDescriptorProperty {..}
    = IPSetDescriptorProperty {type' = newValue, ..}
instance Property "Value" IPSetDescriptorProperty where
  type PropertyType "Value" IPSetDescriptorProperty = Value Prelude.Text
  set newValue IPSetDescriptorProperty {..}
    = IPSetDescriptorProperty {value = newValue, ..}