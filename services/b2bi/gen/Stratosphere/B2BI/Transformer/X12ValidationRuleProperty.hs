module Stratosphere.B2BI.Transformer.X12ValidationRuleProperty (
        module Exports, X12ValidationRuleProperty(..),
        mkX12ValidationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12CodeListValidationRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12ElementLengthValidationRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12ElementRequirementValidationRuleProperty as Exports
import Stratosphere.ResourceProperties
data X12ValidationRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html>
    X12ValidationRuleProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-codelistvalidationrule>
                               codeListValidationRule :: (Prelude.Maybe X12CodeListValidationRuleProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-elementlengthvalidationrule>
                               elementLengthValidationRule :: (Prelude.Maybe X12ElementLengthValidationRuleProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-elementrequirementvalidationrule>
                               elementRequirementValidationRule :: (Prelude.Maybe X12ElementRequirementValidationRuleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12ValidationRuleProperty :: X12ValidationRuleProperty
mkX12ValidationRuleProperty
  = X12ValidationRuleProperty
      {haddock_workaround_ = (),
       codeListValidationRule = Prelude.Nothing,
       elementLengthValidationRule = Prelude.Nothing,
       elementRequirementValidationRule = Prelude.Nothing}
instance ToResourceProperties X12ValidationRuleProperty where
  toResourceProperties X12ValidationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12ValidationRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodeListValidationRule"
                              Prelude.<$> codeListValidationRule,
                            (JSON..=) "ElementLengthValidationRule"
                              Prelude.<$> elementLengthValidationRule,
                            (JSON..=) "ElementRequirementValidationRule"
                              Prelude.<$> elementRequirementValidationRule])}
instance JSON.ToJSON X12ValidationRuleProperty where
  toJSON X12ValidationRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodeListValidationRule"
                 Prelude.<$> codeListValidationRule,
               (JSON..=) "ElementLengthValidationRule"
                 Prelude.<$> elementLengthValidationRule,
               (JSON..=) "ElementRequirementValidationRule"
                 Prelude.<$> elementRequirementValidationRule]))
instance Property "CodeListValidationRule" X12ValidationRuleProperty where
  type PropertyType "CodeListValidationRule" X12ValidationRuleProperty = X12CodeListValidationRuleProperty
  set newValue X12ValidationRuleProperty {..}
    = X12ValidationRuleProperty
        {codeListValidationRule = Prelude.pure newValue, ..}
instance Property "ElementLengthValidationRule" X12ValidationRuleProperty where
  type PropertyType "ElementLengthValidationRule" X12ValidationRuleProperty = X12ElementLengthValidationRuleProperty
  set newValue X12ValidationRuleProperty {..}
    = X12ValidationRuleProperty
        {elementLengthValidationRule = Prelude.pure newValue, ..}
instance Property "ElementRequirementValidationRule" X12ValidationRuleProperty where
  type PropertyType "ElementRequirementValidationRule" X12ValidationRuleProperty = X12ElementRequirementValidationRuleProperty
  set newValue X12ValidationRuleProperty {..}
    = X12ValidationRuleProperty
        {elementRequirementValidationRule = Prelude.pure newValue, ..}