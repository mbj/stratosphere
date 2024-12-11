module Stratosphere.MediaLive.Input.MulticastSourceUpdateRequestProperty (
        MulticastSourceUpdateRequestProperty(..),
        mkMulticastSourceUpdateRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MulticastSourceUpdateRequestProperty
  = MulticastSourceUpdateRequestProperty {sourceIp :: (Prelude.Maybe (Value Prelude.Text)),
                                          url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastSourceUpdateRequestProperty ::
  MulticastSourceUpdateRequestProperty
mkMulticastSourceUpdateRequestProperty
  = MulticastSourceUpdateRequestProperty
      {sourceIp = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties MulticastSourceUpdateRequestProperty where
  toResourceProperties MulticastSourceUpdateRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MulticastSourceUpdateRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceIp" Prelude.<$> sourceIp,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON MulticastSourceUpdateRequestProperty where
  toJSON MulticastSourceUpdateRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceIp" Prelude.<$> sourceIp,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "SourceIp" MulticastSourceUpdateRequestProperty where
  type PropertyType "SourceIp" MulticastSourceUpdateRequestProperty = Value Prelude.Text
  set newValue MulticastSourceUpdateRequestProperty {..}
    = MulticastSourceUpdateRequestProperty
        {sourceIp = Prelude.pure newValue, ..}
instance Property "Url" MulticastSourceUpdateRequestProperty where
  type PropertyType "Url" MulticastSourceUpdateRequestProperty = Value Prelude.Text
  set newValue MulticastSourceUpdateRequestProperty {..}
    = MulticastSourceUpdateRequestProperty
        {url = Prelude.pure newValue, ..}