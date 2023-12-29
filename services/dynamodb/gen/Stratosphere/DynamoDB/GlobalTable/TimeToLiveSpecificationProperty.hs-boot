module Stratosphere.DynamoDB.GlobalTable.TimeToLiveSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimeToLiveSpecificationProperty :: Prelude.Type
instance ToResourceProperties TimeToLiveSpecificationProperty
instance Prelude.Eq TimeToLiveSpecificationProperty
instance Prelude.Show TimeToLiveSpecificationProperty
instance JSON.ToJSON TimeToLiveSpecificationProperty