module Stratosphere.OpenSearchService.Domain.SAMLOptionsProperty (
        module Exports, SAMLOptionsProperty(..), mkSAMLOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.IdpProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SAMLOptionsProperty
  = SAMLOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         idp :: (Prelude.Maybe IdpProperty),
                         masterBackendRole :: (Prelude.Maybe (Value Prelude.Text)),
                         masterUserName :: (Prelude.Maybe (Value Prelude.Text)),
                         rolesKey :: (Prelude.Maybe (Value Prelude.Text)),
                         sessionTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                         subjectKey :: (Prelude.Maybe (Value Prelude.Text))}
mkSAMLOptionsProperty :: SAMLOptionsProperty
mkSAMLOptionsProperty
  = SAMLOptionsProperty
      {enabled = Prelude.Nothing, idp = Prelude.Nothing,
       masterBackendRole = Prelude.Nothing,
       masterUserName = Prelude.Nothing, rolesKey = Prelude.Nothing,
       sessionTimeoutMinutes = Prelude.Nothing,
       subjectKey = Prelude.Nothing}
instance ToResourceProperties SAMLOptionsProperty where
  toResourceProperties SAMLOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.SAMLOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Idp" Prelude.<$> idp,
                            (JSON..=) "MasterBackendRole" Prelude.<$> masterBackendRole,
                            (JSON..=) "MasterUserName" Prelude.<$> masterUserName,
                            (JSON..=) "RolesKey" Prelude.<$> rolesKey,
                            (JSON..=) "SessionTimeoutMinutes"
                              Prelude.<$> sessionTimeoutMinutes,
                            (JSON..=) "SubjectKey" Prelude.<$> subjectKey])}
instance JSON.ToJSON SAMLOptionsProperty where
  toJSON SAMLOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Idp" Prelude.<$> idp,
               (JSON..=) "MasterBackendRole" Prelude.<$> masterBackendRole,
               (JSON..=) "MasterUserName" Prelude.<$> masterUserName,
               (JSON..=) "RolesKey" Prelude.<$> rolesKey,
               (JSON..=) "SessionTimeoutMinutes"
                 Prelude.<$> sessionTimeoutMinutes,
               (JSON..=) "SubjectKey" Prelude.<$> subjectKey]))
instance Property "Enabled" SAMLOptionsProperty where
  type PropertyType "Enabled" SAMLOptionsProperty = Value Prelude.Bool
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty {enabled = Prelude.pure newValue, ..}
instance Property "Idp" SAMLOptionsProperty where
  type PropertyType "Idp" SAMLOptionsProperty = IdpProperty
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty {idp = Prelude.pure newValue, ..}
instance Property "MasterBackendRole" SAMLOptionsProperty where
  type PropertyType "MasterBackendRole" SAMLOptionsProperty = Value Prelude.Text
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty
        {masterBackendRole = Prelude.pure newValue, ..}
instance Property "MasterUserName" SAMLOptionsProperty where
  type PropertyType "MasterUserName" SAMLOptionsProperty = Value Prelude.Text
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty {masterUserName = Prelude.pure newValue, ..}
instance Property "RolesKey" SAMLOptionsProperty where
  type PropertyType "RolesKey" SAMLOptionsProperty = Value Prelude.Text
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty {rolesKey = Prelude.pure newValue, ..}
instance Property "SessionTimeoutMinutes" SAMLOptionsProperty where
  type PropertyType "SessionTimeoutMinutes" SAMLOptionsProperty = Value Prelude.Integer
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty
        {sessionTimeoutMinutes = Prelude.pure newValue, ..}
instance Property "SubjectKey" SAMLOptionsProperty where
  type PropertyType "SubjectKey" SAMLOptionsProperty = Value Prelude.Text
  set newValue SAMLOptionsProperty {..}
    = SAMLOptionsProperty {subjectKey = Prelude.pure newValue, ..}