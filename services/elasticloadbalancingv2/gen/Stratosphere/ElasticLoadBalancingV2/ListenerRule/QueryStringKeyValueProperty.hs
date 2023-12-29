module Stratosphere.ElasticLoadBalancingV2.ListenerRule.QueryStringKeyValueProperty (
        QueryStringKeyValueProperty(..), mkQueryStringKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringKeyValueProperty
  = QueryStringKeyValueProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                                 value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryStringKeyValueProperty :: QueryStringKeyValueProperty
mkQueryStringKeyValueProperty
  = QueryStringKeyValueProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties QueryStringKeyValueProperty where
  toResourceProperties QueryStringKeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringKeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON QueryStringKeyValueProperty where
  toJSON QueryStringKeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" QueryStringKeyValueProperty where
  type PropertyType "Key" QueryStringKeyValueProperty = Value Prelude.Text
  set newValue QueryStringKeyValueProperty {..}
    = QueryStringKeyValueProperty {key = Prelude.pure newValue, ..}
instance Property "Value" QueryStringKeyValueProperty where
  type PropertyType "Value" QueryStringKeyValueProperty = Value Prelude.Text
  set newValue QueryStringKeyValueProperty {..}
    = QueryStringKeyValueProperty {value = Prelude.pure newValue, ..}