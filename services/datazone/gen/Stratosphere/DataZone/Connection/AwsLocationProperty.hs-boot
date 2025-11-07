module Stratosphere.DataZone.Connection.AwsLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsLocationProperty :: Prelude.Type
instance ToResourceProperties AwsLocationProperty
instance Prelude.Eq AwsLocationProperty
instance Prelude.Show AwsLocationProperty
instance JSON.ToJSON AwsLocationProperty