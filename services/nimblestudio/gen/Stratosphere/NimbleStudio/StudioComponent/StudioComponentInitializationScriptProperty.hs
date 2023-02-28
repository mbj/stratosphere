module Stratosphere.NimbleStudio.StudioComponent.StudioComponentInitializationScriptProperty (
        StudioComponentInitializationScriptProperty(..),
        mkStudioComponentInitializationScriptProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioComponentInitializationScriptProperty
  = StudioComponentInitializationScriptProperty {launchProfileProtocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                                 platform :: (Prelude.Maybe (Value Prelude.Text)),
                                                 runContext :: (Prelude.Maybe (Value Prelude.Text)),
                                                 script :: (Prelude.Maybe (Value Prelude.Text))}
mkStudioComponentInitializationScriptProperty ::
  StudioComponentInitializationScriptProperty
mkStudioComponentInitializationScriptProperty
  = StudioComponentInitializationScriptProperty
      {launchProfileProtocolVersion = Prelude.Nothing,
       platform = Prelude.Nothing, runContext = Prelude.Nothing,
       script = Prelude.Nothing}
instance ToResourceProperties StudioComponentInitializationScriptProperty where
  toResourceProperties
    StudioComponentInitializationScriptProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.StudioComponentInitializationScript",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchProfileProtocolVersion"
                              Prelude.<$> launchProfileProtocolVersion,
                            (JSON..=) "Platform" Prelude.<$> platform,
                            (JSON..=) "RunContext" Prelude.<$> runContext,
                            (JSON..=) "Script" Prelude.<$> script])}
instance JSON.ToJSON StudioComponentInitializationScriptProperty where
  toJSON StudioComponentInitializationScriptProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchProfileProtocolVersion"
                 Prelude.<$> launchProfileProtocolVersion,
               (JSON..=) "Platform" Prelude.<$> platform,
               (JSON..=) "RunContext" Prelude.<$> runContext,
               (JSON..=) "Script" Prelude.<$> script]))
instance Property "LaunchProfileProtocolVersion" StudioComponentInitializationScriptProperty where
  type PropertyType "LaunchProfileProtocolVersion" StudioComponentInitializationScriptProperty = Value Prelude.Text
  set newValue StudioComponentInitializationScriptProperty {..}
    = StudioComponentInitializationScriptProperty
        {launchProfileProtocolVersion = Prelude.pure newValue, ..}
instance Property "Platform" StudioComponentInitializationScriptProperty where
  type PropertyType "Platform" StudioComponentInitializationScriptProperty = Value Prelude.Text
  set newValue StudioComponentInitializationScriptProperty {..}
    = StudioComponentInitializationScriptProperty
        {platform = Prelude.pure newValue, ..}
instance Property "RunContext" StudioComponentInitializationScriptProperty where
  type PropertyType "RunContext" StudioComponentInitializationScriptProperty = Value Prelude.Text
  set newValue StudioComponentInitializationScriptProperty {..}
    = StudioComponentInitializationScriptProperty
        {runContext = Prelude.pure newValue, ..}
instance Property "Script" StudioComponentInitializationScriptProperty where
  type PropertyType "Script" StudioComponentInitializationScriptProperty = Value Prelude.Text
  set newValue StudioComponentInitializationScriptProperty {..}
    = StudioComponentInitializationScriptProperty
        {script = Prelude.pure newValue, ..}