module Stratosphere.EMRServerless.Application.AutoStopConfigurationProperty (
        AutoStopConfigurationProperty(..), mkAutoStopConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoStopConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-autostopconfiguration.html>
    AutoStopConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-autostopconfiguration.html#cfn-emrserverless-application-autostopconfiguration-enabled>
                                   enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-autostopconfiguration.html#cfn-emrserverless-application-autostopconfiguration-idletimeoutminutes>
                                   idleTimeoutMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoStopConfigurationProperty :: AutoStopConfigurationProperty
mkAutoStopConfigurationProperty
  = AutoStopConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       idleTimeoutMinutes = Prelude.Nothing}
instance ToResourceProperties AutoStopConfigurationProperty where
  toResourceProperties AutoStopConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.AutoStopConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IdleTimeoutMinutes" Prelude.<$> idleTimeoutMinutes])}
instance JSON.ToJSON AutoStopConfigurationProperty where
  toJSON AutoStopConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IdleTimeoutMinutes" Prelude.<$> idleTimeoutMinutes]))
instance Property "Enabled" AutoStopConfigurationProperty where
  type PropertyType "Enabled" AutoStopConfigurationProperty = Value Prelude.Bool
  set newValue AutoStopConfigurationProperty {..}
    = AutoStopConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "IdleTimeoutMinutes" AutoStopConfigurationProperty where
  type PropertyType "IdleTimeoutMinutes" AutoStopConfigurationProperty = Value Prelude.Integer
  set newValue AutoStopConfigurationProperty {..}
    = AutoStopConfigurationProperty
        {idleTimeoutMinutes = Prelude.pure newValue, ..}