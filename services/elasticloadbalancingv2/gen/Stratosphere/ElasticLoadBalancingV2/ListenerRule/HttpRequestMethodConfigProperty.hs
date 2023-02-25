module Stratosphere.ElasticLoadBalancingV2.ListenerRule.HttpRequestMethodConfigProperty (
        HttpRequestMethodConfigProperty(..),
        mkHttpRequestMethodConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpRequestMethodConfigProperty
  = HttpRequestMethodConfigProperty {values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkHttpRequestMethodConfigProperty ::
  HttpRequestMethodConfigProperty
mkHttpRequestMethodConfigProperty
  = HttpRequestMethodConfigProperty {values = Prelude.Nothing}
instance ToResourceProperties HttpRequestMethodConfigProperty where
  toResourceProperties HttpRequestMethodConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.HttpRequestMethodConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HttpRequestMethodConfigProperty where
  toJSON HttpRequestMethodConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" HttpRequestMethodConfigProperty where
  type PropertyType "Values" HttpRequestMethodConfigProperty = ValueList (Value Prelude.Text)
  set newValue HttpRequestMethodConfigProperty {}
    = HttpRequestMethodConfigProperty
        {values = Prelude.pure newValue, ..}