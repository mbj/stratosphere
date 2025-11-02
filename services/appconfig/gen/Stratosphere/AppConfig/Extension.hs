module Stratosphere.AppConfig.Extension (
        module Exports, Extension(..), mkExtension
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.Extension.ParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Extension
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html>
    Extension {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-actions>
               actions :: JSON.Object,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-latestversionnumber>
               latestVersionNumber :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-parameters>
               parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ParameterProperty)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extension.html#cfn-appconfig-extension-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtension :: JSON.Object -> Value Prelude.Text -> Extension
mkExtension actions name
  = Extension
      {haddock_workaround_ = (), actions = actions, name = name,
       description = Prelude.Nothing,
       latestVersionNumber = Prelude.Nothing,
       parameters = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Extension where
  toResourceProperties Extension {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Extension",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LatestVersionNumber" Prelude.<$> latestVersionNumber,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Extension where
  toJSON Extension {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LatestVersionNumber" Prelude.<$> latestVersionNumber,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Actions" Extension where
  type PropertyType "Actions" Extension = JSON.Object
  set newValue Extension {..} = Extension {actions = newValue, ..}
instance Property "Description" Extension where
  type PropertyType "Description" Extension = Value Prelude.Text
  set newValue Extension {..}
    = Extension {description = Prelude.pure newValue, ..}
instance Property "LatestVersionNumber" Extension where
  type PropertyType "LatestVersionNumber" Extension = Value Prelude.Integer
  set newValue Extension {..}
    = Extension {latestVersionNumber = Prelude.pure newValue, ..}
instance Property "Name" Extension where
  type PropertyType "Name" Extension = Value Prelude.Text
  set newValue Extension {..} = Extension {name = newValue, ..}
instance Property "Parameters" Extension where
  type PropertyType "Parameters" Extension = Prelude.Map Prelude.Text ParameterProperty
  set newValue Extension {..}
    = Extension {parameters = Prelude.pure newValue, ..}
instance Property "Tags" Extension where
  type PropertyType "Tags" Extension = [Tag]
  set newValue Extension {..}
    = Extension {tags = Prelude.pure newValue, ..}