module Stratosphere.WAFv2.WebACL.ResponseInspectionBodyContainsProperty (
        ResponseInspectionBodyContainsProperty(..),
        mkResponseInspectionBodyContainsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseInspectionBodyContainsProperty
  = ResponseInspectionBodyContainsProperty {failureStrings :: (ValueList Prelude.Text),
                                            successStrings :: (ValueList Prelude.Text)}
mkResponseInspectionBodyContainsProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> ResponseInspectionBodyContainsProperty
mkResponseInspectionBodyContainsProperty
  failureStrings
  successStrings
  = ResponseInspectionBodyContainsProperty
      {failureStrings = failureStrings, successStrings = successStrings}
instance ToResourceProperties ResponseInspectionBodyContainsProperty where
  toResourceProperties ResponseInspectionBodyContainsProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ResponseInspectionBodyContains",
         supportsTags = Prelude.False,
         properties = ["FailureStrings" JSON..= failureStrings,
                       "SuccessStrings" JSON..= successStrings]}
instance JSON.ToJSON ResponseInspectionBodyContainsProperty where
  toJSON ResponseInspectionBodyContainsProperty {..}
    = JSON.object
        ["FailureStrings" JSON..= failureStrings,
         "SuccessStrings" JSON..= successStrings]
instance Property "FailureStrings" ResponseInspectionBodyContainsProperty where
  type PropertyType "FailureStrings" ResponseInspectionBodyContainsProperty = ValueList Prelude.Text
  set newValue ResponseInspectionBodyContainsProperty {..}
    = ResponseInspectionBodyContainsProperty
        {failureStrings = newValue, ..}
instance Property "SuccessStrings" ResponseInspectionBodyContainsProperty where
  type PropertyType "SuccessStrings" ResponseInspectionBodyContainsProperty = ValueList Prelude.Text
  set newValue ResponseInspectionBodyContainsProperty {..}
    = ResponseInspectionBodyContainsProperty
        {successStrings = newValue, ..}