module Stratosphere.SES.EmailIdentity.ConfigurationSetAttributesProperty (
        ConfigurationSetAttributesProperty(..),
        mkConfigurationSetAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationSetAttributesProperty
  = ConfigurationSetAttributesProperty {configurationSetName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationSetAttributesProperty ::
  ConfigurationSetAttributesProperty
mkConfigurationSetAttributesProperty
  = ConfigurationSetAttributesProperty
      {configurationSetName = Prelude.Nothing}
instance ToResourceProperties ConfigurationSetAttributesProperty where
  toResourceProperties ConfigurationSetAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::EmailIdentity.ConfigurationSetAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfigurationSetName"
                              Prelude.<$> configurationSetName])}
instance JSON.ToJSON ConfigurationSetAttributesProperty where
  toJSON ConfigurationSetAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfigurationSetName"
                 Prelude.<$> configurationSetName]))
instance Property "ConfigurationSetName" ConfigurationSetAttributesProperty where
  type PropertyType "ConfigurationSetName" ConfigurationSetAttributesProperty = Value Prelude.Text
  set newValue ConfigurationSetAttributesProperty {}
    = ConfigurationSetAttributesProperty
        {configurationSetName = Prelude.pure newValue, ..}