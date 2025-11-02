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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html>
    SAMLOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-enabled>
                         enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-idp>
                         idp :: (Prelude.Maybe IdpProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-masterbackendrole>
                         masterBackendRole :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-masterusername>
                         masterUserName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-roleskey>
                         rolesKey :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-sessiontimeoutminutes>
                         sessionTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-samloptions.html#cfn-opensearchservice-domain-samloptions-subjectkey>
                         subjectKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSAMLOptionsProperty :: SAMLOptionsProperty
mkSAMLOptionsProperty
  = SAMLOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       idp = Prelude.Nothing, masterBackendRole = Prelude.Nothing,
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