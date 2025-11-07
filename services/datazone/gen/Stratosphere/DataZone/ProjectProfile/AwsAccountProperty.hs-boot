module Stratosphere.DataZone.ProjectProfile.AwsAccountProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsAccountProperty :: Prelude.Type
instance ToResourceProperties AwsAccountProperty
instance Prelude.Eq AwsAccountProperty
instance Prelude.Show AwsAccountProperty
instance JSON.ToJSON AwsAccountProperty