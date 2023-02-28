module Stratosphere.WAFRegional.XssMatchSet.FieldToMatchProperty (
        FieldToMatchProperty(..), mkFieldToMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldToMatchProperty
  = FieldToMatchProperty {data' :: (Prelude.Maybe (Value Prelude.Text)),
                          type' :: (Value Prelude.Text)}
mkFieldToMatchProperty ::
  Value Prelude.Text -> FieldToMatchProperty
mkFieldToMatchProperty type'
  = FieldToMatchProperty {type' = type', data' = Prelude.Nothing}
instance ToResourceProperties FieldToMatchProperty where
  toResourceProperties FieldToMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::XssMatchSet.FieldToMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data']))}
instance JSON.ToJSON FieldToMatchProperty where
  toJSON FieldToMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data'])))
instance Property "Data" FieldToMatchProperty where
  type PropertyType "Data" FieldToMatchProperty = Value Prelude.Text
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {data' = Prelude.pure newValue, ..}
instance Property "Type" FieldToMatchProperty where
  type PropertyType "Type" FieldToMatchProperty = Value Prelude.Text
  set newValue FieldToMatchProperty {..}
    = FieldToMatchProperty {type' = newValue, ..}