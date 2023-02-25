module Stratosphere.ElasticLoadBalancingV2.ListenerRule.HttpHeaderConfigProperty (
        HttpHeaderConfigProperty(..), mkHttpHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpHeaderConfigProperty
  = HttpHeaderConfigProperty {httpHeaderName :: (Prelude.Maybe (Value Prelude.Text)),
                              values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkHttpHeaderConfigProperty :: HttpHeaderConfigProperty
mkHttpHeaderConfigProperty
  = HttpHeaderConfigProperty
      {httpHeaderName = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties HttpHeaderConfigProperty where
  toResourceProperties HttpHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpHeaderName" Prelude.<$> httpHeaderName,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HttpHeaderConfigProperty where
  toJSON HttpHeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpHeaderName" Prelude.<$> httpHeaderName,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "HttpHeaderName" HttpHeaderConfigProperty where
  type PropertyType "HttpHeaderName" HttpHeaderConfigProperty = Value Prelude.Text
  set newValue HttpHeaderConfigProperty {..}
    = HttpHeaderConfigProperty
        {httpHeaderName = Prelude.pure newValue, ..}
instance Property "Values" HttpHeaderConfigProperty where
  type PropertyType "Values" HttpHeaderConfigProperty = ValueList (Value Prelude.Text)
  set newValue HttpHeaderConfigProperty {..}
    = HttpHeaderConfigProperty {values = Prelude.pure newValue, ..}