module Stratosphere.EMR.InstanceGroupConfig.ConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigurationProperty :: Prelude.Type
instance ToResourceProperties ConfigurationProperty
instance JSON.ToJSON ConfigurationProperty