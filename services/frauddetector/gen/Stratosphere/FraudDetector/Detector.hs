module Stratosphere.FraudDetector.Detector (
        module Exports, Detector(..), mkDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.EventTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.ModelProperty as Exports
import {-# SOURCE #-} Stratosphere.FraudDetector.Detector.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Detector
  = Detector {associatedModels :: (Prelude.Maybe [ModelProperty]),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              detectorId :: (Value Prelude.Text),
              detectorVersionStatus :: (Prelude.Maybe (Value Prelude.Text)),
              eventType :: EventTypeProperty,
              ruleExecutionMode :: (Prelude.Maybe (Value Prelude.Text)),
              rules :: [RuleProperty],
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDetector ::
  Value Prelude.Text
  -> EventTypeProperty -> [RuleProperty] -> Detector
mkDetector detectorId eventType rules
  = Detector
      {detectorId = detectorId, eventType = eventType, rules = rules,
       associatedModels = Prelude.Nothing, description = Prelude.Nothing,
       detectorVersionStatus = Prelude.Nothing,
       ruleExecutionMode = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Detector where
  toResourceProperties Detector {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Detector",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetectorId" JSON..= detectorId, "EventType" JSON..= eventType,
                            "Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociatedModels" Prelude.<$> associatedModels,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DetectorVersionStatus"
                                 Prelude.<$> detectorVersionStatus,
                               (JSON..=) "RuleExecutionMode" Prelude.<$> ruleExecutionMode,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Detector where
  toJSON Detector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetectorId" JSON..= detectorId, "EventType" JSON..= eventType,
               "Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "AssociatedModels" Prelude.<$> associatedModels,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DetectorVersionStatus"
                    Prelude.<$> detectorVersionStatus,
                  (JSON..=) "RuleExecutionMode" Prelude.<$> ruleExecutionMode,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssociatedModels" Detector where
  type PropertyType "AssociatedModels" Detector = [ModelProperty]
  set newValue Detector {..}
    = Detector {associatedModels = Prelude.pure newValue, ..}
instance Property "Description" Detector where
  type PropertyType "Description" Detector = Value Prelude.Text
  set newValue Detector {..}
    = Detector {description = Prelude.pure newValue, ..}
instance Property "DetectorId" Detector where
  type PropertyType "DetectorId" Detector = Value Prelude.Text
  set newValue Detector {..} = Detector {detectorId = newValue, ..}
instance Property "DetectorVersionStatus" Detector where
  type PropertyType "DetectorVersionStatus" Detector = Value Prelude.Text
  set newValue Detector {..}
    = Detector {detectorVersionStatus = Prelude.pure newValue, ..}
instance Property "EventType" Detector where
  type PropertyType "EventType" Detector = EventTypeProperty
  set newValue Detector {..} = Detector {eventType = newValue, ..}
instance Property "RuleExecutionMode" Detector where
  type PropertyType "RuleExecutionMode" Detector = Value Prelude.Text
  set newValue Detector {..}
    = Detector {ruleExecutionMode = Prelude.pure newValue, ..}
instance Property "Rules" Detector where
  type PropertyType "Rules" Detector = [RuleProperty]
  set newValue Detector {..} = Detector {rules = newValue, ..}
instance Property "Tags" Detector where
  type PropertyType "Tags" Detector = [Tag]
  set newValue Detector {..}
    = Detector {tags = Prelude.pure newValue, ..}