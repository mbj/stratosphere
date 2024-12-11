module Stratosphere.Batch.ComputeEnvironment.LaunchTemplateSpecificationProperty (
        module Exports, LaunchTemplateSpecificationProperty(..),
        mkLaunchTemplateSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.ComputeEnvironment.LaunchTemplateSpecificationOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateSpecificationProperty
  = LaunchTemplateSpecificationProperty {launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                                         launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                                         overrides :: (Prelude.Maybe [LaunchTemplateSpecificationOverrideProperty]),
                                         version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateSpecificationProperty ::
  LaunchTemplateSpecificationProperty
mkLaunchTemplateSpecificationProperty
  = LaunchTemplateSpecificationProperty
      {launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing, overrides = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateSpecificationProperty where
  toResourceProperties LaunchTemplateSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.LaunchTemplateSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                            (JSON..=) "Overrides" Prelude.<$> overrides,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON LaunchTemplateSpecificationProperty where
  toJSON LaunchTemplateSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
               (JSON..=) "Overrides" Prelude.<$> overrides,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "LaunchTemplateId" LaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplateSpecificationProperty where
  type PropertyType "LaunchTemplateName" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Overrides" LaunchTemplateSpecificationProperty where
  type PropertyType "Overrides" LaunchTemplateSpecificationProperty = [LaunchTemplateSpecificationOverrideProperty]
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {overrides = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateSpecificationProperty where
  type PropertyType "Version" LaunchTemplateSpecificationProperty = Value Prelude.Text
  set newValue LaunchTemplateSpecificationProperty {..}
    = LaunchTemplateSpecificationProperty
        {version = Prelude.pure newValue, ..}