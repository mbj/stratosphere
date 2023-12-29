module Stratosphere.Personalize.Solution.HpoResourceConfigProperty (
        HpoResourceConfigProperty(..), mkHpoResourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HpoResourceConfigProperty
  = HpoResourceConfigProperty {maxNumberOfTrainingJobs :: (Prelude.Maybe (Value Prelude.Text)),
                               maxParallelTrainingJobs :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHpoResourceConfigProperty :: HpoResourceConfigProperty
mkHpoResourceConfigProperty
  = HpoResourceConfigProperty
      {maxNumberOfTrainingJobs = Prelude.Nothing,
       maxParallelTrainingJobs = Prelude.Nothing}
instance ToResourceProperties HpoResourceConfigProperty where
  toResourceProperties HpoResourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Solution.HpoResourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxNumberOfTrainingJobs"
                              Prelude.<$> maxNumberOfTrainingJobs,
                            (JSON..=) "MaxParallelTrainingJobs"
                              Prelude.<$> maxParallelTrainingJobs])}
instance JSON.ToJSON HpoResourceConfigProperty where
  toJSON HpoResourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxNumberOfTrainingJobs"
                 Prelude.<$> maxNumberOfTrainingJobs,
               (JSON..=) "MaxParallelTrainingJobs"
                 Prelude.<$> maxParallelTrainingJobs]))
instance Property "MaxNumberOfTrainingJobs" HpoResourceConfigProperty where
  type PropertyType "MaxNumberOfTrainingJobs" HpoResourceConfigProperty = Value Prelude.Text
  set newValue HpoResourceConfigProperty {..}
    = HpoResourceConfigProperty
        {maxNumberOfTrainingJobs = Prelude.pure newValue, ..}
instance Property "MaxParallelTrainingJobs" HpoResourceConfigProperty where
  type PropertyType "MaxParallelTrainingJobs" HpoResourceConfigProperty = Value Prelude.Text
  set newValue HpoResourceConfigProperty {..}
    = HpoResourceConfigProperty
        {maxParallelTrainingJobs = Prelude.pure newValue, ..}