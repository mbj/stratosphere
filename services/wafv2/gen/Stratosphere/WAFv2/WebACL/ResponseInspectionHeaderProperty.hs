module Stratosphere.WAFv2.WebACL.ResponseInspectionHeaderProperty (
        ResponseInspectionHeaderProperty(..),
        mkResponseInspectionHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseInspectionHeaderProperty
  = ResponseInspectionHeaderProperty {failureValues :: (ValueList Prelude.Text),
                                      name :: (Value Prelude.Text),
                                      successValues :: (ValueList Prelude.Text)}
mkResponseInspectionHeaderProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> ResponseInspectionHeaderProperty
mkResponseInspectionHeaderProperty failureValues name successValues
  = ResponseInspectionHeaderProperty
      {failureValues = failureValues, name = name,
       successValues = successValues}
instance ToResourceProperties ResponseInspectionHeaderProperty where
  toResourceProperties ResponseInspectionHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ResponseInspectionHeader",
         supportsTags = Prelude.False,
         properties = ["FailureValues" JSON..= failureValues,
                       "Name" JSON..= name, "SuccessValues" JSON..= successValues]}
instance JSON.ToJSON ResponseInspectionHeaderProperty where
  toJSON ResponseInspectionHeaderProperty {..}
    = JSON.object
        ["FailureValues" JSON..= failureValues, "Name" JSON..= name,
         "SuccessValues" JSON..= successValues]
instance Property "FailureValues" ResponseInspectionHeaderProperty where
  type PropertyType "FailureValues" ResponseInspectionHeaderProperty = ValueList Prelude.Text
  set newValue ResponseInspectionHeaderProperty {..}
    = ResponseInspectionHeaderProperty {failureValues = newValue, ..}
instance Property "Name" ResponseInspectionHeaderProperty where
  type PropertyType "Name" ResponseInspectionHeaderProperty = Value Prelude.Text
  set newValue ResponseInspectionHeaderProperty {..}
    = ResponseInspectionHeaderProperty {name = newValue, ..}
instance Property "SuccessValues" ResponseInspectionHeaderProperty where
  type PropertyType "SuccessValues" ResponseInspectionHeaderProperty = ValueList Prelude.Text
  set newValue ResponseInspectionHeaderProperty {..}
    = ResponseInspectionHeaderProperty {successValues = newValue, ..}