module Stratosphere.WAF.WebACL.WafActionProperty (
        WafActionProperty(..), mkWafActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WafActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html>
    WafActionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type>
                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWafActionProperty :: Value Prelude.Text -> WafActionProperty
mkWafActionProperty type'
  = WafActionProperty {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties WafActionProperty where
  toResourceProperties WafActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::WebACL.WafAction",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON WafActionProperty where
  toJSON WafActionProperty {..} = JSON.object ["Type" JSON..= type']
instance Property "Type" WafActionProperty where
  type PropertyType "Type" WafActionProperty = Value Prelude.Text
  set newValue WafActionProperty {..}
    = WafActionProperty {type' = newValue, ..}