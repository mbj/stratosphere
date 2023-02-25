module Stratosphere.MediaLive.Channel.InputAttachmentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputAttachmentProperty :: Prelude.Type
instance ToResourceProperties InputAttachmentProperty
instance JSON.ToJSON InputAttachmentProperty