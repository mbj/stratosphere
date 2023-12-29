module Stratosphere.EC2.LaunchTemplate (
        module Exports, LaunchTemplate(..), mkLaunchTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.LaunchTemplateDataProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.LaunchTemplateTagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplate
  = LaunchTemplate {launchTemplateData :: LaunchTemplateDataProperty,
                    launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                    tagSpecifications :: (Prelude.Maybe [LaunchTemplateTagSpecificationProperty]),
                    versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplate :: LaunchTemplateDataProperty -> LaunchTemplate
mkLaunchTemplate launchTemplateData
  = LaunchTemplate
      {launchTemplateData = launchTemplateData,
       launchTemplateName = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing,
       versionDescription = Prelude.Nothing}
instance ToResourceProperties LaunchTemplate where
  toResourceProperties LaunchTemplate {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LaunchTemplateData" JSON..= launchTemplateData]
                           (Prelude.catMaybes
                              [(JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON LaunchTemplate where
  toJSON LaunchTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LaunchTemplateData" JSON..= launchTemplateData]
              (Prelude.catMaybes
                 [(JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "LaunchTemplateData" LaunchTemplate where
  type PropertyType "LaunchTemplateData" LaunchTemplate = LaunchTemplateDataProperty
  set newValue LaunchTemplate {..}
    = LaunchTemplate {launchTemplateData = newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplate where
  type PropertyType "LaunchTemplateName" LaunchTemplate = Value Prelude.Text
  set newValue LaunchTemplate {..}
    = LaunchTemplate {launchTemplateName = Prelude.pure newValue, ..}
instance Property "TagSpecifications" LaunchTemplate where
  type PropertyType "TagSpecifications" LaunchTemplate = [LaunchTemplateTagSpecificationProperty]
  set newValue LaunchTemplate {..}
    = LaunchTemplate {tagSpecifications = Prelude.pure newValue, ..}
instance Property "VersionDescription" LaunchTemplate where
  type PropertyType "VersionDescription" LaunchTemplate = Value Prelude.Text
  set newValue LaunchTemplate {..}
    = LaunchTemplate {versionDescription = Prelude.pure newValue, ..}