module Stratosphere.ImageBuilder.ImageRecipe (
        module Exports, ImageRecipe(..), mkImageRecipe
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.AdditionalInstanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.ComponentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.InstanceBlockDeviceMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageRecipe
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html>
    ImageRecipe {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-additionalinstanceconfiguration>
                 additionalInstanceConfiguration :: (Prelude.Maybe AdditionalInstanceConfigurationProperty),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-blockdevicemappings>
                 blockDeviceMappings :: (Prelude.Maybe [InstanceBlockDeviceMappingProperty]),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-components>
                 components :: [ComponentConfigurationProperty],
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-name>
                 name :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-parentimage>
                 parentImage :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-tags>
                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-version>
                 version :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-imagerecipe.html#cfn-imagebuilder-imagerecipe-workingdirectory>
                 workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageRecipe ::
  [ComponentConfigurationProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> ImageRecipe
mkImageRecipe components name parentImage version
  = ImageRecipe
      {components = components, name = name, parentImage = parentImage,
       version = version,
       additionalInstanceConfiguration = Prelude.Nothing,
       blockDeviceMappings = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing,
       workingDirectory = Prelude.Nothing}
instance ToResourceProperties ImageRecipe where
  toResourceProperties ImageRecipe {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Components" JSON..= components, "Name" JSON..= name,
                            "ParentImage" JSON..= parentImage, "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalInstanceConfiguration"
                                 Prelude.<$> additionalInstanceConfiguration,
                               (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory]))}
instance JSON.ToJSON ImageRecipe where
  toJSON ImageRecipe {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Components" JSON..= components, "Name" JSON..= name,
               "ParentImage" JSON..= parentImage, "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalInstanceConfiguration"
                    Prelude.<$> additionalInstanceConfiguration,
                  (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory])))
instance Property "AdditionalInstanceConfiguration" ImageRecipe where
  type PropertyType "AdditionalInstanceConfiguration" ImageRecipe = AdditionalInstanceConfigurationProperty
  set newValue ImageRecipe {..}
    = ImageRecipe
        {additionalInstanceConfiguration = Prelude.pure newValue, ..}
instance Property "BlockDeviceMappings" ImageRecipe where
  type PropertyType "BlockDeviceMappings" ImageRecipe = [InstanceBlockDeviceMappingProperty]
  set newValue ImageRecipe {..}
    = ImageRecipe {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "Components" ImageRecipe where
  type PropertyType "Components" ImageRecipe = [ComponentConfigurationProperty]
  set newValue ImageRecipe {..}
    = ImageRecipe {components = newValue, ..}
instance Property "Description" ImageRecipe where
  type PropertyType "Description" ImageRecipe = Value Prelude.Text
  set newValue ImageRecipe {..}
    = ImageRecipe {description = Prelude.pure newValue, ..}
instance Property "Name" ImageRecipe where
  type PropertyType "Name" ImageRecipe = Value Prelude.Text
  set newValue ImageRecipe {..} = ImageRecipe {name = newValue, ..}
instance Property "ParentImage" ImageRecipe where
  type PropertyType "ParentImage" ImageRecipe = Value Prelude.Text
  set newValue ImageRecipe {..}
    = ImageRecipe {parentImage = newValue, ..}
instance Property "Tags" ImageRecipe where
  type PropertyType "Tags" ImageRecipe = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ImageRecipe {..}
    = ImageRecipe {tags = Prelude.pure newValue, ..}
instance Property "Version" ImageRecipe where
  type PropertyType "Version" ImageRecipe = Value Prelude.Text
  set newValue ImageRecipe {..}
    = ImageRecipe {version = newValue, ..}
instance Property "WorkingDirectory" ImageRecipe where
  type PropertyType "WorkingDirectory" ImageRecipe = Value Prelude.Text
  set newValue ImageRecipe {..}
    = ImageRecipe {workingDirectory = Prelude.pure newValue, ..}