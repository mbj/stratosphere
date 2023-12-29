module Stratosphere.IoT.JobTemplate.RetryCriteriaProperty (
        RetryCriteriaProperty(..), mkRetryCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetryCriteriaProperty
  = RetryCriteriaProperty {failureType :: (Prelude.Maybe (Value Prelude.Text)),
                           numberOfRetries :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetryCriteriaProperty :: RetryCriteriaProperty
mkRetryCriteriaProperty
  = RetryCriteriaProperty
      {failureType = Prelude.Nothing, numberOfRetries = Prelude.Nothing}
instance ToResourceProperties RetryCriteriaProperty where
  toResourceProperties RetryCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.RetryCriteria",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailureType" Prelude.<$> failureType,
                            (JSON..=) "NumberOfRetries" Prelude.<$> numberOfRetries])}
instance JSON.ToJSON RetryCriteriaProperty where
  toJSON RetryCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailureType" Prelude.<$> failureType,
               (JSON..=) "NumberOfRetries" Prelude.<$> numberOfRetries]))
instance Property "FailureType" RetryCriteriaProperty where
  type PropertyType "FailureType" RetryCriteriaProperty = Value Prelude.Text
  set newValue RetryCriteriaProperty {..}
    = RetryCriteriaProperty {failureType = Prelude.pure newValue, ..}
instance Property "NumberOfRetries" RetryCriteriaProperty where
  type PropertyType "NumberOfRetries" RetryCriteriaProperty = Value Prelude.Integer
  set newValue RetryCriteriaProperty {..}
    = RetryCriteriaProperty
        {numberOfRetries = Prelude.pure newValue, ..}