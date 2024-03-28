module Stratosphere.MediaLive.Channel.ThumbnailConfigurationProperty (
        ThumbnailConfigurationProperty(..),
        mkThumbnailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThumbnailConfigurationProperty
  = ThumbnailConfigurationProperty {state :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThumbnailConfigurationProperty :: ThumbnailConfigurationProperty
mkThumbnailConfigurationProperty
  = ThumbnailConfigurationProperty {state = Prelude.Nothing}
instance ToResourceProperties ThumbnailConfigurationProperty where
  toResourceProperties ThumbnailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ThumbnailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON ThumbnailConfigurationProperty where
  toJSON ThumbnailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "State" Prelude.<$> state]))
instance Property "State" ThumbnailConfigurationProperty where
  type PropertyType "State" ThumbnailConfigurationProperty = Value Prelude.Text
  set newValue ThumbnailConfigurationProperty {}
    = ThumbnailConfigurationProperty
        {state = Prelude.pure newValue, ..}