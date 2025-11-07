module Stratosphere.B2BI.Transformer.X12CodeListValidationRuleProperty (
        X12CodeListValidationRuleProperty(..),
        mkX12CodeListValidationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12CodeListValidationRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12codelistvalidationrule.html>
    X12CodeListValidationRuleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12codelistvalidationrule.html#cfn-b2bi-transformer-x12codelistvalidationrule-codestoadd>
                                       codesToAdd :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12codelistvalidationrule.html#cfn-b2bi-transformer-x12codelistvalidationrule-codestoremove>
                                       codesToRemove :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12codelistvalidationrule.html#cfn-b2bi-transformer-x12codelistvalidationrule-elementid>
                                       elementId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12CodeListValidationRuleProperty ::
  Value Prelude.Text -> X12CodeListValidationRuleProperty
mkX12CodeListValidationRuleProperty elementId
  = X12CodeListValidationRuleProperty
      {haddock_workaround_ = (), elementId = elementId,
       codesToAdd = Prelude.Nothing, codesToRemove = Prelude.Nothing}
instance ToResourceProperties X12CodeListValidationRuleProperty where
  toResourceProperties X12CodeListValidationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12CodeListValidationRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ElementId" JSON..= elementId]
                           (Prelude.catMaybes
                              [(JSON..=) "CodesToAdd" Prelude.<$> codesToAdd,
                               (JSON..=) "CodesToRemove" Prelude.<$> codesToRemove]))}
instance JSON.ToJSON X12CodeListValidationRuleProperty where
  toJSON X12CodeListValidationRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ElementId" JSON..= elementId]
              (Prelude.catMaybes
                 [(JSON..=) "CodesToAdd" Prelude.<$> codesToAdd,
                  (JSON..=) "CodesToRemove" Prelude.<$> codesToRemove])))
instance Property "CodesToAdd" X12CodeListValidationRuleProperty where
  type PropertyType "CodesToAdd" X12CodeListValidationRuleProperty = ValueList Prelude.Text
  set newValue X12CodeListValidationRuleProperty {..}
    = X12CodeListValidationRuleProperty
        {codesToAdd = Prelude.pure newValue, ..}
instance Property "CodesToRemove" X12CodeListValidationRuleProperty where
  type PropertyType "CodesToRemove" X12CodeListValidationRuleProperty = ValueList Prelude.Text
  set newValue X12CodeListValidationRuleProperty {..}
    = X12CodeListValidationRuleProperty
        {codesToRemove = Prelude.pure newValue, ..}
instance Property "ElementId" X12CodeListValidationRuleProperty where
  type PropertyType "ElementId" X12CodeListValidationRuleProperty = Value Prelude.Text
  set newValue X12CodeListValidationRuleProperty {..}
    = X12CodeListValidationRuleProperty {elementId = newValue, ..}