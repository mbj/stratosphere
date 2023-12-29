module Stratosphere.Batch.JobDefinition.EksHostPathProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EksHostPathProperty :: Prelude.Type
instance ToResourceProperties EksHostPathProperty
instance Prelude.Eq EksHostPathProperty
instance Prelude.Show EksHostPathProperty
instance JSON.ToJSON EksHostPathProperty