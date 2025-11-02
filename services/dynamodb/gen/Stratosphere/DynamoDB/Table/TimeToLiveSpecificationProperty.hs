module Stratosphere.DynamoDB.Table.TimeToLiveSpecificationProperty (
        TimeToLiveSpecificationProperty(..),
        mkTimeToLiveSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeToLiveSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-timetolivespecification.html>
    TimeToLiveSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-timetolivespecification.html#cfn-dynamodb-table-timetolivespecification-attributename>
                                     attributeName :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-timetolivespecification.html#cfn-dynamodb-table-timetolivespecification-enabled>
                                     enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeToLiveSpecificationProperty ::
  Value Prelude.Bool -> TimeToLiveSpecificationProperty
mkTimeToLiveSpecificationProperty enabled
  = TimeToLiveSpecificationProperty
      {haddock_workaround_ = (), enabled = enabled,
       attributeName = Prelude.Nothing}
instance ToResourceProperties TimeToLiveSpecificationProperty where
  toResourceProperties TimeToLiveSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.TimeToLiveSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeName" Prelude.<$> attributeName]))}
instance JSON.ToJSON TimeToLiveSpecificationProperty where
  toJSON TimeToLiveSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeName" Prelude.<$> attributeName])))
instance Property "AttributeName" TimeToLiveSpecificationProperty where
  type PropertyType "AttributeName" TimeToLiveSpecificationProperty = Value Prelude.Text
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty
        {attributeName = Prelude.pure newValue, ..}
instance Property "Enabled" TimeToLiveSpecificationProperty where
  type PropertyType "Enabled" TimeToLiveSpecificationProperty = Value Prelude.Bool
  set newValue TimeToLiveSpecificationProperty {..}
    = TimeToLiveSpecificationProperty {enabled = newValue, ..}