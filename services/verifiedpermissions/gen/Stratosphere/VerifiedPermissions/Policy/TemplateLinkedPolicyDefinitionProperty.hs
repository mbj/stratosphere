module Stratosphere.VerifiedPermissions.Policy.TemplateLinkedPolicyDefinitionProperty (
        module Exports, TemplateLinkedPolicyDefinitionProperty(..),
        mkTemplateLinkedPolicyDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.Policy.EntityIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateLinkedPolicyDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-templatelinkedpolicydefinition.html>
    TemplateLinkedPolicyDefinitionProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-templatelinkedpolicydefinition.html#cfn-verifiedpermissions-policy-templatelinkedpolicydefinition-policytemplateid>
                                            policyTemplateId :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-templatelinkedpolicydefinition.html#cfn-verifiedpermissions-policy-templatelinkedpolicydefinition-principal>
                                            principal :: (Prelude.Maybe EntityIdentifierProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-templatelinkedpolicydefinition.html#cfn-verifiedpermissions-policy-templatelinkedpolicydefinition-resource>
                                            resource :: (Prelude.Maybe EntityIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateLinkedPolicyDefinitionProperty ::
  Value Prelude.Text -> TemplateLinkedPolicyDefinitionProperty
mkTemplateLinkedPolicyDefinitionProperty policyTemplateId
  = TemplateLinkedPolicyDefinitionProperty
      {haddock_workaround_ = (), policyTemplateId = policyTemplateId,
       principal = Prelude.Nothing, resource = Prelude.Nothing}
instance ToResourceProperties TemplateLinkedPolicyDefinitionProperty where
  toResourceProperties TemplateLinkedPolicyDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::Policy.TemplateLinkedPolicyDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyTemplateId" JSON..= policyTemplateId]
                           (Prelude.catMaybes
                              [(JSON..=) "Principal" Prelude.<$> principal,
                               (JSON..=) "Resource" Prelude.<$> resource]))}
instance JSON.ToJSON TemplateLinkedPolicyDefinitionProperty where
  toJSON TemplateLinkedPolicyDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyTemplateId" JSON..= policyTemplateId]
              (Prelude.catMaybes
                 [(JSON..=) "Principal" Prelude.<$> principal,
                  (JSON..=) "Resource" Prelude.<$> resource])))
instance Property "PolicyTemplateId" TemplateLinkedPolicyDefinitionProperty where
  type PropertyType "PolicyTemplateId" TemplateLinkedPolicyDefinitionProperty = Value Prelude.Text
  set newValue TemplateLinkedPolicyDefinitionProperty {..}
    = TemplateLinkedPolicyDefinitionProperty
        {policyTemplateId = newValue, ..}
instance Property "Principal" TemplateLinkedPolicyDefinitionProperty where
  type PropertyType "Principal" TemplateLinkedPolicyDefinitionProperty = EntityIdentifierProperty
  set newValue TemplateLinkedPolicyDefinitionProperty {..}
    = TemplateLinkedPolicyDefinitionProperty
        {principal = Prelude.pure newValue, ..}
instance Property "Resource" TemplateLinkedPolicyDefinitionProperty where
  type PropertyType "Resource" TemplateLinkedPolicyDefinitionProperty = EntityIdentifierProperty
  set newValue TemplateLinkedPolicyDefinitionProperty {..}
    = TemplateLinkedPolicyDefinitionProperty
        {resource = Prelude.pure newValue, ..}