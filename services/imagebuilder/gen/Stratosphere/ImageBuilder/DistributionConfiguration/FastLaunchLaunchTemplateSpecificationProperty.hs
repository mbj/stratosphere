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
  = FastLaunchLaunchTemplateSpecificationProperty {launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                                   launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   launchTemplateVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkFastLaunchLaunchTemplateSpecificationProperty ::
  FastLaunchLaunchTemplateSpecificationProperty
mkFastLaunchLaunchTemplateSpecificationProperty
  = FastLaunchLaunchTemplateSpecificationProperty
      {launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing,
       launchTemplateVersion = Prelude.Nothing}
instance ToResourceProperties FastLaunchLaunchTemplateSpecificationProperty where
  toResourceProperties
    FastLaunchLaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.FastLaunchLaunchTemplateSpecification",
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