module Stratosphere.DynamoDB.Table.StreamSpecificationProperty (
        StreamSpecificationProperty(..), mkStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamSpecificationProperty
  = StreamSpecificationProperty {streamViewType :: (Value Prelude.Text)}
mkStreamSpecificationProperty ::
  Value Prelude.Text -> StreamSpecificationProperty
mkStreamSpecificationProperty streamViewType
  = StreamSpecificationProperty {streamViewType = streamViewType}
instance ToResourceProperties StreamSpecificationProperty where
  toResourceProperties StreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.StreamSpecification",
         properties = ["StreamViewType" JSON..= streamViewType]}
instance JSON.ToJSON StreamSpecificationProperty where
  toJSON StreamSpecificationProperty {..}
    = JSON.object ["StreamViewType" JSON..= streamViewType]
instance Property "StreamViewType" StreamSpecificationProperty where
  type PropertyType "StreamViewType" StreamSpecificationProperty = Value Prelude.Text
  set newValue StreamSpecificationProperty {}
    = StreamSpecificationProperty {streamViewType = newValue, ..}