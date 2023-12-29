module Stratosphere.EMR.Cluster.ConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigurationProperty :: Prelude.Type
instance ToResourceProperties ConfigurationProperty
instance Prelude.Eq ConfigurationProperty
instance Prelude.Show ConfigurationProperty
instance JSON.ToJSON ConfigurationProperty