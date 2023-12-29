module Stratosphere.Cognito.IdentityPoolRoleAttachment.RoleMappingProperty (
        module Exports, RoleMappingProperty(..), mkRoleMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.IdentityPoolRoleAttachment.RulesConfigurationTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoleMappingProperty
  = RoleMappingProperty {ambiguousRoleResolution :: (Prelude.Maybe (Value Prelude.Text)),
                         identityProvider :: (Prelude.Maybe (Value Prelude.Text)),
                         rulesConfiguration :: (Prelude.Maybe RulesConfigurationTypeProperty),
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoleMappingProperty :: Value Prelude.Text -> RoleMappingProperty
mkRoleMappingProperty type'
  = RoleMappingProperty
      {type' = type', ambiguousRoleResolution = Prelude.Nothing,
       identityProvider = Prelude.Nothing,
       rulesConfiguration = Prelude.Nothing}
instance ToResourceProperties RoleMappingProperty where
  toResourceProperties RoleMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolRoleAttachment.RoleMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AmbiguousRoleResolution"
                                 Prelude.<$> ambiguousRoleResolution,
                               (JSON..=) "IdentityProvider" Prelude.<$> identityProvider,
                               (JSON..=) "RulesConfiguration" Prelude.<$> rulesConfiguration]))}
instance JSON.ToJSON RoleMappingProperty where
  toJSON RoleMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AmbiguousRoleResolution"
                    Prelude.<$> ambiguousRoleResolution,
                  (JSON..=) "IdentityProvider" Prelude.<$> identityProvider,
                  (JSON..=) "RulesConfiguration" Prelude.<$> rulesConfiguration])))
instance Property "AmbiguousRoleResolution" RoleMappingProperty where
  type PropertyType "AmbiguousRoleResolution" RoleMappingProperty = Value Prelude.Text
  set newValue RoleMappingProperty {..}
    = RoleMappingProperty
        {ambiguousRoleResolution = Prelude.pure newValue, ..}
instance Property "IdentityProvider" RoleMappingProperty where
  type PropertyType "IdentityProvider" RoleMappingProperty = Value Prelude.Text
  set newValue RoleMappingProperty {..}
    = RoleMappingProperty
        {identityProvider = Prelude.pure newValue, ..}
instance Property "RulesConfiguration" RoleMappingProperty where
  type PropertyType "RulesConfiguration" RoleMappingProperty = RulesConfigurationTypeProperty
  set newValue RoleMappingProperty {..}
    = RoleMappingProperty
        {rulesConfiguration = Prelude.pure newValue, ..}
instance Property "Type" RoleMappingProperty where
  type PropertyType "Type" RoleMappingProperty = Value Prelude.Text
  set newValue RoleMappingProperty {..}
    = RoleMappingProperty {type' = newValue, ..}