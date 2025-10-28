module Stratosphere.CodePipeline.CustomActionType (
        module Exports, CustomActionType(..), mkCustomActionType
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodePipeline.CustomActionType.ArtifactDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.CustomActionType.ConfigurationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CodePipeline.CustomActionType.SettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomActionType
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html>
    CustomActionType {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-category>
                      category :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-configurationproperties>
                      configurationProperties :: (Prelude.Maybe [ConfigurationPropertiesProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-inputartifactdetails>
                      inputArtifactDetails :: ArtifactDetailsProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-outputartifactdetails>
                      outputArtifactDetails :: ArtifactDetailsProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-provider>
                      provider :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-settings>
                      settings :: (Prelude.Maybe SettingsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-version>
                      version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionType ::
  Value Prelude.Text
  -> ArtifactDetailsProperty
     -> ArtifactDetailsProperty
        -> Value Prelude.Text -> Value Prelude.Text -> CustomActionType
mkCustomActionType
  category
  inputArtifactDetails
  outputArtifactDetails
  provider
  version
  = CustomActionType
      {haddock_workaround_ = (), category = category,
       inputArtifactDetails = inputArtifactDetails,
       outputArtifactDetails = outputArtifactDetails, provider = provider,
       version = version, configurationProperties = Prelude.Nothing,
       settings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomActionType where
  toResourceProperties CustomActionType {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::CustomActionType",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Category" JSON..= category,
                            "InputArtifactDetails" JSON..= inputArtifactDetails,
                            "OutputArtifactDetails" JSON..= outputArtifactDetails,
                            "Provider" JSON..= provider, "Version" JSON..= version]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfigurationProperties"
                                 Prelude.<$> configurationProperties,
                               (JSON..=) "Settings" Prelude.<$> settings,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomActionType where
  toJSON CustomActionType {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Category" JSON..= category,
               "InputArtifactDetails" JSON..= inputArtifactDetails,
               "OutputArtifactDetails" JSON..= outputArtifactDetails,
               "Provider" JSON..= provider, "Version" JSON..= version]
              (Prelude.catMaybes
                 [(JSON..=) "ConfigurationProperties"
                    Prelude.<$> configurationProperties,
                  (JSON..=) "Settings" Prelude.<$> settings,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Category" CustomActionType where
  type PropertyType "Category" CustomActionType = Value Prelude.Text
  set newValue CustomActionType {..}
    = CustomActionType {category = newValue, ..}
instance Property "ConfigurationProperties" CustomActionType where
  type PropertyType "ConfigurationProperties" CustomActionType = [ConfigurationPropertiesProperty]
  set newValue CustomActionType {..}
    = CustomActionType
        {configurationProperties = Prelude.pure newValue, ..}
instance Property "InputArtifactDetails" CustomActionType where
  type PropertyType "InputArtifactDetails" CustomActionType = ArtifactDetailsProperty
  set newValue CustomActionType {..}
    = CustomActionType {inputArtifactDetails = newValue, ..}
instance Property "OutputArtifactDetails" CustomActionType where
  type PropertyType "OutputArtifactDetails" CustomActionType = ArtifactDetailsProperty
  set newValue CustomActionType {..}
    = CustomActionType {outputArtifactDetails = newValue, ..}
instance Property "Provider" CustomActionType where
  type PropertyType "Provider" CustomActionType = Value Prelude.Text
  set newValue CustomActionType {..}
    = CustomActionType {provider = newValue, ..}
instance Property "Settings" CustomActionType where
  type PropertyType "Settings" CustomActionType = SettingsProperty
  set newValue CustomActionType {..}
    = CustomActionType {settings = Prelude.pure newValue, ..}
instance Property "Tags" CustomActionType where
  type PropertyType "Tags" CustomActionType = [Tag]
  set newValue CustomActionType {..}
    = CustomActionType {tags = Prelude.pure newValue, ..}
instance Property "Version" CustomActionType where
  type PropertyType "Version" CustomActionType = Value Prelude.Text
  set newValue CustomActionType {..}
    = CustomActionType {version = newValue, ..}