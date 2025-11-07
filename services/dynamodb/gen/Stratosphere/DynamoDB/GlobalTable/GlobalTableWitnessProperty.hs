module Stratosphere.DynamoDB.GlobalTable.GlobalTableWitnessProperty (
        GlobalTableWitnessProperty(..), mkGlobalTableWitnessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalTableWitnessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globaltablewitness.html>
    GlobalTableWitnessProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globaltablewitness.html#cfn-dynamodb-globaltable-globaltablewitness-region>
                                region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalTableWitnessProperty :: GlobalTableWitnessProperty
mkGlobalTableWitnessProperty
  = GlobalTableWitnessProperty
      {haddock_workaround_ = (), region = Prelude.Nothing}
instance ToResourceProperties GlobalTableWitnessProperty where
  toResourceProperties GlobalTableWitnessProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.GlobalTableWitness",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON GlobalTableWitnessProperty where
  toJSON GlobalTableWitnessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Region" Prelude.<$> region]))
instance Property "Region" GlobalTableWitnessProperty where
  type PropertyType "Region" GlobalTableWitnessProperty = Value Prelude.Text
  set newValue GlobalTableWitnessProperty {..}
    = GlobalTableWitnessProperty {region = Prelude.pure newValue, ..}