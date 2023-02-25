module Stratosphere.WAF.WebACL.WafActionProperty (
        WafActionProperty(..), mkWafActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WafActionProperty
  = WafActionProperty {type' :: (Value Prelude.Text)}
mkWafActionProperty :: Value Prelude.Text -> WafActionProperty
mkWafActionProperty type' = WafActionProperty {type' = type'}
instance ToResourceProperties WafActionProperty where
  toResourceProperties WafActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::WebACL.WafAction",
         properties = ["Type" JSON..= type']}
instance JSON.ToJSON WafActionProperty where
  toJSON WafActionProperty {..} = JSON.object ["Type" JSON..= type']
instance Property "Type" WafActionProperty where
  type PropertyType "Type" WafActionProperty = Value Prelude.Text
  set newValue WafActionProperty {}
    = WafActionProperty {type' = newValue, ..}