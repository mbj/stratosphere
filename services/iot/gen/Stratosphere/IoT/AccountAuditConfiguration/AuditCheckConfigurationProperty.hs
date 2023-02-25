module Stratosphere.IoT.AccountAuditConfiguration.AuditCheckConfigurationProperty (
        AuditCheckConfigurationProperty(..),
        mkAuditCheckConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuditCheckConfigurationProperty
  = AuditCheckConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkAuditCheckConfigurationProperty ::
  AuditCheckConfigurationProperty
mkAuditCheckConfigurationProperty
  = AuditCheckConfigurationProperty {enabled = Prelude.Nothing}
instance ToResourceProperties AuditCheckConfigurationProperty where
  toResourceProperties AuditCheckConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.AuditCheckConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AuditCheckConfigurationProperty where
  toJSON AuditCheckConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AuditCheckConfigurationProperty where
  type PropertyType "Enabled" AuditCheckConfigurationProperty = Value Prelude.Bool
  set newValue AuditCheckConfigurationProperty {}
    = AuditCheckConfigurationProperty
        {enabled = Prelude.pure newValue, ..}