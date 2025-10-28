module Stratosphere.DynamoDB.Table.StreamSpecificationProperty (
        module Exports, StreamSpecificationProperty(..),
        mkStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ResourcePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-streamspecification.html>
    StreamSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-streamspecification.html#cfn-dynamodb-table-streamspecification-resourcepolicy>
                                 resourcePolicy :: (Prelude.Maybe ResourcePolicyProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-streamspecification.html#cfn-dynamodb-table-streamspecification-streamviewtype>
                                 streamViewType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamSpecificationProperty ::
  Value Prelude.Text -> StreamSpecificationProperty
mkStreamSpecificationProperty streamViewType
  = StreamSpecificationProperty
      {haddock_workaround_ = (), streamViewType = streamViewType,
       resourcePolicy = Prelude.Nothing}
instance ToResourceProperties StreamSpecificationProperty where
  toResourceProperties StreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.StreamSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StreamViewType" JSON..= streamViewType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy]))}
instance JSON.ToJSON StreamSpecificationProperty where
  toJSON StreamSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StreamViewType" JSON..= streamViewType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy])))
instance Property "ResourcePolicy" StreamSpecificationProperty where
  type PropertyType "ResourcePolicy" StreamSpecificationProperty = ResourcePolicyProperty
  set newValue StreamSpecificationProperty {..}
    = StreamSpecificationProperty
        {resourcePolicy = Prelude.pure newValue, ..}
instance Property "StreamViewType" StreamSpecificationProperty where
  type PropertyType "StreamViewType" StreamSpecificationProperty = Value Prelude.Text
  set newValue StreamSpecificationProperty {..}
    = StreamSpecificationProperty {streamViewType = newValue, ..}