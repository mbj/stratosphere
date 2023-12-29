module Stratosphere.CloudFront.Distribution.StatusCodesProperty (
        StatusCodesProperty(..), mkStatusCodesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatusCodesProperty
  = StatusCodesProperty {items :: (ValueList Prelude.Integer),
                         quantity :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatusCodesProperty ::
  ValueList Prelude.Integer
  -> Value Prelude.Integer -> StatusCodesProperty
mkStatusCodesProperty items quantity
  = StatusCodesProperty {items = items, quantity = quantity}
instance ToResourceProperties StatusCodesProperty where
  toResourceProperties StatusCodesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.StatusCodes",
         supportsTags = Prelude.False,
         properties = ["Items" JSON..= items, "Quantity" JSON..= quantity]}
instance JSON.ToJSON StatusCodesProperty where
  toJSON StatusCodesProperty {..}
    = JSON.object ["Items" JSON..= items, "Quantity" JSON..= quantity]
instance Property "Items" StatusCodesProperty where
  type PropertyType "Items" StatusCodesProperty = ValueList Prelude.Integer
  set newValue StatusCodesProperty {..}
    = StatusCodesProperty {items = newValue, ..}
instance Property "Quantity" StatusCodesProperty where
  type PropertyType "Quantity" StatusCodesProperty = Value Prelude.Integer
  set newValue StatusCodesProperty {..}
    = StatusCodesProperty {quantity = newValue, ..}