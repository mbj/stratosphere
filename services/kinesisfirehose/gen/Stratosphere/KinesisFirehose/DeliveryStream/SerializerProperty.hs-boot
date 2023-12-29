module Stratosphere.KinesisFirehose.DeliveryStream.SerializerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SerializerProperty :: Prelude.Type
instance ToResourceProperties SerializerProperty
instance Prelude.Eq SerializerProperty
instance Prelude.Show SerializerProperty
instance JSON.ToJSON SerializerProperty