module Stratosphere.NimbleStudio.StudioComponent (
        module Exports, StudioComponent(..), mkStudioComponent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.ScriptParameterKeyValueProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.StudioComponentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.StudioComponentInitializationScriptProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioComponent
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html>
    StudioComponent {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-configuration>
                     configuration :: (Prelude.Maybe StudioComponentConfigurationProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-ec2securitygroupids>
                     ec2SecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-initializationscripts>
                     initializationScripts :: (Prelude.Maybe [StudioComponentInitializationScriptProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-scriptparameters>
                     scriptParameters :: (Prelude.Maybe [ScriptParameterKeyValueProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-studioid>
                     studioId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-subtype>
                     subtype :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-tags>
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-nimblestudio-studiocomponent.html#cfn-nimblestudio-studiocomponent-type>
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioComponent ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StudioComponent
mkStudioComponent name studioId type'
  = StudioComponent
      {haddock_workaround_ = (), name = name, studioId = studioId,
       type' = type', configuration = Prelude.Nothing,
       description = Prelude.Nothing,
       ec2SecurityGroupIds = Prelude.Nothing,
       initializationScripts = Prelude.Nothing,
       scriptParameters = Prelude.Nothing, subtype = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties StudioComponent where
  toResourceProperties StudioComponent {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "StudioId" JSON..= studioId,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Ec2SecurityGroupIds" Prelude.<$> ec2SecurityGroupIds,
                               (JSON..=) "InitializationScripts"
                                 Prelude.<$> initializationScripts,
                               (JSON..=) "ScriptParameters" Prelude.<$> scriptParameters,
                               (JSON..=) "Subtype" Prelude.<$> subtype,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StudioComponent where
  toJSON StudioComponent {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "StudioId" JSON..= studioId,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Ec2SecurityGroupIds" Prelude.<$> ec2SecurityGroupIds,
                  (JSON..=) "InitializationScripts"
                    Prelude.<$> initializationScripts,
                  (JSON..=) "ScriptParameters" Prelude.<$> scriptParameters,
                  (JSON..=) "Subtype" Prelude.<$> subtype,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Configuration" StudioComponent where
  type PropertyType "Configuration" StudioComponent = StudioComponentConfigurationProperty
  set newValue StudioComponent {..}
    = StudioComponent {configuration = Prelude.pure newValue, ..}
instance Property "Description" StudioComponent where
  type PropertyType "Description" StudioComponent = Value Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {description = Prelude.pure newValue, ..}
instance Property "Ec2SecurityGroupIds" StudioComponent where
  type PropertyType "Ec2SecurityGroupIds" StudioComponent = ValueList Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {ec2SecurityGroupIds = Prelude.pure newValue, ..}
instance Property "InitializationScripts" StudioComponent where
  type PropertyType "InitializationScripts" StudioComponent = [StudioComponentInitializationScriptProperty]
  set newValue StudioComponent {..}
    = StudioComponent
        {initializationScripts = Prelude.pure newValue, ..}
instance Property "Name" StudioComponent where
  type PropertyType "Name" StudioComponent = Value Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {name = newValue, ..}
instance Property "ScriptParameters" StudioComponent where
  type PropertyType "ScriptParameters" StudioComponent = [ScriptParameterKeyValueProperty]
  set newValue StudioComponent {..}
    = StudioComponent {scriptParameters = Prelude.pure newValue, ..}
instance Property "StudioId" StudioComponent where
  type PropertyType "StudioId" StudioComponent = Value Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {studioId = newValue, ..}
instance Property "Subtype" StudioComponent where
  type PropertyType "Subtype" StudioComponent = Value Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {subtype = Prelude.pure newValue, ..}
instance Property "Tags" StudioComponent where
  type PropertyType "Tags" StudioComponent = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue StudioComponent {..}
    = StudioComponent {tags = Prelude.pure newValue, ..}
instance Property "Type" StudioComponent where
  type PropertyType "Type" StudioComponent = Value Prelude.Text
  set newValue StudioComponent {..}
    = StudioComponent {type' = newValue, ..}