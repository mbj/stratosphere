module Stratosphere.WAFv2.WebACL.ResponseInspectionStatusCodeProperty (
        ResponseInspectionStatusCodeProperty(..),
        mkResponseInspectionStatusCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseInspectionStatusCodeProperty
  = ResponseInspectionStatusCodeProperty {failureCodes :: (ValueList Prelude.Integer),
                                          successCodes :: (ValueList Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseInspectionStatusCodeProperty ::
  ValueList Prelude.Integer
  -> ValueList Prelude.Integer
     -> ResponseInspectionStatusCodeProperty
mkResponseInspectionStatusCodeProperty failureCodes successCodes
  = ResponseInspectionStatusCodeProperty
      {failureCodes = failureCodes, successCodes = successCodes}
instance ToResourceProperties ResponseInspectionStatusCodeProperty where
  toResourceProperties ResponseInspectionStatusCodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ResponseInspectionStatusCode",
         supportsTags = Prelude.False,
         properties = ["FailureCodes" JSON..= failureCodes,
                       "SuccessCodes" JSON..= successCodes]}
instance JSON.ToJSON ResponseInspectionStatusCodeProperty where
  toJSON ResponseInspectionStatusCodeProperty {..}
    = JSON.object
        ["FailureCodes" JSON..= failureCodes,
         "SuccessCodes" JSON..= successCodes]
instance Property "FailureCodes" ResponseInspectionStatusCodeProperty where
  type PropertyType "FailureCodes" ResponseInspectionStatusCodeProperty = ValueList Prelude.Integer
  set newValue ResponseInspectionStatusCodeProperty {..}
    = ResponseInspectionStatusCodeProperty
        {failureCodes = newValue, ..}
instance Property "SuccessCodes" ResponseInspectionStatusCodeProperty where
  type PropertyType "SuccessCodes" ResponseInspectionStatusCodeProperty = ValueList Prelude.Integer
  set newValue ResponseInspectionStatusCodeProperty {..}
    = ResponseInspectionStatusCodeProperty
        {successCodes = newValue, ..}