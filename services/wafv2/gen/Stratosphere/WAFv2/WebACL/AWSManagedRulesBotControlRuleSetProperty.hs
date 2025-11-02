module Stratosphere.WAFv2.WebACL.AWSManagedRulesBotControlRuleSetProperty (
        AWSManagedRulesBotControlRuleSetProperty(..),
        mkAWSManagedRulesBotControlRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSManagedRulesBotControlRuleSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesbotcontrolruleset.html>
    AWSManagedRulesBotControlRuleSetProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesbotcontrolruleset.html#cfn-wafv2-webacl-awsmanagedrulesbotcontrolruleset-enablemachinelearning>
                                              enableMachineLearning :: (Prelude.Maybe (Value Prelude.Bool)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesbotcontrolruleset.html#cfn-wafv2-webacl-awsmanagedrulesbotcontrolruleset-inspectionlevel>
                                              inspectionLevel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSManagedRulesBotControlRuleSetProperty ::
  Value Prelude.Text -> AWSManagedRulesBotControlRuleSetProperty
mkAWSManagedRulesBotControlRuleSetProperty inspectionLevel
  = AWSManagedRulesBotControlRuleSetProperty
      {haddock_workaround_ = (), inspectionLevel = inspectionLevel,
       enableMachineLearning = Prelude.Nothing}
instance ToResourceProperties AWSManagedRulesBotControlRuleSetProperty where
  toResourceProperties AWSManagedRulesBotControlRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AWSManagedRulesBotControlRuleSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InspectionLevel" JSON..= inspectionLevel]
                           (Prelude.catMaybes
                              [(JSON..=) "EnableMachineLearning"
                                 Prelude.<$> enableMachineLearning]))}
instance JSON.ToJSON AWSManagedRulesBotControlRuleSetProperty where
  toJSON AWSManagedRulesBotControlRuleSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InspectionLevel" JSON..= inspectionLevel]
              (Prelude.catMaybes
                 [(JSON..=) "EnableMachineLearning"
                    Prelude.<$> enableMachineLearning])))
instance Property "EnableMachineLearning" AWSManagedRulesBotControlRuleSetProperty where
  type PropertyType "EnableMachineLearning" AWSManagedRulesBotControlRuleSetProperty = Value Prelude.Bool
  set newValue AWSManagedRulesBotControlRuleSetProperty {..}
    = AWSManagedRulesBotControlRuleSetProperty
        {enableMachineLearning = Prelude.pure newValue, ..}
instance Property "InspectionLevel" AWSManagedRulesBotControlRuleSetProperty where
  type PropertyType "InspectionLevel" AWSManagedRulesBotControlRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesBotControlRuleSetProperty {..}
    = AWSManagedRulesBotControlRuleSetProperty
        {inspectionLevel = newValue, ..}