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
  = CustomActionType {category :: (Value Prelude.Text),
                      configurationProperties :: (Prelude.Maybe [ConfigurationPropertiesProperty]),
                      inputArtifactDetails :: ArtifactDetailsProperty,
                      outputArtifactDetails :: ArtifactDetailsProperty,
                      provider :: (Value Prelude.Text),
                      settings :: (Prelude.Maybe SettingsProperty),
                      tags :: (Prelude.Maybe [Tag]),
                      version :: (Value Prelude.Text)}
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
      {category = category, inputArtifactDetails = inputArtifactDetails,
       outputArtifactDetails = outputArtifactDetails, provider = provider,
       version = version, configurationProperties = Prelude.Nothing,
       settings = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomActionType where
  toResourceProperties CustomActionType {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::CustomActionType",
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