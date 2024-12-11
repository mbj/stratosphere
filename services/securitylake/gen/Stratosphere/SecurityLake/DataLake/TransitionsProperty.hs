module Stratosphere.SecurityLake.DataLake.TransitionsProperty (
        TransitionsProperty(..), mkTransitionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitionsProperty
  = TransitionsProperty {days :: (Prelude.Maybe (Value Prelude.Integer)),
                         storageClass :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitionsProperty :: TransitionsProperty
mkTransitionsProperty
  = TransitionsProperty
      {days = Prelude.Nothing, storageClass = Prelude.Nothing}
instance ToResourceProperties TransitionsProperty where
  toResourceProperties TransitionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::DataLake.Transitions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Days" Prelude.<$> days,
                            (JSON..=) "StorageClass" Prelude.<$> storageClass])}
instance JSON.ToJSON TransitionsProperty where
  toJSON TransitionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Days" Prelude.<$> days,
               (JSON..=) "StorageClass" Prelude.<$> storageClass]))
instance Property "Days" TransitionsProperty where
  type PropertyType "Days" TransitionsProperty = Value Prelude.Integer
  set newValue TransitionsProperty {..}
    = TransitionsProperty {days = Prelude.pure newValue, ..}
instance Property "StorageClass" TransitionsProperty where
  type PropertyType "StorageClass" TransitionsProperty = Value Prelude.Text
  set newValue TransitionsProperty {..}
    = TransitionsProperty {storageClass = Prelude.pure newValue, ..}