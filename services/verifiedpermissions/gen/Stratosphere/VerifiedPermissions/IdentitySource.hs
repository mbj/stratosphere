module Stratosphere.VerifiedPermissions.IdentitySource (
        module Exports, IdentitySource(..), mkIdentitySource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.IdentitySource.IdentitySourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentitySource
  = IdentitySource {configuration :: IdentitySourceConfigurationProperty,
                    policyStoreId :: (Value Prelude.Text),
                    principalEntityType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentitySource ::
  IdentitySourceConfigurationProperty
  -> Value Prelude.Text -> IdentitySource
mkIdentitySource configuration policyStoreId
  = IdentitySource
      {configuration = configuration, policyStoreId = policyStoreId,
       principalEntityType = Prelude.Nothing}
instance ToResourceProperties IdentitySource where
  toResourceProperties IdentitySource {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::IdentitySource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Configuration" JSON..= configuration,
                            "PolicyStoreId" JSON..= policyStoreId]
                           (Prelude.catMaybes
                              [(JSON..=) "PrincipalEntityType"
                                 Prelude.<$> principalEntityType]))}
instance JSON.ToJSON IdentitySource where
  toJSON IdentitySource {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Configuration" JSON..= configuration,
               "PolicyStoreId" JSON..= policyStoreId]
              (Prelude.catMaybes
                 [(JSON..=) "PrincipalEntityType"
                    Prelude.<$> principalEntityType])))
instance Property "Configuration" IdentitySource where
  type PropertyType "Configuration" IdentitySource = IdentitySourceConfigurationProperty
  set newValue IdentitySource {..}
    = IdentitySource {configuration = newValue, ..}
instance Property "PolicyStoreId" IdentitySource where
  type PropertyType "PolicyStoreId" IdentitySource = Value Prelude.Text
  set newValue IdentitySource {..}
    = IdentitySource {policyStoreId = newValue, ..}
instance Property "PrincipalEntityType" IdentitySource where
  type PropertyType "PrincipalEntityType" IdentitySource = Value Prelude.Text
  set newValue IdentitySource {..}
    = IdentitySource {principalEntityType = Prelude.pure newValue, ..}