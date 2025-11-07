module Stratosphere.B2BI.Transformer.X12ElementLengthValidationRuleProperty (
        X12ElementLengthValidationRuleProperty(..),
        mkX12ElementLengthValidationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12ElementLengthValidationRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementlengthvalidationrule.html>
    X12ElementLengthValidationRuleProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementlengthvalidationrule.html#cfn-b2bi-transformer-x12elementlengthvalidationrule-elementid>
                                            elementId :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementlengthvalidationrule.html#cfn-b2bi-transformer-x12elementlengthvalidationrule-maxlength>
                                            maxLength :: (Value Prelude.Double),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementlengthvalidationrule.html#cfn-b2bi-transformer-x12elementlengthvalidationrule-minlength>
                                            minLength :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12ElementLengthValidationRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Double -> X12ElementLengthValidationRuleProperty
mkX12ElementLengthValidationRuleProperty
  elementId
  maxLength
  minLength
  = X12ElementLengthValidationRuleProperty
      {haddock_workaround_ = (), elementId = elementId,
       maxLength = maxLength, minLength = minLength}
instance ToResourceProperties X12ElementLengthValidationRuleProperty where
  toResourceProperties X12ElementLengthValidationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12ElementLengthValidationRule",
         supportsTags = Prelude.False,
         properties = ["ElementId" JSON..= elementId,
                       "MaxLength" JSON..= maxLength, "MinLength" JSON..= minLength]}
instance JSON.ToJSON X12ElementLengthValidationRuleProperty where
  toJSON X12ElementLengthValidationRuleProperty {..}
    = JSON.object
        ["ElementId" JSON..= elementId, "MaxLength" JSON..= maxLength,
         "MinLength" JSON..= minLength]
instance Property "ElementId" X12ElementLengthValidationRuleProperty where
  type PropertyType "ElementId" X12ElementLengthValidationRuleProperty = Value Prelude.Text
  set newValue X12ElementLengthValidationRuleProperty {..}
    = X12ElementLengthValidationRuleProperty {elementId = newValue, ..}
instance Property "MaxLength" X12ElementLengthValidationRuleProperty where
  type PropertyType "MaxLength" X12ElementLengthValidationRuleProperty = Value Prelude.Double
  set newValue X12ElementLengthValidationRuleProperty {..}
    = X12ElementLengthValidationRuleProperty {maxLength = newValue, ..}
instance Property "MinLength" X12ElementLengthValidationRuleProperty where
  type PropertyType "MinLength" X12ElementLengthValidationRuleProperty = Value Prelude.Double
  set newValue X12ElementLengthValidationRuleProperty {..}
    = X12ElementLengthValidationRuleProperty {minLength = newValue, ..}