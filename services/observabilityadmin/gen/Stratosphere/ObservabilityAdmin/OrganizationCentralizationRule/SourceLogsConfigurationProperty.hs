module Stratosphere.ObservabilityAdmin.OrganizationCentralizationRule.SourceLogsConfigurationProperty (
        SourceLogsConfigurationProperty(..),
        mkSourceLogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceLogsConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-sourcelogsconfiguration.html>
    SourceLogsConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-sourcelogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-sourcelogsconfiguration-encryptedloggroupstrategy>
                                     encryptedLogGroupStrategy :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-sourcelogsconfiguration.html#cfn-observabilityadmin-organizationcentralizationrule-sourcelogsconfiguration-loggroupselectioncriteria>
                                     logGroupSelectionCriteria :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceLogsConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SourceLogsConfigurationProperty
mkSourceLogsConfigurationProperty
  encryptedLogGroupStrategy
  logGroupSelectionCriteria
  = SourceLogsConfigurationProperty
      {haddock_workaround_ = (),
       encryptedLogGroupStrategy = encryptedLogGroupStrategy,
       logGroupSelectionCriteria = logGroupSelectionCriteria}
instance ToResourceProperties SourceLogsConfigurationProperty where
  toResourceProperties SourceLogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ObservabilityAdmin::OrganizationCentralizationRule.SourceLogsConfiguration",
         supportsTags = Prelude.False,
         properties = ["EncryptedLogGroupStrategy"
                         JSON..= encryptedLogGroupStrategy,
                       "LogGroupSelectionCriteria" JSON..= logGroupSelectionCriteria]}
instance JSON.ToJSON SourceLogsConfigurationProperty where
  toJSON SourceLogsConfigurationProperty {..}
    = JSON.object
        ["EncryptedLogGroupStrategy" JSON..= encryptedLogGroupStrategy,
         "LogGroupSelectionCriteria" JSON..= logGroupSelectionCriteria]
instance Property "EncryptedLogGroupStrategy" SourceLogsConfigurationProperty where
  type PropertyType "EncryptedLogGroupStrategy" SourceLogsConfigurationProperty = Value Prelude.Text
  set newValue SourceLogsConfigurationProperty {..}
    = SourceLogsConfigurationProperty
        {encryptedLogGroupStrategy = newValue, ..}
instance Property "LogGroupSelectionCriteria" SourceLogsConfigurationProperty where
  type PropertyType "LogGroupSelectionCriteria" SourceLogsConfigurationProperty = Value Prelude.Text
  set newValue SourceLogsConfigurationProperty {..}
    = SourceLogsConfigurationProperty
        {logGroupSelectionCriteria = newValue, ..}