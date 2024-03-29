module Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BufferingHintsProperty :: Prelude.Type
instance ToResourceProperties BufferingHintsProperty
instance Prelude.Eq BufferingHintsProperty
instance Prelude.Show BufferingHintsProperty
instance JSON.ToJSON BufferingHintsProperty