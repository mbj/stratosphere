module Stratosphere.VerifiedPermissions.PolicyStore (
        module Exports, PolicyStore(..), mkPolicyStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.PolicyStore.DeletionProtectionProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.PolicyStore.SchemaDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.PolicyStore.ValidationSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PolicyStore
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html>
    PolicyStore {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html#cfn-verifiedpermissions-policystore-deletionprotection>
                 deletionProtection :: (Prelude.Maybe DeletionProtectionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html#cfn-verifiedpermissions-policystore-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html#cfn-verifiedpermissions-policystore-schema>
                 schema :: (Prelude.Maybe SchemaDefinitionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html#cfn-verifiedpermissions-policystore-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policystore.html#cfn-verifiedpermissions-policystore-validationsettings>
                 validationSettings :: ValidationSettingsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyStore :: ValidationSettingsProperty -> PolicyStore
mkPolicyStore validationSettings
  = PolicyStore
      {haddock_workaround_ = (), validationSettings = validationSettings,
       deletionProtection = Prelude.Nothing,
       description = Prelude.Nothing, schema = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties PolicyStore where
  toResourceProperties PolicyStore {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ValidationSettings" JSON..= validationSettings]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Schema" Prelude.<$> schema,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PolicyStore where
  toJSON PolicyStore {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ValidationSettings" JSON..= validationSettings]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Schema" Prelude.<$> schema,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeletionProtection" PolicyStore where
  type PropertyType "DeletionProtection" PolicyStore = DeletionProtectionProperty
  set newValue PolicyStore {..}
    = PolicyStore {deletionProtection = Prelude.pure newValue, ..}
instance Property "Description" PolicyStore where
  type PropertyType "Description" PolicyStore = Value Prelude.Text
  set newValue PolicyStore {..}
    = PolicyStore {description = Prelude.pure newValue, ..}
instance Property "Schema" PolicyStore where
  type PropertyType "Schema" PolicyStore = SchemaDefinitionProperty
  set newValue PolicyStore {..}
    = PolicyStore {schema = Prelude.pure newValue, ..}
instance Property "Tags" PolicyStore where
  type PropertyType "Tags" PolicyStore = [Tag]
  set newValue PolicyStore {..}
    = PolicyStore {tags = Prelude.pure newValue, ..}
instance Property "ValidationSettings" PolicyStore where
  type PropertyType "ValidationSettings" PolicyStore = ValidationSettingsProperty
  set newValue PolicyStore {..}
    = PolicyStore {validationSettings = newValue, ..}