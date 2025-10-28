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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentinitializationscript.html>
    StudioComponentInitializationScriptProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentinitializationscript.html#cfn-nimblestudio-studiocomponent-studiocomponentinitializationscript-launchprofileprotocolversion>
                                                 launchProfileProtocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentinitializationscript.html#cfn-nimblestudio-studiocomponent-studiocomponentinitializationscript-platform>
                                                 platform :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentinitializationscript.html#cfn-nimblestudio-studiocomponent-studiocomponentinitializationscript-runcontext>
                                                 runContext :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentinitializationscript.html#cfn-nimblestudio-studiocomponent-studiocomponentinitializationscript-script>
                                                 script :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioComponentInitializationScriptProperty ::
  StudioComponentInitializationScriptProperty
mkStudioComponentInitializationScriptProperty
  = StudioComponentInitializationScriptProperty
      {haddock_workaround_ = (),
       launchProfileProtocolVersion = Prelude.Nothing,
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