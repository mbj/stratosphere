module Stratosphere.SecurityLake.Subscriber.AwsLogSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsLogSourceProperty :: Prelude.Type
instance ToResourceProperties AwsLogSourceProperty
instance Prelude.Eq AwsLogSourceProperty
instance Prelude.Show AwsLogSourceProperty
instance JSON.ToJSON AwsLogSourceProperty