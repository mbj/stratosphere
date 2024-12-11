module Stratosphere.OpenSearchService.Domain.IdentityCenterOptionsProperty (
        IdentityCenterOptionsProperty(..), mkIdentityCenterOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityCenterOptionsProperty
  = IdentityCenterOptionsProperty {enabledAPIAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                                   identityCenterApplicationARN :: (Prelude.Maybe (Value Prelude.Text)),
                                   identityCenterInstanceARN :: (Prelude.Maybe (Value Prelude.Text)),
                                   identityStoreId :: (Prelude.Maybe (Value Prelude.Text)),
                                   rolesKey :: (Prelude.Maybe (Value Prelude.Text)),
                                   subjectKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityCenterOptionsProperty :: IdentityCenterOptionsProperty
mkIdentityCenterOptionsProperty
  = IdentityCenterOptionsProperty
      {enabledAPIAccess = Prelude.Nothing,
       identityCenterApplicationARN = Prelude.Nothing,
       identityCenterInstanceARN = Prelude.Nothing,
       identityStoreId = Prelude.Nothing, rolesKey = Prelude.Nothing,
       subjectKey = Prelude.Nothing}
instance ToResourceProperties IdentityCenterOptionsProperty where
  toResourceProperties IdentityCenterOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.IdentityCenterOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnabledAPIAccess" Prelude.<$> enabledAPIAccess,
                            (JSON..=) "IdentityCenterApplicationARN"
                              Prelude.<$> identityCenterApplicationARN,
                            (JSON..=) "IdentityCenterInstanceARN"
                              Prelude.<$> identityCenterInstanceARN,
                            (JSON..=) "IdentityStoreId" Prelude.<$> identityStoreId,
                            (JSON..=) "RolesKey" Prelude.<$> rolesKey,
                            (JSON..=) "SubjectKey" Prelude.<$> subjectKey])}
instance JSON.ToJSON IdentityCenterOptionsProperty where
  toJSON IdentityCenterOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnabledAPIAccess" Prelude.<$> enabledAPIAccess,
               (JSON..=) "IdentityCenterApplicationARN"
                 Prelude.<$> identityCenterApplicationARN,
               (JSON..=) "IdentityCenterInstanceARN"
                 Prelude.<$> identityCenterInstanceARN,
               (JSON..=) "IdentityStoreId" Prelude.<$> identityStoreId,
               (JSON..=) "RolesKey" Prelude.<$> rolesKey,
               (JSON..=) "SubjectKey" Prelude.<$> subjectKey]))
instance Property "EnabledAPIAccess" IdentityCenterOptionsProperty where
  type PropertyType "EnabledAPIAccess" IdentityCenterOptionsProperty = Value Prelude.Bool
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {enabledAPIAccess = Prelude.pure newValue, ..}
instance Property "IdentityCenterApplicationARN" IdentityCenterOptionsProperty where
  type PropertyType "IdentityCenterApplicationARN" IdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {identityCenterApplicationARN = Prelude.pure newValue, ..}
instance Property "IdentityCenterInstanceARN" IdentityCenterOptionsProperty where
  type PropertyType "IdentityCenterInstanceARN" IdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {identityCenterInstanceARN = Prelude.pure newValue, ..}
instance Property "IdentityStoreId" IdentityCenterOptionsProperty where
  type PropertyType "IdentityStoreId" IdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {identityStoreId = Prelude.pure newValue, ..}
instance Property "RolesKey" IdentityCenterOptionsProperty where
  type PropertyType "RolesKey" IdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {rolesKey = Prelude.pure newValue, ..}
instance Property "SubjectKey" IdentityCenterOptionsProperty where
  type PropertyType "SubjectKey" IdentityCenterOptionsProperty = Value Prelude.Text
  set newValue IdentityCenterOptionsProperty {..}
    = IdentityCenterOptionsProperty
        {subjectKey = Prelude.pure newValue, ..}