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
  = StudioComponent {configuration :: (Prelude.Maybe StudioComponentConfigurationProperty),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     ec2SecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                     initializationScripts :: (Prelude.Maybe [StudioComponentInitializationScriptProperty]),
                     name :: (Value Prelude.Text),
                     scriptParameters :: (Prelude.Maybe [ScriptParameterKeyValueProperty]),
                     studioId :: (Value Prelude.Text),
                     subtype :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     type' :: (Value Prelude.Text)}
mkStudioComponent ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> StudioComponent
mkStudioComponent name studioId type'
  = StudioComponent
      {name = name, studioId = studioId, type' = type',
       configuration = Prelude.Nothing, description = Prelude.Nothing,
       ec2SecurityGroupIds = Prelude.Nothing,
       initializationScripts = Prelude.Nothing,
       scriptParameters = Prelude.Nothing, subtype = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties StudioComponent where
  toResourceProperties StudioComponent {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent",
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