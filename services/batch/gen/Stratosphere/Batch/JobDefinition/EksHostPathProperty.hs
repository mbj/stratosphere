module Stratosphere.Batch.JobDefinition.EksHostPathProperty (
        EksHostPathProperty(..), mkEksHostPathProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksHostPathProperty
  = EksHostPathProperty {path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksHostPathProperty :: EksHostPathProperty
mkEksHostPathProperty
  = EksHostPathProperty {path = Prelude.Nothing}
instance ToResourceProperties EksHostPathProperty where
  toResourceProperties EksHostPathProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksHostPath",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON EksHostPathProperty where
  toJSON EksHostPathProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))
instance Property "Path" EksHostPathProperty where
  type PropertyType "Path" EksHostPathProperty = Value Prelude.Text
  set newValue EksHostPathProperty {}
    = EksHostPathProperty {path = Prelude.pure newValue, ..}