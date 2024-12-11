module Stratosphere.MediaLive.Input.MulticastSourceCreateRequestProperty (
        MulticastSourceCreateRequestProperty(..),
        mkMulticastSourceCreateRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MulticastSourceCreateRequestProperty
  = MulticastSourceCreateRequestProperty {sourceIp :: (Prelude.Maybe (Value Prelude.Text)),
                                          url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastSourceCreateRequestProperty ::
  MulticastSourceCreateRequestProperty
mkMulticastSourceCreateRequestProperty
  = MulticastSourceCreateRequestProperty
      {sourceIp = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties MulticastSourceCreateRequestProperty where
  toResourceProperties MulticastSourceCreateRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.MulticastSourceCreateRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceIp" Prelude.<$> sourceIp,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON MulticastSourceCreateRequestProperty where
  toJSON MulticastSourceCreateRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceIp" Prelude.<$> sourceIp,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "SourceIp" MulticastSourceCreateRequestProperty where
  type PropertyType "SourceIp" MulticastSourceCreateRequestProperty = Value Prelude.Text
  set newValue MulticastSourceCreateRequestProperty {..}
    = MulticastSourceCreateRequestProperty
        {sourceIp = Prelude.pure newValue, ..}
instance Property "Url" MulticastSourceCreateRequestProperty where
  type PropertyType "Url" MulticastSourceCreateRequestProperty = Value Prelude.Text
  set newValue MulticastSourceCreateRequestProperty {..}
    = MulticastSourceCreateRequestProperty
        {url = Prelude.pure newValue, ..}