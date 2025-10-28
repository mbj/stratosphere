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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-assessmentreportsdestination.html>
    AssessmentReportsDestinationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-assessmentreportsdestination.html#cfn-auditmanager-assessment-assessmentreportsdestination-destination>
                                          destination :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-auditmanager-assessment-assessmentreportsdestination.html#cfn-auditmanager-assessment-assessmentreportsdestination-destinationtype>
                                          destinationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssessmentReportsDestinationProperty ::
  AssessmentReportsDestinationProperty
mkAssessmentReportsDestinationProperty
  = AssessmentReportsDestinationProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       destinationType = Prelude.Nothing}
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