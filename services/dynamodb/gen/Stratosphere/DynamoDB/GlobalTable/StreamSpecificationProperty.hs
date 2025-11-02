module Stratosphere.DynamoDB.GlobalTable.StreamSpecificationProperty (
        StreamSpecificationProperty(..), mkStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-streamspecification.html>
    StreamSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-streamspecification.html#cfn-dynamodb-globaltable-streamspecification-streamviewtype>
                                 streamViewType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamSpecificationProperty ::
  Value Prelude.Text -> StreamSpecificationProperty
mkStreamSpecificationProperty streamViewType
  = StreamSpecificationProperty
      {haddock_workaround_ = (), streamViewType = streamViewType}
instance ToResourceProperties StreamSpecificationProperty where
  toResourceProperties StreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.StreamSpecification",
         supportsTags = Prelude.False,
         properties = ["StreamViewType" JSON..= streamViewType]}
instance JSON.ToJSON StreamSpecificationProperty where
  toJSON StreamSpecificationProperty {..}
    = JSON.object ["StreamViewType" JSON..= streamViewType]
instance Property "StreamViewType" StreamSpecificationProperty where
  type PropertyType "StreamViewType" StreamSpecificationProperty = Value Prelude.Text
  set newValue StreamSpecificationProperty {..}
    = StreamSpecificationProperty {streamViewType = newValue, ..}