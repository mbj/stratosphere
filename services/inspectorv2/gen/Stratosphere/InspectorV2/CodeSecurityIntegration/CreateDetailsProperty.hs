module Stratosphere.InspectorV2.CodeSecurityIntegration.CreateDetailsProperty (
        module Exports, CreateDetailsProperty(..), mkCreateDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CodeSecurityIntegration.CreateGitLabSelfManagedIntegrationDetailProperty as Exports
import Stratosphere.ResourceProperties
data CreateDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-createdetails.html>
    CreateDetailsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-createdetails.html#cfn-inspectorv2-codesecurityintegration-createdetails-gitlabselfmanaged>
                           gitlabSelfManaged :: CreateGitLabSelfManagedIntegrationDetailProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateDetailsProperty ::
  CreateGitLabSelfManagedIntegrationDetailProperty
  -> CreateDetailsProperty
mkCreateDetailsProperty gitlabSelfManaged
  = CreateDetailsProperty
      {haddock_workaround_ = (), gitlabSelfManaged = gitlabSelfManaged}
instance ToResourceProperties CreateDetailsProperty where
  toResourceProperties CreateDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration.CreateDetails",
         supportsTags = Prelude.False,
         properties = ["gitlabSelfManaged" JSON..= gitlabSelfManaged]}
instance JSON.ToJSON CreateDetailsProperty where
  toJSON CreateDetailsProperty {..}
    = JSON.object ["gitlabSelfManaged" JSON..= gitlabSelfManaged]
instance Property "gitlabSelfManaged" CreateDetailsProperty where
  type PropertyType "gitlabSelfManaged" CreateDetailsProperty = CreateGitLabSelfManagedIntegrationDetailProperty
  set newValue CreateDetailsProperty {..}
    = CreateDetailsProperty {gitlabSelfManaged = newValue, ..}