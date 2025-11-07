module Stratosphere.SageMaker.Domain.UnifiedStudioSettingsProperty (
        UnifiedStudioSettingsProperty(..), mkUnifiedStudioSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnifiedStudioSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html>
    UnifiedStudioSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-domainaccountid>
                                   domainAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-domainid>
                                   domainId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-domainregion>
                                   domainRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-environmentid>
                                   environmentId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-projectid>
                                   projectId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-projects3path>
                                   projectS3Path :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-unifiedstudiosettings.html#cfn-sagemaker-domain-unifiedstudiosettings-studiowebportalaccess>
                                   studioWebPortalAccess :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnifiedStudioSettingsProperty :: UnifiedStudioSettingsProperty
mkUnifiedStudioSettingsProperty
  = UnifiedStudioSettingsProperty
      {haddock_workaround_ = (), domainAccountId = Prelude.Nothing,
       domainId = Prelude.Nothing, domainRegion = Prelude.Nothing,
       environmentId = Prelude.Nothing, projectId = Prelude.Nothing,
       projectS3Path = Prelude.Nothing,
       studioWebPortalAccess = Prelude.Nothing}
instance ToResourceProperties UnifiedStudioSettingsProperty where
  toResourceProperties UnifiedStudioSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.UnifiedStudioSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainAccountId" Prelude.<$> domainAccountId,
                            (JSON..=) "DomainId" Prelude.<$> domainId,
                            (JSON..=) "DomainRegion" Prelude.<$> domainRegion,
                            (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
                            (JSON..=) "ProjectId" Prelude.<$> projectId,
                            (JSON..=) "ProjectS3Path" Prelude.<$> projectS3Path,
                            (JSON..=) "StudioWebPortalAccess"
                              Prelude.<$> studioWebPortalAccess])}
instance JSON.ToJSON UnifiedStudioSettingsProperty where
  toJSON UnifiedStudioSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainAccountId" Prelude.<$> domainAccountId,
               (JSON..=) "DomainId" Prelude.<$> domainId,
               (JSON..=) "DomainRegion" Prelude.<$> domainRegion,
               (JSON..=) "EnvironmentId" Prelude.<$> environmentId,
               (JSON..=) "ProjectId" Prelude.<$> projectId,
               (JSON..=) "ProjectS3Path" Prelude.<$> projectS3Path,
               (JSON..=) "StudioWebPortalAccess"
                 Prelude.<$> studioWebPortalAccess]))
instance Property "DomainAccountId" UnifiedStudioSettingsProperty where
  type PropertyType "DomainAccountId" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {domainAccountId = Prelude.pure newValue, ..}
instance Property "DomainId" UnifiedStudioSettingsProperty where
  type PropertyType "DomainId" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {domainId = Prelude.pure newValue, ..}
instance Property "DomainRegion" UnifiedStudioSettingsProperty where
  type PropertyType "DomainRegion" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {domainRegion = Prelude.pure newValue, ..}
instance Property "EnvironmentId" UnifiedStudioSettingsProperty where
  type PropertyType "EnvironmentId" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {environmentId = Prelude.pure newValue, ..}
instance Property "ProjectId" UnifiedStudioSettingsProperty where
  type PropertyType "ProjectId" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {projectId = Prelude.pure newValue, ..}
instance Property "ProjectS3Path" UnifiedStudioSettingsProperty where
  type PropertyType "ProjectS3Path" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {projectS3Path = Prelude.pure newValue, ..}
instance Property "StudioWebPortalAccess" UnifiedStudioSettingsProperty where
  type PropertyType "StudioWebPortalAccess" UnifiedStudioSettingsProperty = Value Prelude.Text
  set newValue UnifiedStudioSettingsProperty {..}
    = UnifiedStudioSettingsProperty
        {studioWebPortalAccess = Prelude.pure newValue, ..}