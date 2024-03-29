module Stratosphere.KinesisFirehose.DeliveryStream.DeserializerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeserializerProperty :: Prelude.Type
instance ToResourceProperties DeserializerProperty
instance Prelude.Eq DeserializerProperty
instance Prelude.Show DeserializerProperty
instance JSON.ToJSON DeserializerProperty