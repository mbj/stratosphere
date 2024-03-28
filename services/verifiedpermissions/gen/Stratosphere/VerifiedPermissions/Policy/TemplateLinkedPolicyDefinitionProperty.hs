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
  = TemplateLinkedPolicyDefinitionProperty {policyTemplateId :: (Value Prelude.Text),
                                            principal :: (Prelude.Maybe EntityIdentifierProperty),
                                            resource :: (Prelude.Maybe EntityIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateLinkedPolicyDefinitionProperty ::
  Value Prelude.Text -> TemplateLinkedPolicyDefinitionProperty
mkTemplateLinkedPolicyDefinitionProperty policyTemplateId
  = TemplateLinkedPolicyDefinitionProperty
      {policyTemplateId = policyTemplateId, principal = Prelude.Nothing,
       resource = Prelude.Nothing}
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