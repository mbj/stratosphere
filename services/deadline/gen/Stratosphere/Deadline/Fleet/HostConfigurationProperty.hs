module Stratosphere.Deadline.Fleet.HostConfigurationProperty (
        HostConfigurationProperty(..), mkHostConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-hostconfiguration.html>
    HostConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-hostconfiguration.html#cfn-deadline-fleet-hostconfiguration-scriptbody>
                               scriptBody :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-hostconfiguration.html#cfn-deadline-fleet-hostconfiguration-scripttimeoutseconds>
                               scriptTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostConfigurationProperty ::
  Value Prelude.Text -> HostConfigurationProperty
mkHostConfigurationProperty scriptBody
  = HostConfigurationProperty
      {haddock_workaround_ = (), scriptBody = scriptBody,
       scriptTimeoutSeconds = Prelude.Nothing}
instance ToResourceProperties HostConfigurationProperty where
  toResourceProperties HostConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.HostConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScriptBody" JSON..= scriptBody]
                           (Prelude.catMaybes
                              [(JSON..=) "ScriptTimeoutSeconds"
                                 Prelude.<$> scriptTimeoutSeconds]))}
instance JSON.ToJSON HostConfigurationProperty where
  toJSON HostConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScriptBody" JSON..= scriptBody]
              (Prelude.catMaybes
                 [(JSON..=) "ScriptTimeoutSeconds"
                    Prelude.<$> scriptTimeoutSeconds])))
instance Property "ScriptBody" HostConfigurationProperty where
  type PropertyType "ScriptBody" HostConfigurationProperty = Value Prelude.Text
  set newValue HostConfigurationProperty {..}
    = HostConfigurationProperty {scriptBody = newValue, ..}
instance Property "ScriptTimeoutSeconds" HostConfigurationProperty where
  type PropertyType "ScriptTimeoutSeconds" HostConfigurationProperty = Value Prelude.Integer
  set newValue HostConfigurationProperty {..}
    = HostConfigurationProperty
        {scriptTimeoutSeconds = Prelude.pure newValue, ..}