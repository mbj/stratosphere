module Stratosphere.WAF.IPSet.IPSetDescriptorProperty (
        IPSetDescriptorProperty(..), mkIPSetDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSetDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html>
    IPSetDescriptorProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-type>
                             type' :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-value>
                             value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSetDescriptorProperty ::
  Value Prelude.Text -> Value Prelude.Text -> IPSetDescriptorProperty
mkIPSetDescriptorProperty type' value
  = IPSetDescriptorProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties IPSetDescriptorProperty where
  toResourceProperties IPSetDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::IPSet.IPSetDescriptor",
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