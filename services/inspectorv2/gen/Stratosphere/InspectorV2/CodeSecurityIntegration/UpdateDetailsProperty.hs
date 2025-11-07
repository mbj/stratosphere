module Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateDetailsProperty (
        module Exports, UpdateDetailsProperty(..), mkUpdateDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateGitHubIntegrationDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateGitLabSelfManagedIntegrationDetailProperty as Exports
import Stratosphere.ResourceProperties
data UpdateDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html>
    UpdateDetailsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html#cfn-inspectorv2-codesecurityintegration-updatedetails-github>
                           github :: (Prelude.Maybe UpdateGitHubIntegrationDetailProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html#cfn-inspectorv2-codesecurityintegration-updatedetails-gitlabselfmanaged>
                           gitlabSelfManaged :: (Prelude.Maybe UpdateGitLabSelfManagedIntegrationDetailProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateDetailsProperty :: UpdateDetailsProperty
mkUpdateDetailsProperty
  = UpdateDetailsProperty
      {haddock_workaround_ = (), github = Prelude.Nothing,
       gitlabSelfManaged = Prelude.Nothing}
instance ToResourceProperties UpdateDetailsProperty where
  toResourceProperties UpdateDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration.UpdateDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "github" Prelude.<$> github,
                            (JSON..=) "gitlabSelfManaged" Prelude.<$> gitlabSelfManaged])}
instance JSON.ToJSON UpdateDetailsProperty where
  toJSON UpdateDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "github" Prelude.<$> github,
               (JSON..=) "gitlabSelfManaged" Prelude.<$> gitlabSelfManaged]))
instance Property "github" UpdateDetailsProperty where
  type PropertyType "github" UpdateDetailsProperty = UpdateGitHubIntegrationDetailProperty
  set newValue UpdateDetailsProperty {..}
    = UpdateDetailsProperty {github = Prelude.pure newValue, ..}
instance Property "gitlabSelfManaged" UpdateDetailsProperty where
  type PropertyType "gitlabSelfManaged" UpdateDetailsProperty = UpdateGitLabSelfManagedIntegrationDetailProperty
  set newValue UpdateDetailsProperty {..}
    = UpdateDetailsProperty
        {gitlabSelfManaged = Prelude.pure newValue, ..}