module Stratosphere.AppConfig.DeploymentStrategy (
        module Exports, DeploymentStrategy(..), mkDeploymentStrategy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.DeploymentStrategy.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentStrategy
  = DeploymentStrategy {deploymentDurationInMinutes :: (Value Prelude.Double),
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        finalBakeTimeInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                        growthFactor :: (Value Prelude.Double),
                        growthType :: (Prelude.Maybe (Value Prelude.Text)),
                        name :: (Value Prelude.Text),
                        replicateTo :: (Value Prelude.Text),
                        tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentStrategy ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Text -> Value Prelude.Text -> DeploymentStrategy
mkDeploymentStrategy
  deploymentDurationInMinutes
  growthFactor
  name
  replicateTo
  = DeploymentStrategy
      {deploymentDurationInMinutes = deploymentDurationInMinutes,
       growthFactor = growthFactor, name = name,
       replicateTo = replicateTo, description = Prelude.Nothing,
       finalBakeTimeInMinutes = Prelude.Nothing,
       growthType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DeploymentStrategy where
  toResourceProperties DeploymentStrategy {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::DeploymentStrategy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeploymentDurationInMinutes" JSON..= deploymentDurationInMinutes,
                            "GrowthFactor" JSON..= growthFactor, "Name" JSON..= name,
                            "ReplicateTo" JSON..= replicateTo]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FinalBakeTimeInMinutes"
                                 Prelude.<$> finalBakeTimeInMinutes,
                               (JSON..=) "GrowthType" Prelude.<$> growthType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DeploymentStrategy where
  toJSON DeploymentStrategy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeploymentDurationInMinutes" JSON..= deploymentDurationInMinutes,
               "GrowthFactor" JSON..= growthFactor, "Name" JSON..= name,
               "ReplicateTo" JSON..= replicateTo]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FinalBakeTimeInMinutes"
                    Prelude.<$> finalBakeTimeInMinutes,
                  (JSON..=) "GrowthType" Prelude.<$> growthType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeploymentDurationInMinutes" DeploymentStrategy where
  type PropertyType "DeploymentDurationInMinutes" DeploymentStrategy = Value Prelude.Double
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {deploymentDurationInMinutes = newValue, ..}
instance Property "Description" DeploymentStrategy where
  type PropertyType "Description" DeploymentStrategy = Value Prelude.Text
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {description = Prelude.pure newValue, ..}
instance Property "FinalBakeTimeInMinutes" DeploymentStrategy where
  type PropertyType "FinalBakeTimeInMinutes" DeploymentStrategy = Value Prelude.Double
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy
        {finalBakeTimeInMinutes = Prelude.pure newValue, ..}
instance Property "GrowthFactor" DeploymentStrategy where
  type PropertyType "GrowthFactor" DeploymentStrategy = Value Prelude.Double
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {growthFactor = newValue, ..}
instance Property "GrowthType" DeploymentStrategy where
  type PropertyType "GrowthType" DeploymentStrategy = Value Prelude.Text
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {growthType = Prelude.pure newValue, ..}
instance Property "Name" DeploymentStrategy where
  type PropertyType "Name" DeploymentStrategy = Value Prelude.Text
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {name = newValue, ..}
instance Property "ReplicateTo" DeploymentStrategy where
  type PropertyType "ReplicateTo" DeploymentStrategy = Value Prelude.Text
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {replicateTo = newValue, ..}
instance Property "Tags" DeploymentStrategy where
  type PropertyType "Tags" DeploymentStrategy = [TagsProperty]
  set newValue DeploymentStrategy {..}
    = DeploymentStrategy {tags = Prelude.pure newValue, ..}