module Stratosphere.APS.AnomalyDetector (
        module Exports, AnomalyDetector(..), mkAnomalyDetector
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.AnomalyDetector.AnomalyDetectorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.AnomalyDetector.LabelProperty as Exports
import {-# SOURCE #-} Stratosphere.APS.AnomalyDetector.MissingDataActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AnomalyDetector
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html>
    AnomalyDetector {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-alias>
                     alias :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-configuration>
                     configuration :: AnomalyDetectorConfigurationProperty,
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-evaluationintervalinseconds>
                     evaluationIntervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-labels>
                     labels :: (Prelude.Maybe [LabelProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-missingdataaction>
                     missingDataAction :: (Prelude.Maybe MissingDataActionProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-aps-anomalydetector.html#cfn-aps-anomalydetector-workspace>
                     workspace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnomalyDetector ::
  Value Prelude.Text
  -> AnomalyDetectorConfigurationProperty
     -> Value Prelude.Text -> AnomalyDetector
mkAnomalyDetector alias configuration workspace
  = AnomalyDetector
      {haddock_workaround_ = (), alias = alias,
       configuration = configuration, workspace = workspace,
       evaluationIntervalInSeconds = Prelude.Nothing,
       labels = Prelude.Nothing, missingDataAction = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties AnomalyDetector where
  toResourceProperties AnomalyDetector {..}
    = ResourceProperties
        {awsType = "AWS::APS::AnomalyDetector",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias, "Configuration" JSON..= configuration,
                            "Workspace" JSON..= workspace]
                           (Prelude.catMaybes
                              [(JSON..=) "EvaluationIntervalInSeconds"
                                 Prelude.<$> evaluationIntervalInSeconds,
                               (JSON..=) "Labels" Prelude.<$> labels,
                               (JSON..=) "MissingDataAction" Prelude.<$> missingDataAction,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AnomalyDetector where
  toJSON AnomalyDetector {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias, "Configuration" JSON..= configuration,
               "Workspace" JSON..= workspace]
              (Prelude.catMaybes
                 [(JSON..=) "EvaluationIntervalInSeconds"
                    Prelude.<$> evaluationIntervalInSeconds,
                  (JSON..=) "Labels" Prelude.<$> labels,
                  (JSON..=) "MissingDataAction" Prelude.<$> missingDataAction,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Alias" AnomalyDetector where
  type PropertyType "Alias" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {alias = newValue, ..}
instance Property "Configuration" AnomalyDetector where
  type PropertyType "Configuration" AnomalyDetector = AnomalyDetectorConfigurationProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector {configuration = newValue, ..}
instance Property "EvaluationIntervalInSeconds" AnomalyDetector where
  type PropertyType "EvaluationIntervalInSeconds" AnomalyDetector = Value Prelude.Integer
  set newValue AnomalyDetector {..}
    = AnomalyDetector
        {evaluationIntervalInSeconds = Prelude.pure newValue, ..}
instance Property "Labels" AnomalyDetector where
  type PropertyType "Labels" AnomalyDetector = [LabelProperty]
  set newValue AnomalyDetector {..}
    = AnomalyDetector {labels = Prelude.pure newValue, ..}
instance Property "MissingDataAction" AnomalyDetector where
  type PropertyType "MissingDataAction" AnomalyDetector = MissingDataActionProperty
  set newValue AnomalyDetector {..}
    = AnomalyDetector {missingDataAction = Prelude.pure newValue, ..}
instance Property "Tags" AnomalyDetector where
  type PropertyType "Tags" AnomalyDetector = [Tag]
  set newValue AnomalyDetector {..}
    = AnomalyDetector {tags = Prelude.pure newValue, ..}
instance Property "Workspace" AnomalyDetector where
  type PropertyType "Workspace" AnomalyDetector = Value Prelude.Text
  set newValue AnomalyDetector {..}
    = AnomalyDetector {workspace = newValue, ..}