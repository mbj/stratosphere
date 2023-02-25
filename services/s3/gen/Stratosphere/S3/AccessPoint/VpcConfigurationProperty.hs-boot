module Stratosphere.S3.AccessPoint.VpcConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VpcConfigurationProperty :: Prelude.Type
instance ToResourceProperties VpcConfigurationProperty
instance JSON.ToJSON VpcConfigurationProperty