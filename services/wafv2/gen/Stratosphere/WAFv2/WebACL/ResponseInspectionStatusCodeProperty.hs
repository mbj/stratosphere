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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionstatuscode.html>
    ResponseInspectionStatusCodeProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionstatuscode.html#cfn-wafv2-webacl-responseinspectionstatuscode-failurecodes>
                                          failureCodes :: (ValueList Prelude.Integer),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionstatuscode.html#cfn-wafv2-webacl-responseinspectionstatuscode-successcodes>
                                          successCodes :: (ValueList Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseInspectionStatusCodeProperty ::
  ValueList Prelude.Integer
  -> ValueList Prelude.Integer
     -> ResponseInspectionStatusCodeProperty
mkResponseInspectionStatusCodeProperty failureCodes successCodes
  = ResponseInspectionStatusCodeProperty
      {haddock_workaround_ = (), failureCodes = failureCodes,
       successCodes = successCodes}
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