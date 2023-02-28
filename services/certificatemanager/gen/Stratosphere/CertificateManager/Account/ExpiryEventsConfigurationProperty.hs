module Stratosphere.CertificateManager.Account.ExpiryEventsConfigurationProperty (
        ExpiryEventsConfigurationProperty(..),
        mkExpiryEventsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExpiryEventsConfigurationProperty
  = ExpiryEventsConfigurationProperty {daysBeforeExpiry :: (Prelude.Maybe (Value Prelude.Integer))}
mkExpiryEventsConfigurationProperty ::
  ExpiryEventsConfigurationProperty
mkExpiryEventsConfigurationProperty
  = ExpiryEventsConfigurationProperty
      {daysBeforeExpiry = Prelude.Nothing}
instance ToResourceProperties ExpiryEventsConfigurationProperty where
  toResourceProperties ExpiryEventsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CertificateManager::Account.ExpiryEventsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DaysBeforeExpiry" Prelude.<$> daysBeforeExpiry])}
instance JSON.ToJSON ExpiryEventsConfigurationProperty where
  toJSON ExpiryEventsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DaysBeforeExpiry" Prelude.<$> daysBeforeExpiry]))
instance Property "DaysBeforeExpiry" ExpiryEventsConfigurationProperty where
  type PropertyType "DaysBeforeExpiry" ExpiryEventsConfigurationProperty = Value Prelude.Integer
  set newValue ExpiryEventsConfigurationProperty {}
    = ExpiryEventsConfigurationProperty
        {daysBeforeExpiry = Prelude.pure newValue, ..}