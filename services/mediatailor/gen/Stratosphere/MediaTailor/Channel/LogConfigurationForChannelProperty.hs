module Stratosphere.MediaTailor.Channel.LogConfigurationForChannelProperty (
        LogConfigurationForChannelProperty(..),
        mkLogConfigurationForChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationForChannelProperty
  = LogConfigurationForChannelProperty {logTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationForChannelProperty ::
  LogConfigurationForChannelProperty
mkLogConfigurationForChannelProperty
  = LogConfigurationForChannelProperty {logTypes = Prelude.Nothing}
instance ToResourceProperties LogConfigurationForChannelProperty where
  toResourceProperties LogConfigurationForChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::Channel.LogConfigurationForChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "LogTypes" Prelude.<$> logTypes])}
instance JSON.ToJSON LogConfigurationForChannelProperty where
  toJSON LogConfigurationForChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "LogTypes" Prelude.<$> logTypes]))
instance Property "LogTypes" LogConfigurationForChannelProperty where
  type PropertyType "LogTypes" LogConfigurationForChannelProperty = ValueList Prelude.Text
  set newValue LogConfigurationForChannelProperty {}
    = LogConfigurationForChannelProperty
        {logTypes = Prelude.pure newValue, ..}