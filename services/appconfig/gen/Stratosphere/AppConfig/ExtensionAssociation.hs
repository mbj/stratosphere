module Stratosphere.AppConfig.ExtensionAssociation (
        ExtensionAssociation(..), mkExtensionAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ExtensionAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html>
    ExtensionAssociation {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html#cfn-appconfig-extensionassociation-extensionidentifier>
                          extensionIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html#cfn-appconfig-extensionassociation-extensionversionnumber>
                          extensionVersionNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html#cfn-appconfig-extensionassociation-parameters>
                          parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html#cfn-appconfig-extensionassociation-resourceidentifier>
                          resourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-extensionassociation.html#cfn-appconfig-extensionassociation-tags>
                          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExtensionAssociation :: ExtensionAssociation
mkExtensionAssociation
  = ExtensionAssociation
      {haddock_workaround_ = (), extensionIdentifier = Prelude.Nothing,
       extensionVersionNumber = Prelude.Nothing,
       parameters = Prelude.Nothing, resourceIdentifier = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ExtensionAssociation where
  toResourceProperties ExtensionAssociation {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::ExtensionAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExtensionIdentifier" Prelude.<$> extensionIdentifier,
                            (JSON..=) "ExtensionVersionNumber"
                              Prelude.<$> extensionVersionNumber,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ExtensionAssociation where
  toJSON ExtensionAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExtensionIdentifier" Prelude.<$> extensionIdentifier,
               (JSON..=) "ExtensionVersionNumber"
                 Prelude.<$> extensionVersionNumber,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "ResourceIdentifier" Prelude.<$> resourceIdentifier,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ExtensionIdentifier" ExtensionAssociation where
  type PropertyType "ExtensionIdentifier" ExtensionAssociation = Value Prelude.Text
  set newValue ExtensionAssociation {..}
    = ExtensionAssociation
        {extensionIdentifier = Prelude.pure newValue, ..}
instance Property "ExtensionVersionNumber" ExtensionAssociation where
  type PropertyType "ExtensionVersionNumber" ExtensionAssociation = Value Prelude.Integer
  set newValue ExtensionAssociation {..}
    = ExtensionAssociation
        {extensionVersionNumber = Prelude.pure newValue, ..}
instance Property "Parameters" ExtensionAssociation where
  type PropertyType "Parameters" ExtensionAssociation = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExtensionAssociation {..}
    = ExtensionAssociation {parameters = Prelude.pure newValue, ..}
instance Property "ResourceIdentifier" ExtensionAssociation where
  type PropertyType "ResourceIdentifier" ExtensionAssociation = Value Prelude.Text
  set newValue ExtensionAssociation {..}
    = ExtensionAssociation
        {resourceIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" ExtensionAssociation where
  type PropertyType "Tags" ExtensionAssociation = [Tag]
  set newValue ExtensionAssociation {..}
    = ExtensionAssociation {tags = Prelude.pure newValue, ..}