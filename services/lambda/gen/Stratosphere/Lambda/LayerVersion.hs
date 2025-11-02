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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html>
    LayerVersion {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-compatiblearchitectures>
                  compatibleArchitectures :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-compatibleruntimes>
                  compatibleRuntimes :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-content>
                  content :: ContentProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-layername>
                  layerName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-licenseinfo>
                  licenseInfo :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLayerVersion :: ContentProperty -> LayerVersion
mkLayerVersion content
  = LayerVersion
      {haddock_workaround_ = (), content = content,
       compatibleArchitectures = Prelude.Nothing,
       compatibleRuntimes = Prelude.Nothing,
       description = Prelude.Nothing, layerName = Prelude.Nothing,
       licenseInfo = Prelude.Nothing}
instance ToResourceProperties LayerVersion where
  toResourceProperties LayerVersion {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::LayerVersion",
         supportsTags = Prelude.False,
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