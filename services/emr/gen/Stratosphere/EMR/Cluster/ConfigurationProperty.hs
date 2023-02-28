module Stratosphere.EMR.Cluster.ConfigurationProperty (
        ConfigurationProperty(..), mkConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationProperty
  = ConfigurationProperty {classification :: (Prelude.Maybe (Value Prelude.Text)),
                           configurationProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                           configurations :: (Prelude.Maybe [ConfigurationProperty])}
mkConfigurationProperty :: ConfigurationProperty
mkConfigurationProperty
  = ConfigurationProperty
      {classification = Prelude.Nothing,
       configurationProperties = Prelude.Nothing,
       configurations = Prelude.Nothing}
instance ToResourceProperties ConfigurationProperty where
  toResourceProperties ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Classification" Prelude.<$> classification,
                            (JSON..=) "ConfigurationProperties"
                              Prelude.<$> configurationProperties,
                            (JSON..=) "Configurations" Prelude.<$> configurations])}
instance JSON.ToJSON ConfigurationProperty where
  toJSON ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Classification" Prelude.<$> classification,
               (JSON..=) "ConfigurationProperties"
                 Prelude.<$> configurationProperties,
               (JSON..=) "Configurations" Prelude.<$> configurations]))
instance Property "Classification" ConfigurationProperty where
  type PropertyType "Classification" ConfigurationProperty = Value Prelude.Text
  set newValue ConfigurationProperty {..}
    = ConfigurationProperty
        {classification = Prelude.pure newValue, ..}
instance Property "ConfigurationProperties" ConfigurationProperty where
  type PropertyType "ConfigurationProperties" ConfigurationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ConfigurationProperty {..}
    = ConfigurationProperty
        {configurationProperties = Prelude.pure newValue, ..}
instance Property "Configurations" ConfigurationProperty where
  type PropertyType "Configurations" ConfigurationProperty = [ConfigurationProperty]
  set newValue ConfigurationProperty {..}
    = ConfigurationProperty
        {configurations = Prelude.pure newValue, ..}