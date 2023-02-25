module Stratosphere.ResourceGroups.Group.ConfigurationParameterProperty (
        ConfigurationParameterProperty(..),
        mkConfigurationParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationParameterProperty
  = ConfigurationParameterProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                    values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkConfigurationParameterProperty :: ConfigurationParameterProperty
mkConfigurationParameterProperty
  = ConfigurationParameterProperty
      {name = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties ConfigurationParameterProperty where
  toResourceProperties ConfigurationParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResourceGroups::Group.ConfigurationParameter",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON ConfigurationParameterProperty where
  toJSON ConfigurationParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Name" ConfigurationParameterProperty where
  type PropertyType "Name" ConfigurationParameterProperty = Value Prelude.Text
  set newValue ConfigurationParameterProperty {..}
    = ConfigurationParameterProperty {name = Prelude.pure newValue, ..}
instance Property "Values" ConfigurationParameterProperty where
  type PropertyType "Values" ConfigurationParameterProperty = ValueList (Value Prelude.Text)
  set newValue ConfigurationParameterProperty {..}
    = ConfigurationParameterProperty
        {values = Prelude.pure newValue, ..}