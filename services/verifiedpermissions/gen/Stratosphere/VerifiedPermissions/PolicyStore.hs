module Stratosphere.VerifiedPermissions.PolicyStore (
        module Exports, PolicyStore(..), mkPolicyStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.PolicyStore.SchemaDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.PolicyStore.ValidationSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStore
  = PolicyStore {description :: (Prelude.Maybe (Value Prelude.Text)),
                 schema :: (Prelude.Maybe SchemaDefinitionProperty),
                 validationSettings :: ValidationSettingsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStore :: ValidationSettingsProperty -> PolicyStore
mkPolicyStore validationSettings
  = PolicyStore
      {validationSettings = validationSettings,
       description = Prelude.Nothing, schema = Prelude.Nothing}
instance ToResourceProperties PolicyStore where
  toResourceProperties PolicyStore {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyStore",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ValidationSettings" JSON..= validationSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Schema" Prelude.<$> schema]))}
instance JSON.ToJSON PolicyStore where
  toJSON PolicyStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ValidationSettings" JSON..= validationSettings]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Schema" Prelude.<$> schema])))
instance Property "Description" PolicyStore where
  type PropertyType "Description" PolicyStore = Value Prelude.Text
  set newValue PolicyStore {..}
    = PolicyStore {description = Prelude.pure newValue, ..}
instance Property "Schema" PolicyStore where
  type PropertyType "Schema" PolicyStore = SchemaDefinitionProperty
  set newValue PolicyStore {..}
    = PolicyStore {schema = Prelude.pure newValue, ..}
instance Property "ValidationSettings" PolicyStore where
  type PropertyType "ValidationSettings" PolicyStore = ValidationSettingsProperty
  set newValue PolicyStore {..}
    = PolicyStore {validationSettings = newValue, ..}