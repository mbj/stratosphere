module Stratosphere.ImageBuilder.DistributionConfiguration.TargetContainerRepositoryProperty (
        TargetContainerRepositoryProperty(..),
        mkTargetContainerRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetContainerRepositoryProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-targetcontainerrepository.html>
    TargetContainerRepositoryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-targetcontainerrepository.html#cfn-imagebuilder-distributionconfiguration-targetcontainerrepository-repositoryname>
                                       repositoryName :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-targetcontainerrepository.html#cfn-imagebuilder-distributionconfiguration-targetcontainerrepository-service>
                                       service :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetContainerRepositoryProperty ::
  TargetContainerRepositoryProperty
mkTargetContainerRepositoryProperty
  = TargetContainerRepositoryProperty
      {repositoryName = Prelude.Nothing, service = Prelude.Nothing}
instance ToResourceProperties TargetContainerRepositoryProperty where
  toResourceProperties TargetContainerRepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.TargetContainerRepository",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RepositoryName" Prelude.<$> repositoryName,
                            (JSON..=) "Service" Prelude.<$> service])}
instance JSON.ToJSON TargetContainerRepositoryProperty where
  toJSON TargetContainerRepositoryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RepositoryName" Prelude.<$> repositoryName,
               (JSON..=) "Service" Prelude.<$> service]))
instance Property "RepositoryName" TargetContainerRepositoryProperty where
  type PropertyType "RepositoryName" TargetContainerRepositoryProperty = Value Prelude.Text
  set newValue TargetContainerRepositoryProperty {..}
    = TargetContainerRepositoryProperty
        {repositoryName = Prelude.pure newValue, ..}
instance Property "Service" TargetContainerRepositoryProperty where
  type PropertyType "Service" TargetContainerRepositoryProperty = Value Prelude.Text
  set newValue TargetContainerRepositoryProperty {..}
    = TargetContainerRepositoryProperty
        {service = Prelude.pure newValue, ..}