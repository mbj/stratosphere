module Stratosphere.EMR.Step (
        module Exports, Step(..), mkStep
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Step.HadoopJarStepConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Step
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html>
    Step {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-emr-step-actiononfailure>
          actionOnFailure :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-emr-step-hadoopjarstep>
          hadoopJarStep :: HadoopJarStepConfigProperty,
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-emr-step-jobflowid>
          jobFlowId :: (Value Prelude.Text),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-emr-step-name>
          name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStep ::
  Value Prelude.Text
  -> HadoopJarStepConfigProperty
     -> Value Prelude.Text -> Value Prelude.Text -> Step
mkStep actionOnFailure hadoopJarStep jobFlowId name
  = Step
      {actionOnFailure = actionOnFailure, hadoopJarStep = hadoopJarStep,
       jobFlowId = jobFlowId, name = name}
instance ToResourceProperties Step where
  toResourceProperties Step {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Step", supportsTags = Prelude.False,
         properties = ["ActionOnFailure" JSON..= actionOnFailure,
                       "HadoopJarStep" JSON..= hadoopJarStep,
                       "JobFlowId" JSON..= jobFlowId, "Name" JSON..= name]}
instance JSON.ToJSON Step where
  toJSON Step {..}
    = JSON.object
        ["ActionOnFailure" JSON..= actionOnFailure,
         "HadoopJarStep" JSON..= hadoopJarStep,
         "JobFlowId" JSON..= jobFlowId, "Name" JSON..= name]
instance Property "ActionOnFailure" Step where
  type PropertyType "ActionOnFailure" Step = Value Prelude.Text
  set newValue Step {..} = Step {actionOnFailure = newValue, ..}
instance Property "HadoopJarStep" Step where
  type PropertyType "HadoopJarStep" Step = HadoopJarStepConfigProperty
  set newValue Step {..} = Step {hadoopJarStep = newValue, ..}
instance Property "JobFlowId" Step where
  type PropertyType "JobFlowId" Step = Value Prelude.Text
  set newValue Step {..} = Step {jobFlowId = newValue, ..}
instance Property "Name" Step where
  type PropertyType "Name" Step = Value Prelude.Text
  set newValue Step {..} = Step {name = newValue, ..}