module Stratosphere.DynamoDB.Table.PointInTimeRecoverySpecificationProperty (
        PointInTimeRecoverySpecificationProperty(..),
        mkPointInTimeRecoverySpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PointInTimeRecoverySpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html>
    PointInTimeRecoverySpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-pointintimerecoveryspecification.html#cfn-dynamodb-table-pointintimerecoveryspecification-pointintimerecoveryenabled>
                                              pointInTimeRecoveryEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPointInTimeRecoverySpecificationProperty ::
  PointInTimeRecoverySpecificationProperty
mkPointInTimeRecoverySpecificationProperty
  = PointInTimeRecoverySpecificationProperty
      {haddock_workaround_ = (),
       pointInTimeRecoveryEnabled = Prelude.Nothing}
instance ToResourceProperties PointInTimeRecoverySpecificationProperty where
  toResourceProperties PointInTimeRecoverySpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.PointInTimeRecoverySpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PointInTimeRecoveryEnabled"
                              Prelude.<$> pointInTimeRecoveryEnabled])}
instance JSON.ToJSON PointInTimeRecoverySpecificationProperty where
  toJSON PointInTimeRecoverySpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PointInTimeRecoveryEnabled"
                 Prelude.<$> pointInTimeRecoveryEnabled]))
instance Property "PointInTimeRecoveryEnabled" PointInTimeRecoverySpecificationProperty where
  type PropertyType "PointInTimeRecoveryEnabled" PointInTimeRecoverySpecificationProperty = Value Prelude.Bool
  set newValue PointInTimeRecoverySpecificationProperty {..}
    = PointInTimeRecoverySpecificationProperty
        {pointInTimeRecoveryEnabled = Prelude.pure newValue, ..}