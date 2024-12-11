module Stratosphere.LaunchWizard.Deployment (
        module Exports, Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LaunchWizard.Deployment.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = Deployment {deploymentPatternName :: (Value Prelude.Text),
                name :: (Value Prelude.Text),
                specifications :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                tags :: (Prelude.Maybe [TagsProperty]),
                workloadName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Prelude.Map Prelude.Text (Value Prelude.Text)
        -> Value Prelude.Text -> Deployment
mkDeployment deploymentPatternName name specifications workloadName
  = Deployment
      {deploymentPatternName = deploymentPatternName, name = name,
       specifications = specifications, workloadName = workloadName,
       tags = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::LaunchWizard::Deployment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeploymentPatternName" JSON..= deploymentPatternName,
                            "Name" JSON..= name, "Specifications" JSON..= specifications,
                            "WorkloadName" JSON..= workloadName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeploymentPatternName" JSON..= deploymentPatternName,
               "Name" JSON..= name, "Specifications" JSON..= specifications,
               "WorkloadName" JSON..= workloadName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeploymentPatternName" Deployment where
  type PropertyType "DeploymentPatternName" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {deploymentPatternName = newValue, ..}
instance Property "Name" Deployment where
  type PropertyType "Name" Deployment = Value Prelude.Text
  set newValue Deployment {..} = Deployment {name = newValue, ..}
instance Property "Specifications" Deployment where
  type PropertyType "Specifications" Deployment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Deployment {..}
    = Deployment {specifications = newValue, ..}
instance Property "Tags" Deployment where
  type PropertyType "Tags" Deployment = [TagsProperty]
  set newValue Deployment {..}
    = Deployment {tags = Prelude.pure newValue, ..}
instance Property "WorkloadName" Deployment where
  type PropertyType "WorkloadName" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {workloadName = newValue, ..}