module Stratosphere.Batch.JobDefinition.EmptyDirProperty (
        EmptyDirProperty(..), mkEmptyDirProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmptyDirProperty
  = EmptyDirProperty {medium :: (Prelude.Maybe (Value Prelude.Text)),
                      sizeLimit :: (Prelude.Maybe (Value Prelude.Text))}
mkEmptyDirProperty :: EmptyDirProperty
mkEmptyDirProperty
  = EmptyDirProperty
      {medium = Prelude.Nothing, sizeLimit = Prelude.Nothing}
instance ToResourceProperties EmptyDirProperty where
  toResourceProperties EmptyDirProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EmptyDir",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Medium" Prelude.<$> medium,
                            (JSON..=) "SizeLimit" Prelude.<$> sizeLimit])}
instance JSON.ToJSON EmptyDirProperty where
  toJSON EmptyDirProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Medium" Prelude.<$> medium,
               (JSON..=) "SizeLimit" Prelude.<$> sizeLimit]))
instance Property "Medium" EmptyDirProperty where
  type PropertyType "Medium" EmptyDirProperty = Value Prelude.Text
  set newValue EmptyDirProperty {..}
    = EmptyDirProperty {medium = Prelude.pure newValue, ..}
instance Property "SizeLimit" EmptyDirProperty where
  type PropertyType "SizeLimit" EmptyDirProperty = Value Prelude.Text
  set newValue EmptyDirProperty {..}
    = EmptyDirProperty {sizeLimit = Prelude.pure newValue, ..}