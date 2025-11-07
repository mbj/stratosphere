module Stratosphere.RUM.AppMonitor.DeobfuscationConfigurationProperty (
        module Exports, DeobfuscationConfigurationProperty(..),
        mkDeobfuscationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.JavaScriptSourceMapsProperty as Exports
import Stratosphere.ResourceProperties
data DeobfuscationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-deobfuscationconfiguration.html>
    DeobfuscationConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-deobfuscationconfiguration.html#cfn-rum-appmonitor-deobfuscationconfiguration-javascriptsourcemaps>
                                        javaScriptSourceMaps :: (Prelude.Maybe JavaScriptSourceMapsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeobfuscationConfigurationProperty ::
  DeobfuscationConfigurationProperty
mkDeobfuscationConfigurationProperty
  = DeobfuscationConfigurationProperty
      {haddock_workaround_ = (), javaScriptSourceMaps = Prelude.Nothing}
instance ToResourceProperties DeobfuscationConfigurationProperty where
  toResourceProperties DeobfuscationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.DeobfuscationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JavaScriptSourceMaps"
                              Prelude.<$> javaScriptSourceMaps])}
instance JSON.ToJSON DeobfuscationConfigurationProperty where
  toJSON DeobfuscationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JavaScriptSourceMaps"
                 Prelude.<$> javaScriptSourceMaps]))
instance Property "JavaScriptSourceMaps" DeobfuscationConfigurationProperty where
  type PropertyType "JavaScriptSourceMaps" DeobfuscationConfigurationProperty = JavaScriptSourceMapsProperty
  set newValue DeobfuscationConfigurationProperty {..}
    = DeobfuscationConfigurationProperty
        {javaScriptSourceMaps = Prelude.pure newValue, ..}