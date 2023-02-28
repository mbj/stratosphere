module Stratosphere.Lightsail.Distribution.QueryStringObjectProperty (
        QueryStringObjectProperty(..), mkQueryStringObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringObjectProperty
  = QueryStringObjectProperty {option :: (Prelude.Maybe (Value Prelude.Bool)),
                               queryStringsAllowList :: (Prelude.Maybe (ValueList Prelude.Text))}
mkQueryStringObjectProperty :: QueryStringObjectProperty
mkQueryStringObjectProperty
  = QueryStringObjectProperty
      {option = Prelude.Nothing, queryStringsAllowList = Prelude.Nothing}
instance ToResourceProperties QueryStringObjectProperty where
  toResourceProperties QueryStringObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.QueryStringObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Option" Prelude.<$> option,
                            (JSON..=) "QueryStringsAllowList"
                              Prelude.<$> queryStringsAllowList])}
instance JSON.ToJSON QueryStringObjectProperty where
  toJSON QueryStringObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Option" Prelude.<$> option,
               (JSON..=) "QueryStringsAllowList"
                 Prelude.<$> queryStringsAllowList]))
instance Property "Option" QueryStringObjectProperty where
  type PropertyType "Option" QueryStringObjectProperty = Value Prelude.Bool
  set newValue QueryStringObjectProperty {..}
    = QueryStringObjectProperty {option = Prelude.pure newValue, ..}
instance Property "QueryStringsAllowList" QueryStringObjectProperty where
  type PropertyType "QueryStringsAllowList" QueryStringObjectProperty = ValueList Prelude.Text
  set newValue QueryStringObjectProperty {..}
    = QueryStringObjectProperty
        {queryStringsAllowList = Prelude.pure newValue, ..}