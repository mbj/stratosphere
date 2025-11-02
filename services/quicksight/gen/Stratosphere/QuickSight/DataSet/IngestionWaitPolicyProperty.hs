module Stratosphere.QuickSight.DataSet.IngestionWaitPolicyProperty (
        IngestionWaitPolicyProperty(..), mkIngestionWaitPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngestionWaitPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-ingestionwaitpolicy.html>
    IngestionWaitPolicyProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-ingestionwaitpolicy.html#cfn-quicksight-dataset-ingestionwaitpolicy-ingestionwaittimeinhours>
                                 ingestionWaitTimeInHours :: (Prelude.Maybe (Value Prelude.Double)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-ingestionwaitpolicy.html#cfn-quicksight-dataset-ingestionwaitpolicy-waitforspiceingestion>
                                 waitForSpiceIngestion :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngestionWaitPolicyProperty :: IngestionWaitPolicyProperty
mkIngestionWaitPolicyProperty
  = IngestionWaitPolicyProperty
      {haddock_workaround_ = (),
       ingestionWaitTimeInHours = Prelude.Nothing,
       waitForSpiceIngestion = Prelude.Nothing}
instance ToResourceProperties IngestionWaitPolicyProperty where
  toResourceProperties IngestionWaitPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.IngestionWaitPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IngestionWaitTimeInHours"
                              Prelude.<$> ingestionWaitTimeInHours,
                            (JSON..=) "WaitForSpiceIngestion"
                              Prelude.<$> waitForSpiceIngestion])}
instance JSON.ToJSON IngestionWaitPolicyProperty where
  toJSON IngestionWaitPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IngestionWaitTimeInHours"
                 Prelude.<$> ingestionWaitTimeInHours,
               (JSON..=) "WaitForSpiceIngestion"
                 Prelude.<$> waitForSpiceIngestion]))
instance Property "IngestionWaitTimeInHours" IngestionWaitPolicyProperty where
  type PropertyType "IngestionWaitTimeInHours" IngestionWaitPolicyProperty = Value Prelude.Double
  set newValue IngestionWaitPolicyProperty {..}
    = IngestionWaitPolicyProperty
        {ingestionWaitTimeInHours = Prelude.pure newValue, ..}
instance Property "WaitForSpiceIngestion" IngestionWaitPolicyProperty where
  type PropertyType "WaitForSpiceIngestion" IngestionWaitPolicyProperty = Value Prelude.Bool
  set newValue IngestionWaitPolicyProperty {..}
    = IngestionWaitPolicyProperty
        {waitForSpiceIngestion = Prelude.pure newValue, ..}