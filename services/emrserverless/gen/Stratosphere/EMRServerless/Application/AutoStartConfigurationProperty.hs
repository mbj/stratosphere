module Stratosphere.EMRServerless.Application.AutoStartConfigurationProperty (
        AutoStartConfigurationProperty(..),
        mkAutoStartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoStartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-autostartconfiguration.html>
    AutoStartConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-autostartconfiguration.html#cfn-emrserverless-application-autostartconfiguration-enabled>
                                    enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoStartConfigurationProperty :: AutoStartConfigurationProperty
mkAutoStartConfigurationProperty
  = AutoStartConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties AutoStartConfigurationProperty where
  toResourceProperties AutoStartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.AutoStartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AutoStartConfigurationProperty where
  toJSON AutoStartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AutoStartConfigurationProperty where
  type PropertyType "Enabled" AutoStartConfigurationProperty = Value Prelude.Bool
  set newValue AutoStartConfigurationProperty {..}
    = AutoStartConfigurationProperty
        {enabled = Prelude.pure newValue, ..}