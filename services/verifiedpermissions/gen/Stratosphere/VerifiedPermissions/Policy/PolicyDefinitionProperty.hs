module Stratosphere.VerifiedPermissions.Policy.PolicyDefinitionProperty (
        module Exports, PolicyDefinitionProperty(..),
        mkPolicyDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.Policy.StaticPolicyDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.Policy.TemplateLinkedPolicyDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data PolicyDefinitionProperty
  = PolicyDefinitionProperty {static :: (Prelude.Maybe StaticPolicyDefinitionProperty),
                              templateLinked :: (Prelude.Maybe TemplateLinkedPolicyDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyDefinitionProperty :: PolicyDefinitionProperty
mkPolicyDefinitionProperty
  = PolicyDefinitionProperty
      {static = Prelude.Nothing, templateLinked = Prelude.Nothing}
instance ToResourceProperties PolicyDefinitionProperty where
  toResourceProperties PolicyDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::Policy.PolicyDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Static" Prelude.<$> static,
                            (JSON..=) "TemplateLinked" Prelude.<$> templateLinked])}
instance JSON.ToJSON PolicyDefinitionProperty where
  toJSON PolicyDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Static" Prelude.<$> static,
               (JSON..=) "TemplateLinked" Prelude.<$> templateLinked]))
instance Property "Static" PolicyDefinitionProperty where
  type PropertyType "Static" PolicyDefinitionProperty = StaticPolicyDefinitionProperty
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty {static = Prelude.pure newValue, ..}
instance Property "TemplateLinked" PolicyDefinitionProperty where
  type PropertyType "TemplateLinked" PolicyDefinitionProperty = TemplateLinkedPolicyDefinitionProperty
  set newValue PolicyDefinitionProperty {..}
    = PolicyDefinitionProperty
        {templateLinked = Prelude.pure newValue, ..}