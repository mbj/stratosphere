module Stratosphere.DynamoDB.Table.ProjectionProperty (
        ProjectionProperty(..), mkProjectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-projection.html>
    ProjectionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-projection.html#cfn-dynamodb-table-projection-nonkeyattributes>
                        nonKeyAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-projection.html#cfn-dynamodb-table-projection-projectiontype>
                        projectionType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectionProperty :: ProjectionProperty
mkProjectionProperty
  = ProjectionProperty
      {nonKeyAttributes = Prelude.Nothing,
       projectionType = Prelude.Nothing}
instance ToResourceProperties ProjectionProperty where
  toResourceProperties ProjectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.Projection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NonKeyAttributes" Prelude.<$> nonKeyAttributes,
                            (JSON..=) "ProjectionType" Prelude.<$> projectionType])}
instance JSON.ToJSON ProjectionProperty where
  toJSON ProjectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NonKeyAttributes" Prelude.<$> nonKeyAttributes,
               (JSON..=) "ProjectionType" Prelude.<$> projectionType]))
instance Property "NonKeyAttributes" ProjectionProperty where
  type PropertyType "NonKeyAttributes" ProjectionProperty = ValueList Prelude.Text
  set newValue ProjectionProperty {..}
    = ProjectionProperty {nonKeyAttributes = Prelude.pure newValue, ..}
instance Property "ProjectionType" ProjectionProperty where
  type PropertyType "ProjectionType" ProjectionProperty = Value Prelude.Text
  set newValue ProjectionProperty {..}
    = ProjectionProperty {projectionType = Prelude.pure newValue, ..}