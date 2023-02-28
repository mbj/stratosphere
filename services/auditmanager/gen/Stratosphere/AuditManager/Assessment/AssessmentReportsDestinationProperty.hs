module Stratosphere.AuditManager.Assessment.AssessmentReportsDestinationProperty (
        AssessmentReportsDestinationProperty(..),
        mkAssessmentReportsDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssessmentReportsDestinationProperty
  = AssessmentReportsDestinationProperty {destination :: (Prelude.Maybe (Value Prelude.Text)),
                                          destinationType :: (Prelude.Maybe (Value Prelude.Text))}
mkAssessmentReportsDestinationProperty ::
  AssessmentReportsDestinationProperty
mkAssessmentReportsDestinationProperty
  = AssessmentReportsDestinationProperty
      {destination = Prelude.Nothing, destinationType = Prelude.Nothing}
instance ToResourceProperties AssessmentReportsDestinationProperty where
  toResourceProperties AssessmentReportsDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AuditManager::Assessment.AssessmentReportsDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "DestinationType" Prelude.<$> destinationType])}
instance JSON.ToJSON AssessmentReportsDestinationProperty where
  toJSON AssessmentReportsDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "DestinationType" Prelude.<$> destinationType]))
instance Property "Destination" AssessmentReportsDestinationProperty where
  type PropertyType "Destination" AssessmentReportsDestinationProperty = Value Prelude.Text
  set newValue AssessmentReportsDestinationProperty {..}
    = AssessmentReportsDestinationProperty
        {destination = Prelude.pure newValue, ..}
instance Property "DestinationType" AssessmentReportsDestinationProperty where
  type PropertyType "DestinationType" AssessmentReportsDestinationProperty = Value Prelude.Text
  set newValue AssessmentReportsDestinationProperty {..}
    = AssessmentReportsDestinationProperty
        {destinationType = Prelude.pure newValue, ..}