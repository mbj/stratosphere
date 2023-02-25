module Stratosphere.DataSync.LocationEFS.Ec2ConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Ec2ConfigProperty :: Prelude.Type
instance ToResourceProperties Ec2ConfigProperty
instance JSON.ToJSON Ec2ConfigProperty