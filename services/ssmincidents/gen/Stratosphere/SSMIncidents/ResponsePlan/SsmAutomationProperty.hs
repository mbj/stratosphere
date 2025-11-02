module Stratosphere.SSMIncidents.ResponsePlan.SsmAutomationProperty (
        module Exports, SsmAutomationProperty(..), mkSsmAutomationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.DynamicSsmParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.SsmParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmAutomationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html>
    SsmAutomationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-documentname>
                           documentName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-documentversion>
                           documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-dynamicparameters>
                           dynamicParameters :: (Prelude.Maybe [DynamicSsmParameterProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-parameters>
                           parameters :: (Prelude.Maybe [SsmParameterProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-rolearn>
                           roleArn :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-ssmautomation.html#cfn-ssmincidents-responseplan-ssmautomation-targetaccount>
                           targetAccount :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsmAutomationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SsmAutomationProperty
mkSsmAutomationProperty documentName roleArn
  = SsmAutomationProperty
      {haddock_workaround_ = (), documentName = documentName,
       roleArn = roleArn, documentVersion = Prelude.Nothing,
       dynamicParameters = Prelude.Nothing, parameters = Prelude.Nothing,
       targetAccount = Prelude.Nothing}
instance ToResourceProperties SsmAutomationProperty where
  toResourceProperties SsmAutomationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.SsmAutomation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DocumentName" JSON..= documentName, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                               (JSON..=) "DynamicParameters" Prelude.<$> dynamicParameters,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "TargetAccount" Prelude.<$> targetAccount]))}
instance JSON.ToJSON SsmAutomationProperty where
  toJSON SsmAutomationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DocumentName" JSON..= documentName, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                  (JSON..=) "DynamicParameters" Prelude.<$> dynamicParameters,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "TargetAccount" Prelude.<$> targetAccount])))
instance Property "DocumentName" SsmAutomationProperty where
  type PropertyType "DocumentName" SsmAutomationProperty = Value Prelude.Text
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty {documentName = newValue, ..}
instance Property "DocumentVersion" SsmAutomationProperty where
  type PropertyType "DocumentVersion" SsmAutomationProperty = Value Prelude.Text
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty
        {documentVersion = Prelude.pure newValue, ..}
instance Property "DynamicParameters" SsmAutomationProperty where
  type PropertyType "DynamicParameters" SsmAutomationProperty = [DynamicSsmParameterProperty]
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty
        {dynamicParameters = Prelude.pure newValue, ..}
instance Property "Parameters" SsmAutomationProperty where
  type PropertyType "Parameters" SsmAutomationProperty = [SsmParameterProperty]
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty {parameters = Prelude.pure newValue, ..}
instance Property "RoleArn" SsmAutomationProperty where
  type PropertyType "RoleArn" SsmAutomationProperty = Value Prelude.Text
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty {roleArn = newValue, ..}
instance Property "TargetAccount" SsmAutomationProperty where
  type PropertyType "TargetAccount" SsmAutomationProperty = Value Prelude.Text
  set newValue SsmAutomationProperty {..}
    = SsmAutomationProperty {targetAccount = Prelude.pure newValue, ..}