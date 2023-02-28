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
  = Step {actionOnFailure :: (Value Prelude.Text),
          hadoopJarStep :: HadoopJarStepConfigProperty,
          jobFlowId :: (Value Prelude.Text),
          name :: (Value Prelude.Text)}
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