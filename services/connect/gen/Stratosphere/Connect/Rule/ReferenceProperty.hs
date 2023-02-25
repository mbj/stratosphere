module Stratosphere.Connect.Rule.ReferenceProperty (
        ReferenceProperty(..), mkReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceProperty
  = ReferenceProperty {type' :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkReferenceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ReferenceProperty
mkReferenceProperty type' value
  = ReferenceProperty {type' = type', value = value}
instance ToResourceProperties ReferenceProperty where
  toResourceProperties ReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.Reference",
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ReferenceProperty where
  toJSON ReferenceProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ReferenceProperty where
  type PropertyType "Type" ReferenceProperty = Value Prelude.Text
  set newValue ReferenceProperty {..}
    = ReferenceProperty {type' = newValue, ..}
instance Property "Value" ReferenceProperty where
  type PropertyType "Value" ReferenceProperty = Value Prelude.Text
  set newValue ReferenceProperty {..}
    = ReferenceProperty {value = newValue, ..}