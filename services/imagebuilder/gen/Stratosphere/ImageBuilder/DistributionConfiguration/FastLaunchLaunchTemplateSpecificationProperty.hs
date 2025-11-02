module Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchLaunchTemplateSpecificationProperty (
        FastLaunchLaunchTemplateSpecificationProperty(..),
        mkFastLaunchLaunchTemplateSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FastLaunchLaunchTemplateSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification.html>
    FastLaunchLaunchTemplateSpecificationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification.html#cfn-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification-launchtemplateid>
                                                   launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification.html#cfn-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification-launchtemplatename>
                                                   launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification.html#cfn-imagebuilder-distributionconfiguration-fastlaunchlaunchtemplatespecification-launchtemplateversion>
                                                   launchTemplateVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFastLaunchLaunchTemplateSpecificationProperty ::
  FastLaunchLaunchTemplateSpecificationProperty
mkFastLaunchLaunchTemplateSpecificationProperty
  = FastLaunchLaunchTemplateSpecificationProperty
      {haddock_workaround_ = (), launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing,
       launchTemplateVersion = Prelude.Nothing}
instance ToResourceProperties FastLaunchLaunchTemplateSpecificationProperty where
  toResourceProperties
    FastLaunchLaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.FastLaunchLaunchTemplateSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                            (JSON..=) "LaunchTemplateVersion"
                              Prelude.<$> launchTemplateVersion])}
instance JSON.ToJSON FastLaunchLaunchTemplateSpecificationProperty where
  toJSON FastLaunchLaunchTemplateSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
               (JSON..=) "LaunchTemplateVersion"
                 Prelude.<$> launchTemplateVersion]))
instance Property "LaunchTemplateId" FastLaunchLaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateId" FastLaunchLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FastLaunchLaunchTemplateSpecificationProperty {..}
    = FastLaunchLaunchTemplateSpecificationProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" FastLaunchLaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateName" FastLaunchLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FastLaunchLaunchTemplateSpecificationProperty {..}
    = FastLaunchLaunchTemplateSpecificationProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "LaunchTemplateVersion" FastLaunchLaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateVersion" FastLaunchLaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue FastLaunchLaunchTemplateSpecificationProperty {..}
    = FastLaunchLaunchTemplateSpecificationProperty
        {launchTemplateVersion = Prelude.pure newValue, ..}