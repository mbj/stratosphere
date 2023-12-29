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
  = ResponseInspectionJsonProperty {failureValues :: (ValueList Prelude.Text),
                                    identifier :: (Value Prelude.Text),
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
      {failureValues = failureValues, identifier = identifier,
       successValues = successValues}
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