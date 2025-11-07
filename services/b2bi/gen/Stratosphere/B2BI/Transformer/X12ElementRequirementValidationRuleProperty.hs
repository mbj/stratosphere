module Stratosphere.B2BI.Transformer.X12ElementRequirementValidationRuleProperty (
        X12ElementRequirementValidationRuleProperty(..),
        mkX12ElementRequirementValidationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12ElementRequirementValidationRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementrequirementvalidationrule.html>
    X12ElementRequirementValidationRuleProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementrequirementvalidationrule.html#cfn-b2bi-transformer-x12elementrequirementvalidationrule-elementposition>
                                                 elementPosition :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12elementrequirementvalidationrule.html#cfn-b2bi-transformer-x12elementrequirementvalidationrule-requirement>
                                                 requirement :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12ElementRequirementValidationRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> X12ElementRequirementValidationRuleProperty
mkX12ElementRequirementValidationRuleProperty
  elementPosition
  requirement
  = X12ElementRequirementValidationRuleProperty
      {haddock_workaround_ = (), elementPosition = elementPosition,
       requirement = requirement}
instance ToResourceProperties X12ElementRequirementValidationRuleProperty where
  toResourceProperties
    X12ElementRequirementValidationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12ElementRequirementValidationRule",
         supportsTags = Prelude.False,
         properties = ["ElementPosition" JSON..= elementPosition,
                       "Requirement" JSON..= requirement]}
instance JSON.ToJSON X12ElementRequirementValidationRuleProperty where
  toJSON X12ElementRequirementValidationRuleProperty {..}
    = JSON.object
        ["ElementPosition" JSON..= elementPosition,
         "Requirement" JSON..= requirement]
instance Property "ElementPosition" X12ElementRequirementValidationRuleProperty where
  type PropertyType "ElementPosition" X12ElementRequirementValidationRuleProperty = Value Prelude.Text
  set newValue X12ElementRequirementValidationRuleProperty {..}
    = X12ElementRequirementValidationRuleProperty
        {elementPosition = newValue, ..}
instance Property "Requirement" X12ElementRequirementValidationRuleProperty where
  type PropertyType "Requirement" X12ElementRequirementValidationRuleProperty = Value Prelude.Text
  set newValue X12ElementRequirementValidationRuleProperty {..}
    = X12ElementRequirementValidationRuleProperty
        {requirement = newValue, ..}