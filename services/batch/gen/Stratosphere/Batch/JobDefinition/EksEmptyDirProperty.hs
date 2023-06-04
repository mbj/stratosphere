module Stratosphere.Batch.JobDefinition.EksEmptyDirProperty (
        EksEmptyDirProperty(..), mkEksEmptyDirProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksEmptyDirProperty
  = EksEmptyDirProperty {medium :: (Prelude.Maybe (Value Prelude.Text)),
                         sizeLimit :: (Prelude.Maybe (Value Prelude.Text))}
mkEksEmptyDirProperty :: EksEmptyDirProperty
mkEksEmptyDirProperty
  = EksEmptyDirProperty
      {medium = Prelude.Nothing, sizeLimit = Prelude.Nothing}
instance ToResourceProperties EksEmptyDirProperty where
  toResourceProperties EksEmptyDirProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksEmptyDir",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Medium" Prelude.<$> medium,
                            (JSON..=) "SizeLimit" Prelude.<$> sizeLimit])}
instance JSON.ToJSON EksEmptyDirProperty where
  toJSON EksEmptyDirProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Medium" Prelude.<$> medium,
               (JSON..=) "SizeLimit" Prelude.<$> sizeLimit]))
instance Property "Medium" EksEmptyDirProperty where
  type PropertyType "Medium" EksEmptyDirProperty = Value Prelude.Text
  set newValue EksEmptyDirProperty {..}
    = EksEmptyDirProperty {medium = Prelude.pure newValue, ..}
instance Property "SizeLimit" EksEmptyDirProperty where
  type PropertyType "SizeLimit" EksEmptyDirProperty = Value Prelude.Text
  set newValue EksEmptyDirProperty {..}
    = EksEmptyDirProperty {sizeLimit = Prelude.pure newValue, ..}