module Stratosphere.OpenSearchService.Domain.IAMFederationOptionsProperty (
        IAMFederationOptionsProperty(..), mkIAMFederationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IAMFederationOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-iamfederationoptions.html>
    IAMFederationOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-iamfederationoptions.html#cfn-opensearchservice-domain-iamfederationoptions-enabled>
                                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-iamfederationoptions.html#cfn-opensearchservice-domain-iamfederationoptions-roleskey>
                                  rolesKey :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-iamfederationoptions.html#cfn-opensearchservice-domain-iamfederationoptions-subjectkey>
                                  subjectKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIAMFederationOptionsProperty :: IAMFederationOptionsProperty
mkIAMFederationOptionsProperty
  = IAMFederationOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       rolesKey = Prelude.Nothing, subjectKey = Prelude.Nothing}
instance ToResourceProperties IAMFederationOptionsProperty where
  toResourceProperties IAMFederationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.IAMFederationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "RolesKey" Prelude.<$> rolesKey,
                            (JSON..=) "SubjectKey" Prelude.<$> subjectKey])}
instance JSON.ToJSON IAMFederationOptionsProperty where
  toJSON IAMFederationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "RolesKey" Prelude.<$> rolesKey,
               (JSON..=) "SubjectKey" Prelude.<$> subjectKey]))
instance Property "Enabled" IAMFederationOptionsProperty where
  type PropertyType "Enabled" IAMFederationOptionsProperty = Value Prelude.Bool
  set newValue IAMFederationOptionsProperty {..}
    = IAMFederationOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "RolesKey" IAMFederationOptionsProperty where
  type PropertyType "RolesKey" IAMFederationOptionsProperty = Value Prelude.Text
  set newValue IAMFederationOptionsProperty {..}
    = IAMFederationOptionsProperty
        {rolesKey = Prelude.pure newValue, ..}
instance Property "SubjectKey" IAMFederationOptionsProperty where
  type PropertyType "SubjectKey" IAMFederationOptionsProperty = Value Prelude.Text
  set newValue IAMFederationOptionsProperty {..}
    = IAMFederationOptionsProperty
        {subjectKey = Prelude.pure newValue, ..}