module Stratosphere.EMR.Cluster.StepConfigProperty (
        module Exports, StepConfigProperty(..), mkStepConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.HadoopJarStepConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepConfigProperty
  = StepConfigProperty {actionOnFailure :: (Prelude.Maybe (Value Prelude.Text)),
                        hadoopJarStep :: HadoopJarStepConfigProperty,
                        name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepConfigProperty ::
  HadoopJarStepConfigProperty
  -> Value Prelude.Text -> StepConfigProperty
mkStepConfigProperty hadoopJarStep name
  = StepConfigProperty
      {hadoopJarStep = hadoopJarStep, name = name,
       actionOnFailure = Prelude.Nothing}
instance ToResourceProperties StepConfigProperty where
  toResourceProperties StepConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.StepConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HadoopJarStep" JSON..= hadoopJarStep, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionOnFailure" Prelude.<$> actionOnFailure]))}
instance JSON.ToJSON StepConfigProperty where
  toJSON StepConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HadoopJarStep" JSON..= hadoopJarStep, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ActionOnFailure" Prelude.<$> actionOnFailure])))
instance Property "ActionOnFailure" StepConfigProperty where
  type PropertyType "ActionOnFailure" StepConfigProperty = Value Prelude.Text
  set newValue StepConfigProperty {..}
    = StepConfigProperty {actionOnFailure = Prelude.pure newValue, ..}
instance Property "HadoopJarStep" StepConfigProperty where
  type PropertyType "HadoopJarStep" StepConfigProperty = HadoopJarStepConfigProperty
  set newValue StepConfigProperty {..}
    = StepConfigProperty {hadoopJarStep = newValue, ..}
instance Property "Name" StepConfigProperty where
  type PropertyType "Name" StepConfigProperty = Value Prelude.Text
  set newValue StepConfigProperty {..}
    = StepConfigProperty {name = newValue, ..}