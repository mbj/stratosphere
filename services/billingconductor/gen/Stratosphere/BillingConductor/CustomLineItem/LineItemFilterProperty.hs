module Stratosphere.BillingConductor.CustomLineItem.LineItemFilterProperty (
        LineItemFilterProperty(..), mkLineItemFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineItemFilterProperty
  = LineItemFilterProperty {attribute :: (Value Prelude.Text),
                            matchOption :: (Value Prelude.Text),
                            values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineItemFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> LineItemFilterProperty
mkLineItemFilterProperty attribute matchOption values
  = LineItemFilterProperty
      {attribute = attribute, matchOption = matchOption, values = values}
instance ToResourceProperties LineItemFilterProperty where
  toResourceProperties LineItemFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.LineItemFilter",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute,
                       "MatchOption" JSON..= matchOption, "Values" JSON..= values]}
instance JSON.ToJSON LineItemFilterProperty where
  toJSON LineItemFilterProperty {..}
    = JSON.object
        ["Attribute" JSON..= attribute, "MatchOption" JSON..= matchOption,
         "Values" JSON..= values]
instance Property "Attribute" LineItemFilterProperty where
  type PropertyType "Attribute" LineItemFilterProperty = Value Prelude.Text
  set newValue LineItemFilterProperty {..}
    = LineItemFilterProperty {attribute = newValue, ..}
instance Property "MatchOption" LineItemFilterProperty where
  type PropertyType "MatchOption" LineItemFilterProperty = Value Prelude.Text
  set newValue LineItemFilterProperty {..}
    = LineItemFilterProperty {matchOption = newValue, ..}
instance Property "Values" LineItemFilterProperty where
  type PropertyType "Values" LineItemFilterProperty = ValueList Prelude.Text
  set newValue LineItemFilterProperty {..}
    = LineItemFilterProperty {values = newValue, ..}