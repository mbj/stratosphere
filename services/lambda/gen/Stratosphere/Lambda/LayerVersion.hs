module Stratosphere.Lambda.LayerVersion (
        module Exports, LayerVersion(..), mkLayerVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.LayerVersion.ContentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LayerVersion
  = LayerVersion {compatibleArchitectures :: (Prelude.Maybe (ValueList Prelude.Text)),
                  compatibleRuntimes :: (Prelude.Maybe (ValueList Prelude.Text)),
                  content :: ContentProperty,
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  layerName :: (Prelude.Maybe (Value Prelude.Text)),
                  licenseInfo :: (Prelude.Maybe (Value Prelude.Text))}
mkLayerVersion :: ContentProperty -> LayerVersion
mkLayerVersion content
  = LayerVersion
      {content = content, compatibleArchitectures = Prelude.Nothing,
       compatibleRuntimes = Prelude.Nothing,
       description = Prelude.Nothing, layerName = Prelude.Nothing,
       licenseInfo = Prelude.Nothing}
instance ToResourceProperties LayerVersion where
  toResourceProperties LayerVersion {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::LayerVersion",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Content" JSON..= content]
                           (Prelude.catMaybes
                              [(JSON..=) "CompatibleArchitectures"
                                 Prelude.<$> compatibleArchitectures,
                               (JSON..=) "CompatibleRuntimes" Prelude.<$> compatibleRuntimes,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LayerName" Prelude.<$> layerName,
                               (JSON..=) "LicenseInfo" Prelude.<$> licenseInfo]))}
instance JSON.ToJSON LayerVersion where
  toJSON LayerVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Content" JSON..= content]
              (Prelude.catMaybes
                 [(JSON..=) "CompatibleArchitectures"
                    Prelude.<$> compatibleArchitectures,
                  (JSON..=) "CompatibleRuntimes" Prelude.<$> compatibleRuntimes,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LayerName" Prelude.<$> layerName,
                  (JSON..=) "LicenseInfo" Prelude.<$> licenseInfo])))
instance Property "CompatibleArchitectures" LayerVersion where
  type PropertyType "CompatibleArchitectures" LayerVersion = ValueList Prelude.Text
  set newValue LayerVersion {..}
    = LayerVersion
        {compatibleArchitectures = Prelude.pure newValue, ..}
instance Property "CompatibleRuntimes" LayerVersion where
  type PropertyType "CompatibleRuntimes" LayerVersion = ValueList Prelude.Text
  set newValue LayerVersion {..}
    = LayerVersion {compatibleRuntimes = Prelude.pure newValue, ..}
instance Property "Content" LayerVersion where
  type PropertyType "Content" LayerVersion = ContentProperty
  set newValue LayerVersion {..}
    = LayerVersion {content = newValue, ..}
instance Property "Description" LayerVersion where
  type PropertyType "Description" LayerVersion = Value Prelude.Text
  set newValue LayerVersion {..}
    = LayerVersion {description = Prelude.pure newValue, ..}
instance Property "LayerName" LayerVersion where
  type PropertyType "LayerName" LayerVersion = Value Prelude.Text
  set newValue LayerVersion {..}
    = LayerVersion {layerName = Prelude.pure newValue, ..}
instance Property "LicenseInfo" LayerVersion where
  type PropertyType "LicenseInfo" LayerVersion = Value Prelude.Text
  set newValue LayerVersion {..}
    = LayerVersion {licenseInfo = Prelude.pure newValue, ..}