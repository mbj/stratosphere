module Stratosphere.WAFv2.WebACL.ResponseInspectionJsonProperty (
        ResponseInspectionJsonProperty(..),
        mkResponseInspectionJsonProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResponseInspectionJsonProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionjson.html>
    ResponseInspectionJsonProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionjson.html#cfn-wafv2-webacl-responseinspectionjson-failurevalues>
                                    failureValues :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionjson.html#cfn-wafv2-webacl-responseinspectionjson-identifier>
                                    identifier :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-responseinspectionjson.html#cfn-wafv2-webacl-responseinspectionjson-successvalues>
                                    successValues :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResponseInspectionJsonProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> ResponseInspectionJsonProperty
mkResponseInspectionJsonProperty
  failureValues
  identifier
  successValues
  = ResponseInspectionJsonProperty
      {haddock_workaround_ = (), failureValues = failureValues,
       identifier = identifier, successValues = successValues}
instance ToResourceProperties ResponseInspectionJsonProperty where
  toResourceProperties ResponseInspectionJsonProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ResponseInspectionJson",
         supportsTags = Prelude.False,
         properties = ["FailureValues" JSON..= failureValues,
                       "Identifier" JSON..= identifier,
                       "SuccessValues" JSON..= successValues]}
instance JSON.ToJSON ResponseInspectionJsonProperty where
  toJSON ResponseInspectionJsonProperty {..}
    = JSON.object
        ["FailureValues" JSON..= failureValues,
         "Identifier" JSON..= identifier,
         "SuccessValues" JSON..= successValues]
instance Property "FailureValues" ResponseInspectionJsonProperty where
  type PropertyType "FailureValues" ResponseInspectionJsonProperty = ValueList Prelude.Text
  set newValue ResponseInspectionJsonProperty {..}
    = ResponseInspectionJsonProperty {failureValues = newValue, ..}
instance Property "Identifier" ResponseInspectionJsonProperty where
  type PropertyType "Identifier" ResponseInspectionJsonProperty = Value Prelude.Text
  set newValue ResponseInspectionJsonProperty {..}
    = ResponseInspectionJsonProperty {identifier = newValue, ..}
instance Property "SuccessValues" ResponseInspectionJsonProperty where
  type PropertyType "SuccessValues" ResponseInspectionJsonProperty = ValueList Prelude.Text
  set newValue ResponseInspectionJsonProperty {..}
    = ResponseInspectionJsonProperty {successValues = newValue, ..}