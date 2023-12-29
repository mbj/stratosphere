module Stratosphere.S3.StorageLens.AwsOrgProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsOrgProperty :: Prelude.Type
instance ToResourceProperties AwsOrgProperty
instance Prelude.Eq AwsOrgProperty
instance Prelude.Show AwsOrgProperty
instance JSON.ToJSON AwsOrgProperty